
<html>
<head>
    <title>Tour</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
<style>
    nav div:nth-child(7) {
    width: 70px;
    float:right;
    padding: 15.4px;
    }

    nav a:nth-child(6) {
        width: 70px;
        float:right;
        padding: 15.4px;
    }


    form {
        margin-bottom:-50px
        width:70%;
    }


    input[type=text] , input[type=email]{
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }


    input[type=checkbox] {
        margin-top: 16px;
    }

</style>

</head>
<body>
<%@include file="Navbar.jsp"%>
<main>

    <div class="container">
        <div class="product-details">
            <h1>TOUR: alla scoperta del vino bianco</h1>
            <p class="information">
                il tour comprende degustazione dei nostri vini bianchi, tra cui il rinomato Greco di Tufo,
                con un giro completo della cantina ed esplorazione dei processi lavorativi all'interno dell'azienda.
            </p>
        </div>

        <div class="product-image">
            <img src="imgs/cantina2.jpg" alt="tour imgs">
        </div>
    </div>

    <div class="container">
        <div class="product-details">
            <h1>TOUR: alla scoperta del vino rosso</h1>
            <p class="information">
                il tour comprende degustazione dei nostri vini rossi, tra cui il rinomato Aglianico,
                con un giro completo della cantina ed esplorazione dei processi lavorativi all'interno dell'azienda.
            </p>
        </div>

        <div class="product-image">
            <img src="imgs/cantina2.jpg" alt="tour imgs">
        </div>
    </div>

    <div class="container">
        <div class="product-details">
            <h1>TOUR: alla scoperta della cantina</h1>
            <p class="information">
                il tour comprende degustazione dei nostri vini bianchi, vini rossi e spumanti,
                con un giro completo della cantina ed esplorazione dei processi lavorativi all'interno dell'azienda.
            </p>
        </div>

        <div class="product-image">
            <img src="imgs/cantina2.jpg" alt="tour imgs">
        </div>
    </div>


    <form action="index.jsp">
        <div class="newsWrapper">
        <div class="containerNews">
            <h2>Contattaci per saperne di piu:</h2>
        </div>

        <div class="containerNews" style="background-color:white">
            <input type="text" placeholder="Name" name="name" required>
            <input type="email" placeholder="Email address" name="mail" required>
            <label>
                <input type="checkbox" checked="checked" name="subscribe"> voglio ricevere promozioni!
            </label>
        </div>

        <div class="containerNews" >
            <input id="inviabtt" type="submit" value="invia" style="  width: 100%;
    padding: 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
">
        </div>
        </div>
    </form>

</main>
<%@include file="Footer.jsp"%>
</body>
</html>
