<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="FunkoShop_con.NET.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <aside>
            <section>
                <form action="">
                    <div>
                        <p>BUSCAR</p>
                        <input type="text" name="producto">
                   </div>
                    <div>
                            <p>ORDENAR POR</p>
                        <select name="ORDEN" id=""> 
                            <option value="Mayor a menor">Mayor a menor</option> 
                        </select>
                    </div>
                    <div>
                        <p>PRECIO</p>
                        <label for="Min">MIN</label>
                        <input type="number" name="Min">
                        <label for="Max">MAX</label>
                        <input type="number" name="Max">
                    </div>
                    <div>
                        <p>FILTRAR</p>
                        <ul>
                            <li>
                                <input type="checkbox" name="NUEVOS" id="" value="Nuevos">
                                <label for="NUEVOS">NUEVOS</label>
                            </li>
                            <li>
                                <input type="checkbox" name="OFERTAS" id="" value="Ofertas">
                                <label for="OFERTAS">OFERTAS</label>
                            </li>
                            <li>
                                <input type="checkbox" name="EDICIÓN ESPECIAL" id="" value="Edicion especial">
                                <label for="EDICIÓN ESPECIAL">EDICIÓN</label>
                            </li>
                            <li>
                                <input type="checkbox" name="FAVORITOS" id="" value="Favoritos">
                                <label for="FAVORITOS">FAVORITOS</label>
                            </li>
                        </ul>
                    </div>
                </form>    
            </section>
        </aside>
        <section>
            <h2>últimos lazamientos</h2>
            <ul>
                <li>
                    <article>
                        <a href="">
                            <picture>
                                <img src="../image/multimedia/star-wars/trooper-1.webp" alt="Figura coleccionable de Storm trooper de la pelicula Star Wars">
                            </picture>
                            <div>
                                <p>STAR WARS</p>
                                <h4>STORMTROOPER LIGHTSABER</h4>
                                <p>$ 1799,99.-</p>
                                <p>3 CUOTAS SIN INTERÉS</p>
                            </div>
                        </a>
                    </article>
                </li>
                <li>
                    <article>
                        <a href="">
                            <picture>
                                <img src="../image/multimedia/pokemon/pidgeotto-1.webp" alt="Figura coleccionable de pidgeotto de la serie Pokemon">
                            </picture>
                            <div>
                                <p>POKEMON</p>
                                <h4>PIDGEOTTO</h4>
                                <p>$ 1799,99.-</p>
                                <p>3 CUOTAS SIN INTERÉS</p>
                            </div>
                        </a>
                    </article>
                </li>
                <li>
                    <article>
                       <a href="">
                        <picture>
                               <img src="../image/multimedia/harry-potter/luna-1.webp" alt="Figura coleccionable de Lune Lovegood de la pelicula harry-potter">
                        </picture>
                        <div>
                            <p>HARRY POTTER</p>
                            <h4>LUNA LOVEGOOD LION MASK</h4>
                            <p>$ 1799,99.-</p>
                            <p>3 CUOTAS SIN INTERÉS</p>
                        </div>
                       </a>
                    </article>
                </li>
            </ul>
        </section>
    </main>
</asp:Content>
