<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Producto" %>

<h2>Lista de Productos</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Nombre</th>
    <th>Cantidad</th>
</tr>

<%
ArrayList<Producto> lista = (ArrayList<Producto>) request.getAttribute("productos");

if(lista != null){
    for(Producto p : lista){
%>
<tr>
    <td><%= p.getId() %></td>
    <td><%= p.getNombre() %></td>
    <td><%= p.getCantidad() %></td>
</tr>
<%
    }
}
%>
</table>

<br>
<a href="index.jsp">Regresar</a>