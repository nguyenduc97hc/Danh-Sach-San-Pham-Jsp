<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Custormer" %><%--
  Created by IntelliJ IDEA.
  User: nguyenduc97hc
  Date: 18/07/2019
  Time: 08:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hien thi danh sach khach hang</title>
  </head>
  <body>
  <%
      ArrayList<Custormer> list = new ArrayList<>();
      list.add(new Custormer("Nguyen Minh Duc","01/09/1997" ,"Hai Duong" , "f"));
      list.add(new Custormer("Nguyen Minh Quan", "20/06/1999", "Ha Noi", "a"));
      list.add(new Custormer("Mai Van Hoan", "20/08/1983", "Ha Noi", "b"));
      list.add(new Custormer("Nguyen Van Nam", "21/08/1983", "Bac Giang", "c"));
      request.setAttribute("listCustomers", list);

  %><h1><b>Danh Sach Khach Hang</b></h1>
  <table border="1">
      <tr>
          <td>Ten</td>
          <td>Ngay sinh</td>
          <td>Dia chi</td>
          <td>Anh</td>
      </tr>
      <c:forEach var="Custormar" items="#{listCustomers}">
        <tr>
            <td><c:out value="${Custormar.name}"/></td>
            <td><c:out value="${Custormar.birthday}"/></td>
            <td><c:out value="${Custormar.address}"/></td>
            <td><c:out value="${Custormar.image}"/></td>
        </tr>
      </c:forEach>
  </table>

  </body>
</html>
