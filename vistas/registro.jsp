<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="CSS/vastyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <script src="JS/animaciones.js"></script>
    <title>Vista Administrador</title>

</head>

<body>


    <div id="Pagp">

        <div id="Menu" class="menuCon" onmouseenter="MenuDentro()" onmouseleave="MenuFuera()">



            <p id="TituloMenu">Menú</p>
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
                            <p>Nombre Arbuz</p>
                        </div>
                    </div>

                </div>

            </div>

            <main id="Principal" onclick="eleminarInfo()">
                <div id="Seccion">
                    <h2 id="NSeccion" class="Texto">Registro</h2>
                    <h4 id="area" class="Texto">Usuarios</h4>
                </div>



                <form id="Registro" action="registro.jsp" method="post">
                    <div id="formularioT">
                        <h2>Registro Para Usuarios (RPU)</h2>
                    </div>
                    <div id="formularioC">
                        <div>
                            <label for="idusuario">ID de Usuario</label>
                            <input type="number" id="idusuario" name="idusuario" required>
                        </div>
                        <div>
                            <label for="user">Usuario</label>
                            <input type="text" id="user" name="user" maxlength="20" required>
                        </div>
                        <div>
                            <label for="password">Contraseña</label>
                            <input type="text" id="password" name="password" maxlength="15" required>
                        </div>
                        <div>
                            <label for="permiso">¿Administrador?</label>
                            <input type="text" id="permiso" name="permiso" maxlength="2" required>
                        </div>
                         <div>
                            <label for="user">ID de Contrato</label>
                            <input type="number" id="idcontrato" name="idcontrato" required>
                        </div>
                         <div>
                            <label for="contrato">Tipo de contrato</label>
                            <input type="text" id="contrato" name="contrato" maxlength="50" required>
                        </div>
                         <div>
                            <label for="puesto">Puesto</label>
                            <input type="text" id="user" name="user" maxlength="50" required>
                        </div>
                         <div>
                            <label for="funciones">Funciones</label>
                            <input type="text" id="funciones" name="funciones" maxlength="200" required>
                        </div>
                         <div>
                            <label for="tiempo">Lapso de tiempo</label>
                            <input type="text" id="tiempo" name="tiempo" maxlength="20" required>
                        </div>
                         <div>
                            <label for="salario">Salario</label>
                            <input type="number" id="salario" name="salario" required>
                        </div>
                         <div>
                            <label for="pagos">Periodicidad de pagos</label>
                            <input type="text" id="pagos" name="pagos" maxlength="20" required>
                        </div>
                         <div>
                            <label for="prestaciones">Prestaciones</label>
                            <input type="text" id="prestaciones" name="prestaciones" maxlength="20" required>
                        </div>
                         <div>
                            <label for="estado">Estado</label>
                            <input type="text" id="estado" name="estado" maxlength="20" required>
                        </div>
                        <!--<div>
                            <label for="foto">Foto</label>
                            <input type="file" id="foto" name="foto" accept="image/*">
                        </div>-->
                        <div>
                            <label for="nombre">Nombre(s)</label>
                            <input type="text" id="nombre" name="nombre" maxlength="50" required>
                        </div>
                        <div>
                            <label for="apellido">Apellidos</label>
                            <input type="text" id="apellido" name="apellido" maxlength="100" required>
                        </div>
                        <div>
                            <label for="direccion">Direccion</label>
                            <input type="text" id="direccion" name="direccion" maxlength="200" required>
                        </div>
                        <div>
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" maxlength="100" required>
                        </div>
                        <div>
                            <label for="telefono">Teléfono</label>
                            <input type="text" id="telefono" name="telefono" maxlength="15" required>
                        </div>
                        <div>
                            <label for="edad">Edad</label>
                            <input type="number" id="edad" name="edad" max="99" required>
                        </div>
                        <div>
                            <label for="curp">CURP</label>
                            <input type="text" id="curp" name="curp" maxlength="18" required>
                        </div>
                        <div>
                            <label for="nss">Numero de Seguro Social</label>
                            <input type="text" id="nss" name="nss"maxlength="12" required>
                        </div>
                         <div>
                            <label for="rfc">RFC</label>
                            <input type="text" id="rfc" name="rfc"maxlength="13" required>
                        </div>
                    </div>
                    <div id="formularioP"><button type="submit" name="enviar">Guardar Empleados</button></div>
                </form>
            </main>
        </section>
    </div>
    <% if(request.getParameter("enviar") != null){
            String usuarioId = request.getParameter("idusuario");
            String usuario = request.getParameter("user");
            String password = request.getParameter("password");
            String admin = request.getParameter("permiso");
            String contratoId = request.getParameter("idcontrato");
            String contrato = request.getParameter("contrato");
            String puesto = request.getParameter("puesto");
            String funciones = request.getParameter("funciones");
            String tiempo = request.getParameter("tiempo");
            String salario = request.getParameter("salario");
            String pagos = request.getParameter("pagos");
            String prestaciones = request.getParameter("prestaciones");
            String estado = request.getParameter("estado");
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellido");
            String direccion = request.getParameter("direccion");
            String correo = request.getParameter("email");
            String telefono = request.getParameter("telefono");
            int edad = Integer.parseInt(request.getParameter("edad"));
            String curp = request.getParameter("curp");
            String rfc = request.getParameter("rfc");
            String nss = request.getParameter("nss");
            
            try{
               
                Connection conexion=null;
                Statement st=null;
                Statement at=null;
                Statement dt=null;
                
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/pitdatabase?user=root&password=12345678");
                st = conexion.createStatement();
                at = conexion.createStatement();
                dt = conexion.createStatement();
                st.executeUpdate("insert into usuarios(user, password, admin) " +
                 "VALUES ('" + usuario + "', '" + password + "', '" + admin + "');");
                at.executeUpdate("insert into contrato(tipodecontrato, puesto, funciones, lapso_tiempo, salario, periodo_pagos, prestaciones, estado) " +
                 "VALUES ('" + contrato + "', '" + puesto + "', '" + funciones + "', '" + tiempo + "', '" + salario + "', '" + pagos + "', '" + prestaciones + "', '" + estado + "');");
                dt.executeUpdate("insert into empleados(nombre, apellidos, edad, direccion, email, telefono, curp, rfc, nss, contrato_id_contrato, usuarios_id_usuario) " +
                 "VALUES ('" + nombre + "', '" + apellidos + "', " + edad + ", '" + direccion + "', '" + correo + "', '" + telefono + "', '" + curp + "', '" + rfc + "', '" + nss + "', '" + contratoId + "', '" + usuarioId + "');");

                 
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            }catch(Exception e){
                out.print(e);
            }
        }
    %>
</body>
</html>