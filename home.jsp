<%-- 
    Document   : home.jsp
    Created on : Jun 26, 2024, 4:54:10 PM
    Author     : AS
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.s4a.Dao.ExampleDao" %>
<%@page import="com.s4a.Entity.ExampleEntity"%>
<%@page import="java.util.*" %>
<%@page import="com.s4a.Helper.ProductFactory"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    
    
        <%
            ExampleDao d=new ExampleDao(ProductFactory.getFactory());
            List<ExampleEntity> t=d.showExample();
         %>
            <table>
                <tr>
                    <th>
                        Id
                    </th>
                    <th>
                        Name
                    </th>
                    <th>action
                    </th>
                </tr>
                <%
                    for(ExampleEntity s:t){
                    
                 %>
                 <tr>
                      <td>
                     <%=s.getId()%>
                      </td>
                      <td>
                          <form action="UpdateServlet"method="post">
                              <input type="hidden"value="<%= s.getId()%>"name="id">
                                <input type="text"value="<%= s.getName()%>"name="UpdateName">
                                <input type="submit"value="Update">
                          </form>
                              
                      </td>
               
                 <td>
                     <a href ="RecordDeleteServlet?id=<%=s.getId()%>">delete</a>
                 </td>
               </tr>
                 
                 <% } %>
                 
            </table>
          
    </body> 
</html>
