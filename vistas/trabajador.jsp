<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width-divice-width, initial-scale-1,maximun-sale-1">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="CSS/VistaEmpleados.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>πt</title>
</head>
<body>
    <%
        HttpSession sesion = request.getSession();
        if(sesion.getAttribute("logueado") == null ||sesion.getAttribute("logueado").equals("0")){
            response.sendRedirect("Pitproject/login.jsp");
        }
    %>
    
    <div class="main-content">
        <header>
            <h2>
                <label id="imagenpitcorps">
                    <img src="/imagenes/Azztech.png" alt="" width="40px" height="40px" >THE PIT CORPS
                </label>
                <span id="frase">Lidera con visión, inspira con acción.</span>
            </h2>
            <!-- Titulo a evaluacion de todo el equipo pero yo opino que n -->
            <!-- <div id="Titulo"> 
                <h1>Empleados</h1>
            </div>-->

            <div id="Informacion_del_usario" >
                <div id="Back"  onclick="MenuinfoDentro()">
                    <img src="/imagenes/2.jpg" width="50px" height="50px" alt="">
                    <h4><%= sesion.getAttribute("user")%></h4>
                </div>
            </div>
            <!--<div class="user-wrapper">
                <img src="/imagenes/2.jpg" width="40px" height="40px" alt="">
                <div>
                    
                </div>
            </div>-->
        </header>
    <!-- CONTENIDOPRINCIPAL DELA PAGINA  -->
        <main>

            <!-- son los primeros cuadritos de hasta arriba  -->
            <div class="cards">
                <div class="card-single-sueldo">
                    <div>
                        <h2 style="color: white;font-size: 1.7rem;">¡Bienvenid☺!</h2>
                        <span style="color: aliceblue;">"Tejemos calidad, vestimos tus sueños."</span>
                    </div>
                    <div>
                        
                    </div>
                </div>

                <div class="card-single">
                    <div>
                        <h2 style="font-size: 1.7rem;">7:00 AM - 9:00 PM</h2>
                        <span>Horario</span>
                    </div>
                    <div>
                        <span class="las la-clipboard" style="font-size: 4rem;"></span>
                    </div>
                </div>
                <div class="card-single-sueldo">
                    <div>
                        <h2 style="color: white; font-size: 2rem;">$100,000.⁰⁰</h2>
                        <span style="color: aliceblue;">Sueldo Semanal</span>
                    </div>
                    <div>
                        <span class="las la-wallet" style="color: white; font-size: 4rem;"></span>
                    </div>
                </div>
<!-- lo del clima  -->
                <div class="card-clima">
                    <div class="container-clima">
                        <div class="cloud front-clima">
                            <span class="left-front-clima"></span>
                            <span class="right-front-clima"></span>
                        </div>
                        <span class="sun-clima sunshine-clima"></span>
                        <span class="sun-clima"></span>
                        <div class="cloud-clima back-cima">
                            <span class="left-cliam-back-clima"></span>
                            <span class="right-clima-back-clima"></span>
                        </div>
                        </div>

                        <div class="card-header-clima">
                        <span>Messadine, Susah<br>Tunisia</span>
                        <span>March 13</span>
                        </div>

                        <span class="temp-clima">23°C</span>

                        
                </div>

                

            </div>
            <!-- la tabla  -->
            <div class="recent-grid">
                <div class="projects">
                    <div class="card">
                        <div class="card-header">
                            <h3>Tareas</h3>

                            <button> Ver más 
                                <span class="las la-arrow-right"></span>
                            </button>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table width="100%">
                                    <thead>
                                        <tr>
                                            <td>Título de la Tarea</td>
                                            <td>Departamento</td>
                                            <td>Estatus</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Cambio de aceite en maquinaria</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status purple"></span>
                                                Completada
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Inspección de equipos eléctricos</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status pink"></span>
                                                En progreso
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Reparación de bandas transportadoras</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status orange"></span>
                                                Pendiente
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Limpieza de ventiladores industriales</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status purple"></span>
                                                Completada
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Verificación de sistemas hidráulicos</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status pink"></span>
                                                En progreso
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Mantenimiento preventivo mensual</td>
                                            <td>Mantenimineto</td>
                                            <td>
                                                <span class="status orange"></span>
                                                Pendiente
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Reporte de productividad semanal</td>
                                            <td>Administración</td>
                                            <td>
                                                <span class="status purple"></span>
                                                Completada
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Diagnóstico de fallas mecánicas</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status pink"></span>
                                                En progreso
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Ajuste de sensores de maquinaria</td>
                                            <td>Mantenimiento</td>
                                            <td>
                                                <span class="status orange"></span>
                                                Pendiente
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Calendario -->
                <div class="customer">
                    <span style="font-size: 1.5rem;padding-left:1.5rem">Calendario de Trabajo</span>
                    <div class="horario">
                        <iframe src="https://calendar.google.com/calendar/embed?src=ed731c1ab9ed28fec412558b369a586d26312953783f3615acb70e2a78ade2c0%40group.calendar.google.com&ctz=America%2FMexico_City" style="border: 0" width="450" height="400" frameborder="0" scrolling="no"></iframe>
                    </div>
                </div>
            </div>

        </main>
    </div>
</body>
</html>