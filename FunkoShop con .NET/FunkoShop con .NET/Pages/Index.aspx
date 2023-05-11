<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FunkoShop_con.NET.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <section class= "Hero">
        <article class="Hero__content container">
            <h3 class="Hero__title">Nuevos Ingresos</h3>
            <p class="Hero__text"> Descubrí el próximo Funko Pop de tu colección</p>
            <a class="Hero__link" href="./pages/shop.html">SHOP</a>
        </article>
    </section>
    <main class="MainContainer container">

        <section  class="Collection container">
            <article class="Collection__content">
                <h3 class="Collection__title">Star Wars &The Mandalorian </h3>   
                <p class="Collection__text">Disfruta de una saga que sigue agregando personajes a su colección.</p>
                <a class="Collection__link" href="https://drive.google.com/file/d/1pVKF9R2yubWU6QBdoMf_d_YlAwjS8I3Y/view?usp=share_link">VER COLECCIÓN</a>
            </article>
            <picture class="Collection__cover"><img src="./image/multimedia/star-wars/baby-yoda-1.webp" alt="Figura coleccionable de Grogu de la serie The Mandalorian"></picture>
        </section>

        <section class="Collection container">
            <article class="Collection__content">
                <h3 class="Collection__title">POKEMON INDIGO</h3>   
                <p class="Collection__text">Atrapa todos los que puedas y disfruta de una colección llena de amigos.</p>
                <a class="Collection__link" href="./pages/shop.html">VER COLECCIÓN</a>
            </article>
            <picture class="Collection__cover"><img src="./image/multimedia/pokemon/vulpix-1.webp" alt="Figura coleccionable de Vulpix de la serie Pokemon"></picture>
        </section>

        <section class="Collection container">
            <article class="Collection__content">
                <h3 class="Collection__title">HARRY POTTER</h3>   
                <p class="Collection__text">Revive los recuerdos de una saga llena de magia y encanto.</p>
                <a class="Collection__link" href="./pages/shop.html">VER COLECCIÓN</a>
            </article>
            <picture class="Collection__cover"><img src="./image/multimedia/harry-potter/snape-patronus-1.webp" alt="Figura coleccionable de patronus de Snape de la pelicula Harry Potter"></picture>
        </section>

        <section class="Slider container">

            <h2 class="Slider__title">últimos lazamientos</h2>
            <ul class="Slider__items">
                <li class="Slider__item">
                    <article class="Card-Item" >
                        <a class="Card-Item__link" href="">
                            <picture  class="Card-Item__cover">
                                <span class="Card-Item__tag">Nuevo</span>
                                <img class="Card-Item__img--front" src="./image/multimedia/star-wars/trooper-1.webp" alt="Figura coleccionable de Storm trooper de la pelicula Star Wars">
                                <img class="Card-Item__img--back" src="./image/multimedia/star-wars/trooper-box.webp" alt="Figura coleccionable de Storm trooper de la pelicula Star Wars en caja">
                            </picture>
                            <div class="Card-Item__content">
                                <p class="Card-Item__license">STAR WARS</p>
                                <h4 class="Card-Item__name">STORMTROOPER LIGHTSABER</h4>
                                <p class="Card-Item__price">$ 1799,99.-</p>
                                <p class="Card-Item__promo">3 CUOTAS SIN INTERÉS</p>
                            </div>
                        </a>
                    </article>
                </li>
                <li class="Slider__item">
                    <article class="Card-Item">
                        <a class="Card-Item__link" href="">
                            <picture class="Card-Item__cover">
                                <span class="Card-Item__tag">Nuevo</span>
                                <img class="Card-Item__img--front" src="./image/multimedia/pokemon/pidgeotto-1.webp" alt="Figura coleccionable de pidgeotto de la serie Pokemon">
                                <img class="Card-Item__img--back" src="./image/multimedia/pokemon/pidgeotto-box.webp" alt="Figura coleccionable de pidgeotto de la serie Pokemon en caja">
                            </picture>
                            <div class="Card-Item__content">
                                <p class="Card-Item__license">POKEMON</p>
                                <h4 class="Card-Item__name">PIDGEOTTO</h4>
                                <p class="Card-Item__price">$ 1799,99.-</p>
                                <p class="Card-Item__promo">3 CUOTAS SIN INTERÉS</p>
                            </div>
                        </a>
                    </article>
                </li>
                <li class="Slider__item">
                    <article class="Card-Item" >
                       <a  class="Card-Item__link" href="">
                        <picture class="Card-Item__cover">
                            <span class="Card-Item__tag">Nuevo</span>
                               <img class="Card-Item__img--front" src="./image/multimedia/harry-potter/luna-1.webp" alt="Figura coleccionable de Lune Lovegood de la pelicula harry-potter">
                               <img class="Card-Item__img--back" src="./image/multimedia/harry-potter/luna-box.webp" alt="Figura coleccionable de Lune Lovegood de la pelicula harry-potter en caja">
                        </picture>
                        <div class="Card-Item__content">
                            <p class="Card-Item__license">HARRY POTTER</p>
                            <h4 class="Card-Item__name">LUNA LOVEGOOD LION MASK</h4>
                            <p class="Card-Item__price">$ 1799,99.-</p>
                            <p class="Card-Item__promo">3 CUOTAS SIN INTERÉS</p>
                        </div>
                       </a>
                    </article>
                </li>
            </ul>
        </section>
    </main>
</asp:Content>
