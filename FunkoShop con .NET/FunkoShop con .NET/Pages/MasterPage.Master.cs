﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FunkoShop_con.NET
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedUser"] != null)
            {
                string usuario = Session["loggedUser"].ToString();
                lblWelcome.Text = "Bienvenido " + usuario;
            }
        }
    }
}