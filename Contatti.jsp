
<html>
<head>
    <title>Contatti</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
</head>
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


    .google-maps {
        position: relative;
        padding-bottom: 75%;
        height: 0;
        overflow: hidden;
        margin-top: 5%;
    }
    .google-maps > iframe {
        position: absolute;
        top: 0;
        left: 0;
        height: 80% ;
    }
    .contatti {
        float: right;
        text-align: center;
        text-decoration: none;
    }

    p.contatti {
        margin-top: 5%;
        color: black;
    }
    .contatti a {
        text-decoration : none;
        color : black;
    }

    .contatti i:hover {
        color : gold;
    }

    .contatti i {
        color : lightblue;
    }
    main {
        display: inline;
    }
</style>
<body>
<%@include file="Navbar.jsp"%>
<main>
    <div class="google-maps">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6043.023088090894!2d14.787064476486144!3d40.77276681730122!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc5c7456b88bd%3A0x80bab96149d2993d!2sUniversit%C3%A0%20degli%20Studi%20di%20Salerno!5e0!3m2!1sit!2sit!4v1656173946430!5m2!1sit!2sit" style="border:1px solid black; box-shadow: #555555; height: 50%; margin-left: 3%; " allowfullscreen ></iframe><!--  <iframe src="https://www.google.com/maps/embed?........." frameborder="0" style="border:0" allowfullscreen></iframe> -->
        <div class="contatti">
            <h2><strong>BENVENUTI!</strong></h2>
            <p>In questa pagina troverete tutte le informazioni necessarie per contattarci,<br> o per raggiungere la sede. </p>
            <p><strong>indirizzo</strong>:Contrada Casale Bosco, 41. Torrioni (AV) </p>
            <p><strong>Cell.: </strong>+39 368 3100524 <br>
                <strong>Tel/Fax:</strong> +39 0825 998375</p>

            <a href="#"><strong> Email:</strong> collinedelsole@hotmail.it</a>      <br>
            <h3> Seguiteci anche sui nnostri social:</h3>
             <a href="https://www.facebook.com/login/" target="_blank">  <i class="fab fa-facebook-square"></i>Facebook </a> <br> <br>
          <a href=" https://www.instagram.com/accounts/login/" target="_blank">  <i class="fab fa-instagram-square"></i>Instagram </a> <br> <br>
         <a href="https://twitter.com/i/flow/login" target="_blank">  <i class="fab fa-twitter-square"></i>Twitter </a>
        </div>
    </div>
</main>
</body>
</html>
