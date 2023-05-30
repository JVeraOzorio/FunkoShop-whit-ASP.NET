<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FunkoShop_con.NET.imagenes.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="admin">
        <div class="searchbar">
            <picture class="searchbar__icon">
                <img src="../image/multimedia/icons/search_icon.svg" alt="">
            </picture>
            <input type="search" name="search" placeholder="Search" id="">
        </div>
        <div class="admin__title">
            <h2>LISTADO DE PRODUCTOS</h2>
            <div class="admin__add">
                <p>AGREGAR</p>
                <picture class="searchbar__icon">
                    <img src="../image/multimedia/icons/add.svg" alt="">
                </picture>
            </div>
        </div>
    </main>
</asp:Content>
