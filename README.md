# Employee Management System

This is a Java-based Employee Management System project, structured as an Eclipse Dynamic Web Project. It includes servlets, JSPs, and uses standard Java EE architecture for managing employee data.  
[Live Demonstration](https://www.linkedin.com/posts/shanmukha-poorna-chand-adapaka_innovation-networking-careers-activity-7321132567133360129-KZR1?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEL2888BrEO1x91-43AvReaMw80LinPyy-I)


## Features

- Add, update, delete, and view employee details
- Web interface using JSP and HTML
- Servlet-based backend handling CRUD operations
- Uses Eclipse Dynamic Web Project structure

## Project Structure

- `src/` - Contains Java source code (servlets and logic)
- `WebContent/` - Contains JSP files, HTML, CSS, and web.xml deployment descriptor
- `.settings/`, `.classpath`, `.project` - Eclipse-specific configuration files

## How to Run

1. Import the project into Eclipse as an existing Dynamic Web Project.
2. Make sure Apache Tomcat is configured in your Eclipse IDE.
3. Deploy the project to the server.
4. Run the application and access it via browser (e.g., `http://localhost:8080/Employee-Management-System`)

## SQL Commands

1. Crate a database
```
CREATE DATABASE EMSPROJECT;

```
2. Then shift to the EMSPROJECT

```
USE EMSPROJECT;
```

3. Table creation 
```
CREATE TABLE EMPLOYEE(
    EMAIL VARCHAR(50) PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    PASSWORD VARCHAR(50) NOT NULL,
    AGE INT NOT NULL,
    GENDER VARCHAR(10),
    MOBILE VARCHAR(10),
    DEPARTMENT VARCHAR(50),
    ADDRESS VARCHAR(500)
);

```

4. Check the Table Description 
```
DESC EMPLOYEE;
```
5. Then it describes the table in the tabular form
```
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| email      | varchar(50)  | NO   | PRI | NULL    |       |
| name       | varchar(50)  | NO   |     | NULL    |       |
| password   | varchar(50)  | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| gender     | varchar(10)  | YES  |     | NULL    |       |
| mobile     | varchar(10)  | YES  |     | NULL    |       |
| department | varchar(50)  | YES  |     | NULL    |       |
| address    | varchar(500) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

```

## Requirements

- Java JDK 8 or higher
- Eclipse IDE with Dynamic Web Project support
- Apache Tomcat 8+
- MySQL

## Author

Shanmukha Poorna  Chand. A   
Shanmukhapoornachand14316@gmail.com  
[Linkedin](www.linkedin.com/in/shanmukha-poorna-chand-adapaka)

> This project was created for educational purposes to demonstrate a basic web application in Java.
