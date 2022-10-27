il file flasketta contiene la classe, commentata, e tutte le funzioni di tutte le pagine.
la relazione è bruttissima ma almeno il codice è quasi commentato bene.
il file iot_database contiene le tabelle e alcuni record, non sono responsabile per alcuni di questi poichè per fare testing ho fatto fare delle prove libere ad alcune persone,
leggere azioni e utenti a propria discrezione.
ho deciso di costruire il sito web aggregandolo a quello fatto durante il corso, utilizzo sklearn per il KNN.
il knn è svolto utilizzando il timestamp(difficilissimo da convertire in unix), su le labels(qualsiasi azione svolta dall'utente)
il consiglio knn è solo per gli utenti base, su tutte le azioni, tranne login.

TODO:
 senza raspberry non si può testare, ma possiedo del codice che, in conbinazione con un led rgb opportunamente posizionato 
	(con qesto tutorial: https://www.instructables.com/Raspberry-Pi-Tutorial-How-to-Use-a-RGB-LED/)
	e una lunga stringa di if, una per colore, come mostrato dal sito web, 
	permettono all'utente di scrivere un colore ( ex: blue) e, il sito, oltre a mostrare il led acceso, invierà il segnale corretto alla GPIO giusta, per creare quel colore.
	il codice è allegato in flasketta.
	