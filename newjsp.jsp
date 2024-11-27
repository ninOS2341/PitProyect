<%-- 
    Document   : newjsp
    Created on : 4 oct 2024, 18:16:56
    Author     : ninOS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- AREA DE UN CIRCULO --%>
        
        <h1>Practica 1: radio de un circulo</h1>
        <% double radio = 4.5; %>
        <p>El area del circulo es igual: <%= Math.PI*Math.pow(radio, 2)%></p>
        <hr>
        
        <%-- VERIFICACION --%>
        
        <h1>Practica 2: nombre  edad</h1>
        <% String nombre = "Juan"; 
            int edad = 18;
        %>
        <p>Hola<%= nombre%> ¿ERES MAYOR DE EDAD?<%= edad <=18%></p>
        <hr>
        
        <%-- FECHAS --%>
        <h1>Practica 3: fecha</h1>
        <p>Fecha sin formato</p>
        <%= new java.util.Date()%>
        <br>
        <br>
        <p>Fecha con formato</p>
        <%= new java.text.SimpleDateFormat("dd/MM/YYYY" ).format(new java.util.Date()) %>
        <hr>
        
        <%-- AREA DE UN CUADRADO --%>
        <h1>Practica 4: Area de un cuadrado</h1>
        <p>El lado del cuadrado mide 4cm</p>
        <% int lado = 4; %>
        <p>Su area es igual a: <%= lado*lado %></p>
        <hr>
        
        <%-- Dolares Y  Euros --%>
        <h1>Practica 5: Dolares a euros Y Euros a dolares </h1>
        <p>El dolar vale: 0.91 euros</p>
        <p>El euro vale: 1.10 dolares</p>
        <% double dolar = 0.91; %>
        <% double euro = 1.10; %>
        
        <p>71 dolares son igual a: <%= dolar*71 %> euros</p>
        <p>51 euros igual a: <%= euro*51 %> dolares</p>
        <hr>
        
        <%-- Contador de caracteres --%>
        <h1>Practica 6: Contador de caracteres.</h1>
        <% String palabra = "Un dia mas Y no acaba el mundo"; %>
        <p> la palabra <%= palabra %> contiene <%= palabra.length() %> caracteres</p>
        <hr>
        
        <%-- Promedio --%>
        <h1>Practica 7: Promedio de 3 calificaciones</h1>
        <% double cal1=5.6 , cal2=6.4,cal3=8.4; %>
        <p>El promedio de <%=cal1%>, <%=cal2%> Y <%=cal3%> es igual a <%= (cal1+cal2+cal3)/3 %> </p>
    </body>
</html>
