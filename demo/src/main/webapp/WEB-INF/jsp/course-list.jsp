<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>Courses by Student</h2>

<c:forEach var="c" items="${courses}">
    <p>
        Course: ${c.title} |
        Student: ${c.student.name}
    </p>
</c:forEach>