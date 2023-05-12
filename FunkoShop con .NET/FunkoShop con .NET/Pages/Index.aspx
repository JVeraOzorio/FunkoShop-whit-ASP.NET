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

        <asp:Repeater id="rptRepeater" runat="server">
            <ItemTemplate>
                <section class="Collection container">
                    <article class="Collection__content">
                        <h3 class="Collection__title"> <%#Eval ("license.Description")  %></h3>
                        <p class="Collection__text"><%#Eval("description")%></p>
                        <a class="Collection__link" href="https://drive.google.com/file/d/1pVKF9R2yubWU6QBdoMf_d_YlAwjS8I3Y/view?usp=share_link">VER COLECCIÓN</a>
                    </article>
                    <picture class="Collection__cover">
                        <asp:Image CssClass="imgProducto" ImageUrl='<%#Eval("urlImage")%>' width="100%" runat="server" />
                    </picture>
                </section>
            </ItemTemplate>
        </asp:Repeater>

        <section class="Slider Carrousel container">
            <h2 class="Slider__title">últimos lazamientos</h2>
            <div class="Slider__items Carrousel__CardContainer">
                <asp:Repeater ID="rptSlider" runat="server">
                    <ItemTemplate>
                        <article class="Card-Item">
                            <a class="Card-Item__link" href="">
                                <picture class="Card-Item__cover">
                                    <span class="Card-Item__tag">Nuevo</span>
                                    <asp:Image ImageUrl='<%#Eval("urlImage")%>' Width="100%" runat="server" CssClass="Card-Item__img--front" />
                                    <img class="Card-Item__img--back" src='<%#Eval("urlBoxImage")%>' whidth="100%">
                                </picture>
                                <div class="Card-Item__content">
                                    <p class="Card-Item__license"><%#Eval ("license.Description")%></p>
                                    <h4 class="Card-Item__name"><%#Eval ("name")%></h4>
                                    <p class="Card-Item__price"><%#Eval ("price")%></p>
                                    <p class="Card-Item__promo">3 CUOTAS SIN INTERÉS</p>
                                </div>
                            </a>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <ul class="points">
                <li class="point"></li>
                <li class="point"></li>
            </ul>
        </section>
    </main>
</asp:Content>
