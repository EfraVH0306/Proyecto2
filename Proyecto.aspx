<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proyecto.aspx.cs" Inherits="Proyecto2.Proyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Veterinaria UPI</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #343a40 !important;
        }
        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #343a40;
        }
        button.btn-primary {
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #007bff !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Veterinaria UPI</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Reportes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Salir</a>
                    </li>
                </ul>
            </div>
        </nav>

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Inicio" Value="Inicio"></asp:MenuItem>
                <asp:MenuItem Text="Reportes" Value="Reportes">
                    <asp:MenuItem Text="Reporte de Usuarios" Value="ReporteUsuarios"></asp:MenuItem>
                    <asp:MenuItem Text="Reporte de Mascotas" Value="ReporteMascotas"></asp:MenuItem>
                    <asp:MenuItem Text="Reporte de Control de Citas" Value="ReporteCitas"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Salir" Value="Salir"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
