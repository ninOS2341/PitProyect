<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">

    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="CSS/vastyle.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <script src="JS/animaciones.js"></script>
        <title>Vista Administrador</title>
        
    </head>

    <body>
        <%
            HttpSession sesion = request.getSession();
            if(sesion.getAttribute("logueado") == null ||sesion.getAttribute("logueado").equals("0")){
                response.sendRedirect("Pitproject/login.jsp");
            }
            Connection conexion=null;
            Statement st=null;
            ResultSet rs=null;
        %>

        <div id="Pagp">

            <div id="Menu" class="menuCon" onmouseenter="MenuDentro()"
                onmouseleave="MenuFuera()">

                <p id="TituloMenu">
                    Menú
                </p>

            </div>

            <section id="Dashboard">
                <div id="Cabeza">
                    <div id="Titulo">
                        <h1>Administradores</h1>
                    </div>

                    <div id="Info">
                        <div id="Back" onclick="MenuinfoDentro()">
                            <div id="Foto"></div>
                            <div id="Nombre">
                                <p><%= sesion.getAttribute("user")%></p>
                            </div>
                        </div>

                    </div>

                </div>

                <main id="Principal" onclick="eleminarInfo()">
                    <div id="Seccion">
                        <h2 id="NSeccion" class="Texto">Resumen</h2>
                        <h4 id="area" class="Texto">Empledados</h4>
                    </div>
                    
                    <div id="contenedor">
                        <table class="estiloT">
                            <thead>
                                <tr>
                                    <th>Empledados</th>
                                    <th>Estado</th>
                                    <th>Jornada</th>
                                   
                                    <th>Departamento</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try{

                                    Class.forName("com.mysql.jdbc.Driver");
                                    conexion = DriverManager.getConnection("jdbc:mysql://localhost/pitdatabase?user=root&password=12345678");
                                    st=conexion.createStatement();
                                    rs=st.executeQuery("SELECT * FROM `empleados`");
                                    
                                    while(rs.next()){
                                        %>
                                             <tr>
                                                <td>
                                                    <div class="infoEmpleado">
                                                        <img src="https://via.placeholder.com/40" alt="Empleado">
                                                        <span><%out.print(rs.getString(2));%></span>
                                                    </div>
                                                </td>
                                                <td><span class="estado online">Online</span></td>
                                                <td>7h 40 min</td>

                                                <td><%out.print(rs.getString(7));%></td>
                                            </tr>
                                        <%
                                    }
                                    }catch(Exception e){
                                        out.print("Error MySQL" + e);
                                    }
                                %> 
                               
                            </tbody>
                        </table>
                    </div>

                </main>

            </div>

        </div>


    </body>

</html>
