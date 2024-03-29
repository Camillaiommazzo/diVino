<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Carrello</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
    <script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>

</head>

<body>
<main>

    <div class="basket">

                <div class="basket-labels">
            <ul>
                <li class="item item-heading">Prodotto</li>
                <li class="price">Prezzo</li>
            </ul>
        </div>
        <c:if test="${carrello ==null}">
            <center><div class="product-details">
            <h1 style="font-size: x-large; margin-top: 20px; margin-left: 30%"><strong> Il carrello è vuoto </strong></h1>
            </div></center>
        </c:if>
                <c:forEach items="${carrello}" var="prodotto" >
        <div class="basket-product">
            <div class="item">
                <div class="product-image">
                    <img src="${prodotto.link_immagine}" alt="Placholder Image 2" class="product-frame">
                </div>
                <div class="product-details">
                    <h1><strong>${prodotto.nome}</strong> </h1>
                </div>
            </div>
            <div class="price">${prodotto.prezzo}  &euro;</div>
            <div class="remove">
                <form class="rimuovi" method="post" action="RimuoviDalCarrello">
                    <input type="hidden" name="id" value="${prodotto.cod}">
                    <p><button> Rimuovi</button></p>
                </form>
            </div>


        </div>
        </c:forEach>
    </div>

    <aside>
        <div class="summary">
            <div class="summary-total-items"><span class="total-items"></span> Prodotti nel Carrello</div>
            <div class="summary-subtotal">
                <div class="subtotal-title">Totale</div>
                <div class="subtotal-value final-value" id="basket-subtotal">${prezzo}  &euro;</div>

            </div>
            <div class="summary-delivery">
                <select name="delivery-collection" class="summary-delivery-selection">
                    <option value="0" selected="selected">Selezione metodo di spedizione</option>
                    <option value="collection">Ritiro in Sede</option>

                </select>
            </div>
            <div class="summary-total">
                <div class="total-title">Totale</div>
                <div class="total-value final-value" id="basket-total">${prezzo}  &euro;</div>
            </div>
            <c:if test="${carrello !=null}">
            <button  class="svuotaCarrello" id="svuota" style="background-color:transparent;text-decoration: none; color: black; margin-bottom: 1%;">Svuota carrello</button>
            <br> <br>

            <div class="summary-checkout" >
                <form action="Checkout" method="post">
                <c:choose>
                    <c:when test="${utenteSessione == null}">
                        <a style="text-decoration: none; color: black; border: 1px solid black" class="checkout-cta" href="Login.jsp">  Checkout   </a>
                    </c:when>
                    <c:when test="${utenteSessione!=null}">
                    <button type="submit" id="buttn" class="checkout-cta" > Checkout</button>

                    </c:when>
                </c:choose>
                    </c:if>
                </form>

                <c:if test="${carrello==null}">
                    <button  disabled type="submit" class="checkout-cta" > Checkout</button>
                </c:if>

            </div>
        </div>
    </aside>
</main>
    <a class="back-button" href="VisualizzaNegozio.jsp" > <img src="imgs/wine-glasses.png"> </a>


