using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestor_Clinico_Colegio
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
<<<<<<<< HEAD:Gestor_Clinico_Colegio/Paginas/Login.aspx.cs
        protected void Login1_Authenticate1_Click(object sender, AuthenticateEventArgs e)
        {
            Response.Redirect("Agenda.aspx");

========
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Response.Redirect("~../Buscador.aspx");
>>>>>>>> 5fcb3d45a9aaa3340acefa7576ab4305b715d45f:Gestor_Clinico_Colegio/Paginas/Default.aspx.cs
        }
    }
}