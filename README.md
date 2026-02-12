# Student Grade JSP Web Application

## Project Overview
This project is a **web-based Student Grade Calculation system** built using **JSP (JavaServer Pages)**.  
It allows users to enter student marks and calculates their grade dynamically on the web page.

This project demonstrates basic **Java**, **JSP scripting**, **HTML forms**, and **web application development concepts** suitable for beginners and interview demonstrations.

---

## Features
- User-friendly **input form** to enter marks.
- Calculates grades using **Java if-else logic**.
- Displays results dynamically on the **web page**.
- Built with **JSP**, **HTML**, and **Java**.
- Fully functional **student grading system** for demo purposes.

---

## Technologies Used
- **Java** – Core programming language
- **JSP (JavaServer Pages)** – Dynamic web content
- **HTML** – For creating forms and structure
- **Apache Tomcat** – Web server to deploy JSP
- **Git & GitHub** – Version control and project hosting

---


## Marks to Grade Mapping
| Marks Range      | Grade       |
|-----------------|------------|
| 90 – 100        | A          |
| 75 – 89         | B          |
| 60 – 74         | C          |
| 40 – 59         | D          |
| 0 – 39          | Fail       |

---
##Code Explanation

The project consists of a single JSP page:

#Form Input:

<form>
    Enter Marks: <input type="text" name="marks"><br><br>
    <input type="submit" value="Check Grade">
</form>


The user enters the marks.

When submitted, the same page handles the request using request.getParameter().

Fetching Input in JSP:

String m = request.getParameter("marks");


Retrieves the value of the marks input from the form.

Checking Input and Calculating Grade:

if(m != null){
    int marks = Integer.parseInt(m);
    String grade = "";

    if(marks >= 90){
        grade = "A Grade";
    } else if(marks >= 75){
        grade = "B Grade";
    } else if(marks >= 60){
        grade = "C Grade";
    } else if(marks >= 40){
        grade = "D Grade";
    } else {
        grade = "Fail";
    }
}


##Converts the input from String to int.

Uses if-else statements to determine the grade.

##Displaying the Result:

<h4>Grade: <%= grade %></h4>

Outputs the grade dynamically on the page using JSP expression tags.
---

## How to Run
1. Clone the repository:

```bash
git clone https://github.com/yourusername/StudentGradeJSP.git
