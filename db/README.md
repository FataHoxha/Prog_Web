# installazione del db
Una volta che postgres è installato e psql è configurato basta eseguire

    ~ $ psql < create_db_user.sql # questo crea il database e l'utente movies
    ~ $ psql -U movies movies < create_tables.sql # questo crea le tabelle
    ~ $ psql -U movies movies < insert_data.sql # questo inserisce dati fuffa

Il primo comando va eseguito solo la prima volta, gli altri ogni volta che cambiano i dati o la struttura del db.

