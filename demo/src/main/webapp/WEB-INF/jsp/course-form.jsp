<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>Add Course</h2>

<form action="/save-course" method="post">

    Title: <input type="text" name="title"/><br><br>

    Student:
    <select name="student.id">
        <c:forEach var="s" items="${students}">
            <option value="${s.id}">${s.name}</option>
        </c:forEach>
    </select>

    <br><br>
    <button type="submit">Save</button>
</form>