<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FunkoShop_con.NET.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <main><!-- beginning of the header-->
        <article class="Login">

                <h2 class="Login__title">INGRESAR A MI CUENTA</h2>

                    <div class="Login__content">
                        <label class="Login__text"  for="E-MAIL">E-MAIL:</label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="Login__inputTxt" placeholder="E-MAIL" type="email" name="E-MAIL"></asp:TextBox>
    
                        <label class="Login__text" for="Contraseña">Contraseña:</label>
                        <asp:TextBox runat="server" ID="txtPassword" CssClass="Login__inputTxt" placeholder="Contraseña" type="password" name="Contraseña" ></asp:TextBox>
                    </div>

                    <div class="Login__check">

                         <asp:Button CssClass="Login__button"  runat="server" ID="btnLogin" Text="Ingresar"/>
                    
                         <div>
                            <asp:CheckBox runat="server" ID="chkRemember" />
                            <label class="Login__record" for="Recordarme">Recordarme</label>
                         </div>

                    </div>

                <a href="pepe" >Olvidé mi contraseña</a>
        </article>
    </main><!-- end of the main -->
</asp:Content>
