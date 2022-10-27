from flask import Flask, render_template, request
from mailbox import NotEmptyError
import pymysql
import pandas as pd
import json
import plotly
import numpy as np
import plotly.express as px
from sklearn.neighbors import KNeighborsClassifier
from datetime import datetime
import time

app = Flask(__name__)


class Database:  # Database è una classe DAO -> Data Access Object
    host = ""
    username = ""
    password = ""
    cursor = None
    db = None

    def __init__(self, host, username, password, db):
        """
        connection to database
        :param host:
        :param username:
        :param password:
        :param db:
        """
        try:
            self.db = pymysql.connect(host=f'{host}', user=f'{username}', password=f'{password}', db=f'{db}')
            self.cursor = self.db.cursor()

        except:
            print("errore di connessione")

    def queryRetrieveAll(self, query, like):
        """
        this function returns all data regardin an email
        :param query:
        :param like:
        :return:
        """
        try:
            self.cursor.execute(query, like)
            alldata = self.cursor.fetchall()

            return alldata
        except:
            print("errore di prelievo dati")

        return None

    def checkEmail(self, email):
        """
        this function checks if email is already in use
        :param email:
        :return:
        """
        try:
            query = f'SELECT * FROM `users` WHERE `email` LIKE %s'
            self.cursor.execute(query, email)
            alldata = self.cursor.fetchall()
            print(alldata)
            if alldata == ():
                return 'free'
            else:
                return 'match'
        except:
            self.db.rollback()
            print('nope')

    def insert(self, user):
        """
        this function registers a new user
        :param user:
        :return:
        """
        query = f'INSERT INTO `users` (`name`, `surname`, `email`, `password`) VALUES (%s,%s,%s,%s)'
        try:
            self.cursor.execute(query, (
                f'{user.nome}', f'{user.surnome}', f'{user.email}', f'{user.password}'))
            self.db.commit()
        except:
            self.db.rollback()
            print('database upload error')

    def __updatePriv(self, email, role):
        """
        Private function to update role
        :param email:
        :param role:
        :return:
        """
        query = f'    UPDATE users SET `role`= %s WHERE `email`= %s'
        try:
            self.cursor.execute(query, (role, email))
            self.db.commit()
            print(f'User: {email} role was updated to: {role}')
        except:
            self.db.rollback()
            print('database upload error')

    def insertAction(self, email, action):
        """
        This function inserts an action into the database
        :param email:
        :param action:
        :return:
        """
        query = f'INSERT INTO `actions` (`email`, `action`) VALUES (%s,%s)'
        try:
            self.cursor.execute(query, (f'{email}', f'{action}'))
            self.db.commit()
        except:
            self.db.rollback()
            print('database action upload error')

    def pieGraph(self, role, email, width=200, showlegend=True):
        """
        this function graphs pie charts for users, taking their data if they are standard users or all data if they are root
        :param role:
        :param email:
        :param width:
        :param showlegend:
        :return:
        """
        if role == 'root':
            query = f'SELECT `action` FROM iot_database.actions WHERE `email` LIKE %s '
            actions = np.array(self.queryRetrieveAll(query, '%'))
            actions, counts = np.unique(actions, return_counts=True)
            fig = px.pie(values=counts, names=actions, width=width)
            fig.update_layout(paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)', showlegend=showlegend)
            graphJSON = json.dumps(fig, cls=plotly.utils.PlotlyJSONEncoder)
            return graphJSON
        else:
            query = f'SELECT `action` FROM iot_database.actions WHERE `email` LIKE %s '
            actions = np.array(self.queryRetrieveAll(query, email))
            actions, counts = np.unique(actions, return_counts=True)
            fig = px.pie(values=counts, names=actions, width=width)
            fig.update_layout(paper_bgcolor='rgba(0,0,0,0)', plot_bgcolor='rgba(0,0,0,0)', showlegend=showlegend)
            graphJSON = json.dumps(fig, cls=plotly.utils.PlotlyJSONEncoder)
            return graphJSON

    def knn(self, actions):
        """
        this function takes all actions and timestamps of said action, and returns a suggestion
        :param actions:
        :return: suggestion
        """
        try:
            y = []
            for i in range(len(actions)):
                y.append(actions[i][1])
            labels = np.unique(np.array(y))
            y = np.unique(np.array(y), return_inverse=True)[1]
            b = []
            for i in range(len(actions)):
                a = str(actions[i][2])
                a = a.split(', ')
                d, h = a[0].split(' ')
                yea, m, day = d.split('-')
                h, min, sec = h.split(':')
                # h, m, s = d.split(':')
                ts = datetime(int(yea), int(m), int(day), int(h), int(min), int(sec))
                timestamp = int(round(ts.timestamp()))
                b.append(timestamp)
            b = np.array(b)
            x = b.reshape(-1, 1)
            neigh = KNeighborsClassifier(n_neighbors=35)
            neigh.fit(x, y)
            # print(time.time())
            consnum = neigh.predict([[time.time()]])
            consiglio = labels[consnum]
            return consiglio
        except:
            return 'query'
    def actionled(self, action,redPin = 17,greenPin = 27,bluePin = 22 ):
        """
        this function activates LEDs if the program is uploaded into a raspberry py
        :param action: what the action is, customizable
        :param redPin: #refer to readme
        :param greenPin: #refer to readme
        :param bluePin: #refer to readme
        :return: //
        """
        try:
            import RPi.GPIO as GPIO
            # set pins as outputs
            GPIO.setup(redPin, GPIO.OUT)
            GPIO.setup(greenPin, GPIO.OUT)
            GPIO.setup(bluePin, GPIO.OUT)
            if action.upper() == 'RED':
                GPIO.output(redPin, GPIO.LOW)
                GPIO.output(greenPin, GPIO.HIGH)
                GPIO.output(bluePin, GPIO.HIGH)
            if action.upper() == 'BLUE':
                GPIO.output(redPin, GPIO.HIGH)
                GPIO.output(greenPin, GPIO.HIGH)
                GPIO.output(bluePin, GPIO.LOW)
            if action.upper() == 'GREEN':
                GPIO.output(redPin, GPIO.LOW)
                GPIO.output(greenPin, GPIO.HIGH)
                GPIO.output(bluePin, GPIO.HIGH)
            if action.upper() == 'YELLOW':
                GPIO.output(redPin, GPIO.LOW)
                GPIO.output(greenPin, GPIO.LOW)
                GPIO.output(bluePin, GPIO.HIGH)
            if action.upper() == 'LIGHTBLUE':
                GPIO.output(redPin, GPIO.HIGH)
                GPIO.output(greenPin, GPIO.LOW)
                GPIO.output(bluePin, GPIO.LOW)
            if action.upper() == 'PURPLE':
                GPIO.output(redPin, GPIO.LOW)
                GPIO.output(greenPin, GPIO.LOW)
                GPIO.output(bluePin, GPIO.HIGH)
            if action.upper() == 'WHITE':
                GPIO.output(redPin, GPIO.LOW)
                GPIO.output(greenPin, GPIO.LOW)
                GPIO.output(bluePin, GPIO.LOW)
            if action.upper() == 'OFF':
                GPIO.output(redPin, GPIO.HIGH)
                GPIO.output(greenPin, GPIO.HIGH)
                GPIO.output(bluePin, GPIO.HIGH)
        except Exception as e:
            return e


    def login(self, email, password):
        """
        this function checks whether a user is registeres
        :param email:
        :param password:
        :return: 1 if the user is not in the database, 777 if the user is admin, 0 if user is normal and reistered
        """
        try:
            query = f'SELECT * FROM `users` WHERE `email` LIKE %s'
            self.cursor.execute(query, email)
            alldata = self.cursor.fetchall()
            # print(alldata)
            if alldata == ():
                print('no user with this email')
                return 1
            else:
                print('email match')
                if alldata[0][3] == password:
                    print('password corretta')
                    if alldata[0][4] == 'root':
                        print('User is Root')
                        return 777
                    return 0
                else:
                    print('password doesnt match')
                    return 1
        except:
            self.db.rollback()
            print('couldnt verify account')

    def close(self):
        try:
            self.db.close()
        except:
            print("errore")


