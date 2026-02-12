<%@ page language="java" contentType="text/html;charset=UTF-8" %>

<html>
<body>

<h3>Student Grade Calculation</h3>

<form>
    Enter Marks: <input type="text" name="marks"><br><br>
    <input type="submit" value="Check Grade">
</form>

<%
String m = request.getParameter("marks");

if(m != null){
    int marks = Integer.parseInt(m);
    String grade = "";

    if(marks >= 90){
        grade = "A Grade";
    }
    else if(marks >= 75){
        grade = "B Grade";
    }
    else if(marks >= 60){
        grade = "C Grade";
    }
    else if(marks >= 40){
        grade = "D Grade";
    }
    else{
        grade = "Fail";
    }
%>

    <h4>Grade: <%= grade %></h4>

<%
}
%>

</body>
</html>
