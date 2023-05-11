<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="FunkoShop_con.NET.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <article class="Login container">
            
            <h2 class="Login__title">CREA TU CUENTA</h2>
            <p>Completa el formulario para ser parte del mundo de los Funkos</p>

            

               
                <div class="CreateAcount__content">

                    <label class="Login__text" for="Nombre">Nombre:</label>
                    <asp:TextBox ID="txtName" CssClass="Login__inputTxt" placeholder="Nombre" Type="Nombre" nome="Nombre" required ="true"  runat="server" />
               
                    <label class="Login__text" for="Apellido">Apellido:</label>
                    <asp:TextBox ID="txtLastName" CssClass="Login__inputTxt" placeholder="Apellido" Type="Apellido" nome="Apellido" required ="true"  runat="server" />
                
                    <label class="Login__text" for="Email">Email:</label>
                    <asp:TextBox ID="txtEmail" CssClass="Login__inputTxt" placeholder="Email" Type="Email" nome="Email" required ="true"  runat="server" />
                
                    <label class="Login__text" for="Contraseña">Contraseña:</label>
                    <asp:TextBox ID="txtPassword" CssClass="Login__inputTxt" placeholder="Contraseña" Type="Contraseña" nome="Contraseña" TextMode="Password" required ="true"  runat="server" />
                
                    <label class="Login__text" for="Repita Contraseña">Repita Contraseña:</label>
                    <asp:TextBox ID="txtPasswordCopy" CssClass="Login__inputTxt" placeholder="Repita Contraseña" Type="RepitaContraseña" TextMode="Password" nome="RepitaContraseña" required ="true"  runat="server" />
                    
                 </div>

                 <div class="Login__check">

                     <asp:Button id="btnCreateAccount" CssClass="Login__button" type="submit" OnClick="btnCreateAccount_Click" Text="Resgistrar" runat="server" />

                     <div class="Login__record" >
                         <input type="checkbox" name="Acepto" id="Acepto" required>
                         <label for="Acepto">Acepto</label>
                         <a href="pepe">Términos y Condiciones</a>   
                     </div>

                     <asp:Label ID="lblError" Text="" runat="server" />

                 </div>
       
        </article>


</asp:Content>
