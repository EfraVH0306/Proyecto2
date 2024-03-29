using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Proyecto2
{
    public partial class Proyecto : System.Web.UI.Page
    {
        private SqlConnection connection;
        private string connectionString = "Data Source=LAPTOP_ASUS\\SQLEXPRESS01;Initial Catalog=Veterinaria_UPI;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InicializarComponentes();
            }
        }

        private void InicializarComponentes()
        {
            
            this.Title = "Veterinaria UPI";

            
            Menu menuPrincipal = new Menu();
            MenuItem menuInicio = new MenuItem("Inicio");
            MenuItem menuReportes = new MenuItem("Reportes");
            MenuItem subMenuReporteUsuarios = new MenuItem("Reporte de Usuarios");
            MenuItem subMenuReporteMascotas = new MenuItem("Reporte de Mascotas");
            MenuItem subMenuReporteCitas = new MenuItem("Reporte de Control de Citas");
            MenuItem menuSalir = new MenuItem("Salir");

          
            menuInicio.NavigateUrl = "~/Inicio.aspx";
            subMenuReporteUsuarios.NavigateUrl = "~/ReporteUsuarios.aspx";
            subMenuReporteMascotas.NavigateUrl = "~/ReporteMascotas.aspx";
            subMenuReporteCitas.NavigateUrl = "~/ReporteCitas.aspx";
            menuSalir.NavigateUrl = "~/Salir.aspx";

           
            menuReportes.ChildItems.Add(subMenuReporteUsuarios);
            menuReportes.ChildItems.Add(subMenuReporteMascotas);
            menuReportes.ChildItems.Add(subMenuReporteCitas);

           
            menuPrincipal.Items.Add(menuInicio);
            menuPrincipal.Items.Add(menuReportes);
            menuPrincipal.Items.Add(menuSalir);

            
            form1.Controls.Add(menuPrincipal);

            
            try
            {
                connection = new SqlConnection(connectionString);
                connection.Open();
            }
            catch (Exception ex)
            {
                Response.Write("Error al intentar conectar con la base de datos: " + ex.Message);
            }
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            if (connection != null && connection.State == ConnectionState.Open)
            {
                connection.Close();
                connection.Dispose();
            }
        }
    }
}
