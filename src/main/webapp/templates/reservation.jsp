<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:basepage>
    <jsp:attribute name="extrahead">
        <title>Seleziona posto</title>
        <link rel="stylesheet" href="../assets/css/reservation.css">

        <!-- Javascript creato dalla pagina JSP che crea un array contenente tutti i posti e il loro status -->
        <script text="javascript">
            var a = [
                <c:forEach items="${seats}" var="seat">
                {seatid:${seat.id}, row:${seat.row}, column:${seat.column}, status:${seat.status}},
                </c:forEach>
            ];


            var amounts = {

                <c:forEach items="${prices}" var="price">
                     ${price.id}: ${price.amount} ,
                </c:forEach>

            };

            var total=0.0;


        </script>

        <!-- Javascript contentente tutta la logica per far funzionare la pagina come single page application.
            Si occupa di stampare i posti contenuti nel precedente array del colore giusto e nella griglia giusta,
            cambia il colore dei suddetti posti una volta cliccato, fa richieste asincrone quando si sceglie di pagare
            e in caso il pagamento sia andato a buon fine redirecta alla homepage -->
        <script src="../assets/js/reservation.js"></script>

    </jsp:attribute>
    <jsp:body>


<!--popup per procedere con il pagamento e inserire numero carta di credito -->
        <div id="dimmer"></div>

        <div id="pay" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Informazioni di Pagamento</h3>
            </div>
            <div class="panel-body">
                <form>
                    <div class="form-group">
                        <label id="totalamount"></label>
                        <label>Inserisci il numero della carta di credito:</label>

                        <div>
                            <input type="text">
                        </div>
                    </div>
                </form>
                <button class="btn btn-default" type="submit" onclick="sendJson();">Paga</button>
                <button class="btn btn-default" type="submit" onclick=" $('#dimmer').hide();
    $('#pay').hide(); ">Modifica</button>
            </div>
        </div>


        <div id="waiting" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Attendere...</h3>
            </div>
            <div class="panel-body">
                <p>Attendere il completamento dell'ordine...</p>
            </div>
        </div>


        <div id="confirmation" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Ordine completato</h3>
            </div>
            <div class="panel-body">
                <p>Grazie Per l'acquisto, a breve riceverà una email di conferma dell'ordine</p>
                <button class="btn btn-default" type="submit" onclick="document.location.href='/';">Chiudi</button>

            </div>
        </div>


        <div id="errorres" class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title" style="color: #a40600;">Errore!</h3>
            </div>
            <div class="panel-body">
                <p>Errore durante la fase di acquisto, nessun importo le è stato addebitato. Si prega di ripetere la
                    procedura.</p>
                <button class="btn btn-default" type="submit" onclick="document.location.href='/';">Chiudi</button>

            </div>
        </div>


        <h1>Seleziona il posto</h1>

        <div class="">
            <div class="row">

                <!-- form in cui si seleziona il tipo di biglietto desiderato -->
                <div class="well">
                    <form>
                        <label>Seleziona la tua categoria:</label>
                        <select id="category_selector" class="form-control">

                            <c:forEach items="${prices}" var="price">
                                <option value="${price.id}">${price.kind}</option>
                            </c:forEach>
                        </select>
                    </form>
                </div>
            </div>
            <div class="row">

                <div class="col-sm-8">
                    <div id="theatre-screen">Schermo</div>

                    <!-- div in cui il javascript stampera' la rappresentazione grafica del teatro -->
                    <div id="board" class="board">
                    </div>

                </div>

                <!-- div in cui apparira' una lista riassuntiva dei posti selezionati, con annesso bottone "Paga" per
                    effettuare l'acquisto -->
                <div id="done" class="col-sm-4">
                    <br>
                    <button class="btn btn-default" type="submit" onclick="submit();">Paga</button>
                </div>
            </div>
        </div>
    </jsp:body>
</t:basepage>