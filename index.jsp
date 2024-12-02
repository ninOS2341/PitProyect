<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<html lang="es">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <link rel="stylesheet" href="estilos.css">

        <title>Login</title>

    </head>

    <body>
        <div id="Fondo"></div>
        <div id="Contendor">

            <div id="Bienvenida">

                <h2 class="welcome">Bienvenido</h2>
                <p class="welcome">Inicia sesión para ingresar a la página</p>

            </div>

            <form id="Formulario" action="" method="post">

                <div id="Titulo">

                    <h1>
                        Inicio de Sesión
                    </h1>

                </div>

                <div id="Cuerpo">

                    <p>Número de Seguridad</p>
                    <i class="fa-solid fa-lock"></i><input id="NumeroS"
                        class="inputs"
                        type="text" name = "NumeroS" placeholder="Número de Serie" required>
                    <p>Contraseña</p>
                    <i class="fa-solid fa-key"></i><input id="Pass"
                        class="inputs"
                        type="password" name ="pass" placeholder="Contraseña">

                </div>

                <div id="Footer">

                    <input class="boton" type="submit" name="enviar" value="Siguiente">

                </div>
                 <% if(request.getParameter("enviar") != null){
            
                        int NumeroS = Integer.parseInt(request.getParameter("NumeroS"));
                        String pass = request.getParameter("pass");
            
            
                        try{
               
                            Connection conexion=null;
                            Statement st=null;
                
                            Class.forName("com.mysql.jdbc.Driver");
                            conexion = DriverManager.getConnection("jdbc:mysql://localhost/pitdatabase?user=root&password=12345678");
                            st = conexion.createStatement();
                            st.executeQuery("select * from usuarios where id_usuario ='"+NumeroS+"' and password = '"+pass+"';"); 
                            request.getRequestDispatcher("vistas/admin.jsp").forward(request, response);
                        }catch(Exception e){
                
                            out.println(e);
                        }
                    }
                %>

            </form>
        </div>

    </body>

</html>