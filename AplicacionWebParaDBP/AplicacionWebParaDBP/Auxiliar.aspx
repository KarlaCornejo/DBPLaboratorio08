<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auxiliar.aspx.cs" Inherits="AplicacionWebParaDBP.Auxiliar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@ViewData["Title"] - MiPrimeraAPI</title>
    <!-- Referencias a Bootstrap y otros estilos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <link rel="stylesheet" href="site.css" asp-append-version="true" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <script src="site.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <form id="miFormulario" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <header>
            <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
                <div class="container-fluid">
                    <a class="navbar-brand" href="WebForm1.aspx">MiPrimeraAPI</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
                        <ul class="navbar-nav flex-grow-1">
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="WebForm1.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-dark" href="Privacy.aspx">Privacy</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container">
            <h2>Registro de Alumno</h2>
            <h3>Mostrar desde Sesiones</h3>
            <!-- Espacios para mostrar la información de sesión -->
            <div>
                <strong>Nombre:</strong>
                <asp:Label ID="lblNombre" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Apellidos:</strong>
                <asp:Label ID="lblApellidos" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Sexo:</strong>
                <asp:Label ID="lblSexo" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Direccion:</strong>
                <asp:Label ID="lblDireccion" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Ciudad:</strong>
                <asp:Label ID="lblCiudad" runat="server" CssClass="text-info"></asp:Label>
            </div>

        </div>
        <div class="container">
            <h2>Registro de Alumno</h2>
            <h3>Mostrar desde la Cookies desde ASP</h3>
            <!-- Agregar el botón para mostrar las cookies -->
            <div>
                <asp:Button ID="btnMostrarCookies" runat="server" Text="Mostrar Cookies" OnClick="btnMostrarCookies_Click" CssClass="btn btn-primary" />
            </div>
            <!-- Espacios para mostrar la información de sesión -->
            <div>
                <strong>Nombre:</strong>
                <asp:Label ID="Label1" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Apellidos:</strong>
                <asp:Label ID="Label2" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Sexo:</strong>
                <asp:Label ID="Label3" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Direccion:</strong>
                <asp:Label ID="Label4" runat="server" CssClass="text-info"></asp:Label>
            </div>
            <div>
                <strong>Ciudad:</strong>
                <asp:Label ID="Label5" runat="server" CssClass="text-info"></asp:Label>
            </div>

        </div>
        <div class="container">
            <h2>Registro de Alumno</h2>
            <h3>Mostrar cookies desde JS</h3>
            <!-- Agregar el botón para mostrar las cookies -->
            <div>
                <input type="button" value="Mostrar Cookies" onclick="mostrarCookies()" class="btn btn-primary" />
            </div>
            <!-- Espacios para mostrar la información de las cookies -->
            <div>
                <strong>Nombre:</strong>
                <span id="nombre" class="text-info"></span>
            </div>
            <div>
                <strong>Apellidos:</strong>
                <span id="apellidos" class="text-info"></span>
            </div>
            <div>
                <strong>Sexo:</strong>
                <span id="sexo" class="text-info"></span>
            </div>
            <div>
                <strong>Direccion:</strong>
                <span id="direccion" class="text-info"></span>
            </div>
            <div>
                <strong>Ciudad:</strong>
                <span id="ciudad" class="text-info"></span>
            </div>
        </div>

        <script>
            function mostrarCookies() {
                // Function to retrieve the value of a cookie
                function getCookie(cookieName) {
                    const name = cookieName + "=";
                    const decodedCookie = decodeURIComponent(document.cookie);
                    const cookieArray = decodedCookie.split(';');
                    for (let i = 0; i < cookieArray.length; i++) {
                        let cookie = cookieArray[i];
                        while (cookie.charAt(0) === ' ') {
                            cookie = cookie.substring(1);
                        }
                        if (cookie.indexOf(name) === 0) {
                            return cookie.substring(name.length, cookie.length);
                        }
                    }
                    return "";
                }

                // Retrieve and display the values from cookies
                document.getElementById('nombre').innerText = getCookie('Nombre');
                document.getElementById('apellidos').innerText = getCookie('Apellido');
                document.getElementById('sexo').innerText = getCookie('Sexo');
                document.getElementById('direccion').innerText = getCookie('Direccion');
                document.getElementById('ciudad').innerText = getCookie('Ciudad');
            }
        </script>

        <footer class="border-top footer text-muted">
            <div class="container">
                &copy; 2023 - MiPrimeraAPI - <a href="Privacy.aspx">Privacy</a>
            </div>
        </footer>
    </form>
</body>
</html>