class User:
    nome = 'None'
    surnome = 'None'
    email = 'None'
    password = 'None'

    def __init__(self, surnome, nome, email, password):
        """
        this class defines the user
        :param surnome:
        :param nome:
        :param email:
        :param password:
        """
        self.nome = nome
        self.surnome = surnome
        self.email = email
        self.password = password


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/one")
def page1():
    return render_template("page1.html")


@app.route("/quer", methods=["post"])  # login / homepage
def querry():
    email = request.form.get("email")
    password = request.form.get("pswd")

    # print(password)
    # print(password)
    action = 'off'
    if request.form.get("query") == 'login':
        action = 'off'
    else:
        action = request.form.get("query")  # whats written in the html box
    db = Database("localhost", "root", "", "iot_database")
    res = db.login(email, password)
    db.insertAction(email, action)

    consiglio = 'query'
    #db.actionled(action) ########################## THIS CODE IS FOR LEDS#######################################
    if res == 777:
        graphJSON = db.pieGraph('root', '%', showlegend=False)
        query = f'SELECT `code`,`email`, `action`, `datetime` FROM iot_database.actions WHERE `email` LIKE %s ORDER BY `code` DESC'
        actions = db.queryRetrieveAll(query, '%')
        return render_template("homepage.html", kemail=email, kactions=actions, graphJSON=graphJSON, kaction=action,
                               konsiglio=consiglio)
    else:
        graphJSON = db.pieGraph('user', email)
        query = f"SELECT `code`, `action`, `datetime` FROM iot_database.actions WHERE `email` LIKE %s AND `action` NOT LIKE 'login' ORDER BY `code` DESC"
        actions = db.queryRetrieveAll(query, email)
        consiglio = db.knn(actions)
        return render_template("homepage.html", kemail=email, kactions=actions, graphJSON=graphJSON, kaction=action,
                               konsiglio=consiglio)

        # print(actions)
        # neigh = KNeighborsClassifier(n_neighbors=3)


