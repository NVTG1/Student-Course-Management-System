<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Action</th>
</tr>

<c:forEach var="s" items="${students}">
<tr>
<td>${s.name}</td>
<td>${s.email}</td>
<td><a href="/edit/${s.id}">Edit</a></td>
</tr>
</c:forEach>

</table>

<a href="/add">Add Student</a>