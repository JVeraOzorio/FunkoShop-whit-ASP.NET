<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="FunkoShop_con.NET.Pages.DetalleProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section class="Collection container itemShop">
            <article class="Collection__content itemShop__info" >
                <asp:Label CssClass="Card-Item__license" ID="lblLicense" runat="server" Text=""></asp:Label>
                <asp:Label CssClass="Card-Item__name" ID="lblNombre" runat="server" ></asp:Label>
                <asp:Label CssClass="Card-Item__price" ID="lblDescription" runat="server"></asp:Label>
                <asp:Label CssClass="Card-Item__price" ID="lblPrecio" runat="server"></asp:Label>
                <asp:Label CssClass="Card-Item__price" ID="lblStock" runat="server"><a href="">Ver métodos de pago</a> - 3 cuotas sin interés<</asp:Label>
                <div class="itemShop__buy">
                    
                    <asp:Button CssClass="itemShop__buy-btnSum" ID="btnRestar" runat="server" Text="-"  />
                    <asp:TextBox ID="txtCantidad" runat="server" Text="0" CssClass="autoSizeInput counter"></asp:TextBox>
                    <asp:Button CssClass="itemShop__buy-btnSum" ID="btnSumar" runat="server" Text="+"/>
                    <asp:Button CssClass="itemShop__buy-btnAddToCart" ID="btnAgregar" runat="server" Text="Agregar al carrito"  />
                </div>
            </article>
            <picture class="Collection__cover">
                <asp:Image ID="imgProducto" runat="server" CssClass="Collection__cover-img" width="100%" />
            </picture>
        </section>
     <section class="Slider Carrousel container">
            <h2 class="Slider__title">Productos Relacionados</h2>
                                    <a href="DetalleProducto.aspx">DetalleProducto.aspx</a>
            <div class="Slider__items Carrousel__CardContainer">
                <asp:Repeater ID="rptSlider" runat="server">
                    <ItemTemplate>
                        <article class="Card-Item">
                            <a class="Card-Item__link" href="<%# "DetalleProducto.aspx?id=" + Eval("productCode") %>">
                                <picture class="Card-Item__cover" >
                                    <span class="Card-Item__tag">Nuevo</span>
                                    <asp:Image ImageUrl='<%#Eval("urlImage")%>' Width="100%" runat="server" CssClass="Card-Item__img--front" />
                                    <img class="Card-Item__img--back" src='<%#Eval("urlBoxImage")%>' whidth="100%">
                                </picture>
                                <div class="Card-Item__content">
                                    <p class="Card-Item__license"><%#Eval ("license.Description")%></p>        
                                    <%--<asp:Label ID="lblProductCode" Text='<%#Eval("productCode")%>' runat="server" />--%>
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

</asp:Content>