@app.route("/onepoint5", methods=["post"])  # login / homepage
def page1dot5():
    email = request.form.get("email")
    password = request.form.get("pswd")
    # print(password)
    db = Database("localhost", "root", "", "iot_database")
    res = db.login(email, password)
    action = 'off'
    consiglio = 'query'
    if res == 0:
        db.insertAction(email, 'login')
        graphJSON = db.pieGraph('user', email, showlegend=False, width=300)
        query = f"SELECT `code`, `action`, `datetime` FROM iot_database.actions WHERE `email` LIKE %s AND `action` NOT LIKE 'login' ORDER BY `code` DESC"
        actions = db.queryRetrieveAll(query, email)
        consiglio = db.knn(actions)
        # action=f'<table><tr><th>{actions[0][0]}</th><th>{actions[0][1]}</th><th>{actions[0][2]}</th></tr></table>'
        return render_template("homepage.html", kemail=email, kpass=password, kactions=actions, graphJSON=graphJSON,
                               kaction=action, konsiglio=consiglio)
    elif res == 777:
        db.insertAction(email, 'login')
        queryadmin = f'SELECT `code`, `email`, `action`,`datetime` FROM iot_database.actions WHERE`email` LIKE %s ORDER BY `code` DESC'
        actions = db.queryRetrieveAll(queryadmin, '%')
        graphJSON2 = db.pieGraph('root', '%', showlegend=False, width=300)
        # action=f'<table><tr><th>{actions[0][0]}</th><th>{actions[0][1]}</th><th>{actions[0][2]}</th></tr></table>'
        return render_template("homepage.html", kemail=email, kpass=password, kactions=actions, graphJSON=graphJSON2,
                               kaction=action, konsiglio=consiglio)
    else:
        db.insertAction(email, 'attemptedLogin')
        return render_template("page1.5err.html")


@app.route("/two")  # registration
def page2():
    return render_template("page2.html")


@app.route('/exita', methods=["post"])  # logout
def page4():
    email = request.form.get("email")
    db = Database("localhost", "root", "", "iot_database")
    db.insertAction(email, 'logout')
    return render_template('logout.html')


@app.route("/three", methods=["post"])  # check for registration
def getlogin():
    surnome = request.form.get("surrname")
    nome = request.form.get("name")
    email = request.form.get("email")
    password = request.form.get("pswd")
    userx = User(surnome, nome, email, password)
    db = Database("localhost", "root", "", "iot_database")
    if db.checkEmail(email) != 'free':
        db.insertAction(email, 'arwue')  # attempted registration with used email
        return render_template("pagewrongmail.html")
    else:
        db.insert(userx)
        db.insertAction(email, 'Registered')
        return render_template("page3.html", kuser=userx)


@app.route('/dash', methods=['post'])
def notdash():
    db = Database("localhost", "root", "", "iot_database")
    email = request.form.get("email")
    graphJSON = db.pieGraph('root', email, 600)
    return render_template('plots.html', graphJSON=graphJSON)


if __name__ == "__main__":
    app.run(debug=True)

    # db = Database("localhost", "marco", "password", "iot_database")
    # email= 'verganimarco02@gmail.com'
    # query = f'    UPDATE users SET role="root" WHERE email= "verganimarco02@gmail.com"'
    # db.updatePriv(email,'root')
    # actions = db.queryRetrieveAll(query, email)
    # print(f'<tr><th>{actions[0][0]}</th><th>{actions[0][1]}</th><th>{actions[0][2]}</th></tr>')
    # users = db.getAllUser()
    # for u in users:
    # print(u)
