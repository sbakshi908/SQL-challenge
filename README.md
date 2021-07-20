# SQL Homework - Employee Database: A Mystery in Two Parts



## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering

3. Data Analysis

Note: You may hear the term "Data Modeling" in place of "Data Engineering," but they are the same terms. Data Engineering is the more modern wording instead of Data Modeling.

## Pre_reqs:
6 csv files with employee data: employees.csv,titles.csv,salaries.csv,dept_emp.csv,departments.csv,dept_manager.csv.

## Steps Takes

First in order to create the schema, used ER diagram on [http://www.quickdatabasediagrams.com]. Thie diagrams are created based on the relationship found between the CSV files (which are primary, foreign keys, etc).

the result is exported in schema format and executed to posgres to create the relevant tables

Once the empty tables are avaiable, import the CSV's in following order: titles.csv, departments.csv, employees.csv, dept_emp.csv, dept_manager.csv and salaries.csv

Execure various queries to practice SQL synax,  and  joins. (questions are listed below, the answers can be found in employee_sql)

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