<script src="SvuotaCarrello.js"></script>
</body>
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
    @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700,600);

    html,
    html a {
        -webkit-font-smoothing: antialiased;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
    }

    body {
        background-color: #fff;
        color: #666;
        font-family: 'Open Sans', sans-serif;
        font-size: 62.5%;
        margin: 0 auto;
    }

    a {
        border: 0 none;
        outline: 0;
        text-decoration: none;
    }

    strong {
        font-weight: bold;
    }

    p {
        margin: 0.75rem 0 0;
    }

    h1 {
        font-size: 0.75rem;
        font-weight: normal;
        margin: 0;
        padding: 0;
    }

    input,
    button {
        border: 0 none;
        outline: 0 none;
    }

    button {
        background-color: #666;
        color: #fff;
    }

    button:hover,
    button:focus {
        background-color: #555;
    }

    img,
    .basket-module,
    .basket-labels,
    .basket-product {
        width: 100%;
    }

    input,
    button,
    .basket,
    .basket-module,
    .basket-labels,
    .item,
    .price,
    .quantity,
    .subtotal,
    .basket-product,
    .product-image,
    .product-details {
        float: left;
    }

    .price:before,
    .subtotal:before,
    .subtotal-value:before,
    .total-value:before,
    .promo-value:before {
        content: '';
    }

    .hide {
        display: none;
    }

    main {
        clear: both;
        font-size: 0.75rem;
        margin: 0 auto;
        overflow: hidden;
        padding: 1rem 0;
        width: 960px;
    }

    .basket,
    aside {
        padding: 0 1rem;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .basket {
        width: 70%;
    }

    .basket-module {
        color: #111;
    }

    label {
        display: block;
        margin-bottom: 0.3125rem;
    }

    .promo-code-field {
        border: 1px solid #ccc;
        padding: 0.5rem;
        text-transform: uppercase;
        transition: all 0.2s linear;
        width: 48%;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        -o-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    }

    .promo-code-field:hover,
    .promo-code-field:focus {
        border: 1px solid #999;
    }

    .promo-code-cta {
        border-radius: 4px;
        font-size: 0.625rem;
        margin-left: 0.625rem;
        padding: 0.6875rem 1.25rem 0.625rem;
    }

    .basket-labels {
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        margin-top: 1.625rem;
    }

    ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    li {
        color: #111;
        display: inline-block;
        padding: 0.625rem 0;
    }

    li.price:before,
    li.subtotal:before {
        content: '';
    }

    .item {
        width: 55%;
    }

    .price,
    .quantity,
    .subtotal {
        width: 15%;
    }

    .subtotal {
        text-align: right;
    }

    .remove {
        bottom: 1.125rem;
        float: right;
        position: absolute;
        right: 0;
        text-align: right;
        width: 45%;
    }

    .remove button {
        background-color: transparent;
        color: #777;
        float: none;
        text-decoration: underline;
        text-transform: uppercase;
    }

    .item-heading {
        padding-left: 4.375rem;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .basket-product {
        border-bottom: 1px solid #ccc;
        padding: 1rem 0;
        position: relative;
    }

    .product-image {
        width: 35%;
    }

    .product-details {
        width: 65%;
    }

    .product-frame {
        border: 1px solid #aaa;
    }

    .product-details {
        padding: 0 1.5rem;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .quantity-field {
        background-color: #ccc;
        border: 1px solid #aaa;
        border-radius: 4px;
        font-size: 0.625rem;
        padding: 2px;
        width: 3.75rem;
    }

    aside {
        float: right;
        position: relative;
        width: 30%;
    }

    .summary {
        background-color: #eee;
        border: 1px solid #aaa;
        padding: 1rem;
        width: 250px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .summary-total-items {
        color: #666;
        font-size: 0.875rem;
        text-align: center;
    }

    .summary-subtotal,
    .summary-total {
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        clear: both;
        margin: 1rem 0;
        overflow: hidden;
        padding: 0.5rem 0;
    }

    .subtotal-title,
    .subtotal-value,
    .total-title,
    .total-value,
    .promo-title,
    .promo-value {
        color: #111;
        float: left;
        width: 50%;
    }

    .summary-promo {
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        -o-transition: all .3s ease;
        transition: all .3s ease;
    }

    .promo-title {
        float: left;
        width: 70%;
    }

    .promo-value {
        color: #8B0000;
        float: left;
        text-align: right;
        width: 30%;
    }

    .summary-delivery {
        padding-bottom: 3rem;
    }

    .subtotal-value,
    .total-value {
        text-align: right;
    }

    .total-title {
        font-weight: bold;
        text-transform: uppercase;
    }

    .summary-checkout {
        display: block;
    }

    .checkout-cta {
        display: block;
        float: none;
        font-size: 0.75rem;
        text-align: center;
        text-transform: uppercase;
        padding: 0.625rem 0;
        width: 100%;
    }

    .summary-delivery-selection {
        background-color: #ccc;
        border: 1px solid #aaa;
        border-radius: 4px;
        display: block;
        font-size: 0.625rem;
        height: 34px;
        width: 100%;
    }

    @media screen and (max-width: 640px) {
        aside,
        .basket,
        .summary,
        .item,
        .remove {
            width: 100%;
        }
        .basket-labels {
            display: none;
        }
        .basket-module {
            margin-bottom: 1rem;
        }
        .item {
            margin-bottom: 1rem;
        }
        .product-image {
            width: 40%;
        }
        .product-details {
            width: 60%;
        }
        .price,
        .subtotal {
            width: 33%;
        }
        .quantity {
            text-align: center;
            width: 34%;
        }
        .quantity-field {
            float: none;
        }
        .remove {
            bottom: 0;
            text-align: left;
            margin-top: 0.75rem;
            position: relative;
        }
        .remove button {
            padding: 0;
        }
        .summary {
            margin-top: 1.25rem;
            position: relative;
        }
    }

    @media screen and (min-width: 641px) and (max-width: 960px) {
        aside {
            padding: 0 1rem 0 0;
        }
        .summary {
            width: 28%;
        }
    }

    @media screen and (max-width: 960px) {
        main {
            width: 100%;
        }
        .product-details {
            padding: 0 1rem;
        }
    }
</style>
</html>