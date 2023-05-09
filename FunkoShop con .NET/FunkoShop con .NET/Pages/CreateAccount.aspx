<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="FunkoShop_con.NET.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <article class="Login container">
            
            <h2 class="Login__title">CREA TU CUENTA</h2>
            <p>Completa el formulario para ser parte del mundo de los Funkos</p>

            

               
                <div class="CreateAcount__content">

                    <label class="Login__text" for="Nombre">Nombre:</label>
                    <input class="Login__inputTxt" type="text" name="Nombre" id="Nombre" required>
               
                    <label class="Login__text" for="Apellido">Apellido:</label>
                    <input class="Login__inputTxt" type="text" nambe= "Apellido"  required>
                
                    <label class="Login__text" for="Email">Email:</label>
                    <input class="Login__inputTxt" type="email" name="Email"  required>
                
                    <label class="Login__text" for="Contraseña">Contraseña:</label>
                    <input class="Login__inputTxt" type="password" name="Contraseña" required>
                
                    <label class="Login__text" for="Repita Contraseña">Repita Contraseña:</label>
                    <input class="Login__inputTxt" type="password" name="Repita Contraseña"  required>
                    
                 </div>

                 <div class="Login__check">

                     <button class="Login__button" type="submit">Registrar</button>   

                     <div class="Login__record" >
                         <input type="checkbox" name="Acepto" id="Acepto" required>
                         <label for="Acepto">Acepto</label>
                         <a href="pepe">Términos y Condiciones</a>   
                     </div>


                 </div>
       
        </article>


</asp:Content>
