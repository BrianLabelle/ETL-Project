# ETLProject | Vote - Tax - FIPS
ETL Project | Richard Harris | Brian Labelle

## Background
HarLabs has been tasked with merging data sources from the 2016 Primary Election results with 2014 Salary / Wages.
We used a 3rd data source to merge on the zipcode based on the US County FIPS. FIPS (Federal Information Processing Standards) are a set of standards that describe document processing, encryption algorithms and other information technology standards for use within non-military government agencies and by government contractors and vendors who work with the agencies.


![PewlettHackard](images/ph-logo-trimmed.jpg)


## Technology

In order for us to complete this customer request we utilized:
   - Python
   - Jupyter NoteBooks
   - Postgres
   - Microsoft Excel
   - CSV files
   
## Data Sources
  - kaggle
  
  
[**Summaried below. Additional details available reviewing this document.**](https://github.com/BrianLabelle/pewletthackard/blob/master/2019-PH-SQL-Employee-Database.docx)


# 3. Data Analysis

Once we have completed the imports, we need to address the following:


**1. List the following details of each employee: 
employee number, last name, first name, gender, and salary.**

            select e.emp_no, e.last_name, e.first_name, e.gender, s.salary from employees e
            left join salaries s on s.emp_no = e.emp_no 
            order by emp_no


[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-01.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-01.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-001](images/da-001.jpg)


_________________________________________________________________________________

**2. List employees who were hired in 1986.**
The query with an order by employee number.

            select * from employees
            where date_part('year',hire_date) = 1986
            order by emp_no


[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-02-Order-By-Emp-No.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-02-Order-By-Emp-No.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-002](images/da-002.jpg)

or order by 1986 then month then day then employee number.

            select * from employees
            where date_part('year',hire_date) = 1986
            order by date_part('month',hire_date), date_part('day',hire_date),emp_no 


[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-02-Order-By-1986-Month-Day-Emp_No.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-02-Order-By-1986-Month-Day-Emp_No.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-002b](images/da-002b.jpg)

_________________________________________________________________________________

**3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.**

            select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date from dept_manager as dm
            join employees e on dm.emp_no = e.emp_no
            join departments d on d.dept_no = dm.dept_no



[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-03-Dept-Managers.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-03-Dept-Managers.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-003](images/da-003.jpg)


_________________________________________________________________________________

**4. List the department of each employee with the following information: employee number, last name, first name, and department name.**

_***Note several employees are possibly in multiple departments and/or have received promotions based date ranges with different titles and departments.**_


            select e.emp_no, e.last_name, e.first_name, d.dept_name from dept_emp as de
            join employees e on de.emp_no = e.emp_no
            join departments d on d.dept_no = de.dept_no
            order by emp_no


[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-04-Dept-Employees.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-04-Dept-Employees.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-004](images/da-004.jpg)


_________________________________________________________________________________

**5. List all employees whose first name is "Hercules" and last names begin with "B."**

            select * from employees
            where first_name = 'Hercules' and last_name LIKE 'B%'
            order by emp_no

[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-05-Hercules-B.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-05-Hercules-B.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-005](images/da-005.jpg)


_________________________________________________________________________________

**6. List all employees in the Sales department, including their employee number, last name, first name, and department name.**

            select e.emp_no, e.last_name, e.first_name, d.dept_name from dept_emp as de
            join employees e on de.emp_no = e.emp_no
            join departments d on d.dept_no = de.dept_no
            where dept_name = 'Sales'
            order by emp_no

[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-06-Sales.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-06-Sales.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-006](images/da-006.jpg)


_________________________________________________________________________________

**7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.**


            select e.emp_no, e.last_name, e.first_name, d.dept_name from dept_emp as de
            join employees e on de.emp_no = e.emp_no
            join departments d on d.dept_no = de.dept_no
            where dept_name in('Sales','Development')
            order by emp_no

[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-07-Sales-Development.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-07-Sales-Development.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-007](images/da-007.jpg)


_________________________________________________________________________________

**8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.**

            select last_name, count(*) as count_name from employees
            group by last_name
            order by count_name desc


[Download CSV File: 2019-08-Pewlett-Hackard-Data-Analysis-Question-08-Last_Name_Count_Desc.csv](https://github.com/BrianLabelle/pewletthackard/blob/master/data_analysis/2019-08-Pewlett-Hackard-Data-Analysis-Question-08-Last_Name_Count_Desc.csv)

Screenshot is a subset of the query data results, download CSV file for entire results.
![Data-Analysis-Screenshot-008](images/da-008.jpg)


_________________________________________________________________________________

 # **BONUS**
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas.

[**Click to view the Jupyter Notebooks Code Cell by Cell**](https://github.com/BrianLabelle/pewletthackard/blob/master/archive/2019-Pewlett-Hackard-Jupyter-Notebook-Cells.txt)

![Data-Analysis-Pandas-DataFrame](images/ph-dataframe-avg-salary-by-title.jpg)


## **Create a bar chart of average salary by title.**

      # plot dataframe for the average salary as a bar chart with the appropriate labels.
      df_salaries2.plot.bar()
      ax = df_salaries2['Average Salary'].plot(kind='bar', title ="Pewlett Hackard | Average Salary by Title", figsize=(15, 10), legend=False, fontsize=12)
      plt.xlabel("Pewlett Hackard | Title")
      plt.ylabel("Pewlett Hackard | Average Salary")

      plt.show()

![Data-Analysis-Bar-Chart](images/ph-notebook-avg-salary-by-title.jpg)


_________________________________________________________________________________

 # **EPILOGUE**
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

**Employee Number : 499942.**

            select * from employees where emp_no = '499942'


![Data-Analysis-Epilogue](images/epilogue.jpg)


_________________________________________________________________________________

# Summary

**Create an image file of your ERD.**
[Download Image](https://github.com/BrianLabelle/pewletthackard/blob/master/images/2019-PH-SQL-ER-Diagram-Using-MySQL.jpg)

**Create a .sql file of your table schemata.**
[Click to view SQL Schema file](https://github.com/BrianLabelle/pewletthackard/blob/master/sql/2019-08-04-PostGres-SQL-Schema.sql)

**Create a .sql file of your queries.**
[Click to view SQL query file](https://github.com/BrianLabelle/pewletthackard/blob/master/sql/2019-Pewlett-Hackard-Data-Analysis-Answers.sql)

**(Optional) Create a Jupyter Notebook of the bonus analysis.**
[click to view Jupyter Notebook file](https://github.com/BrianLabelle/pewletthackard/blob/master/HW-07-Postgres-Employee_Database-Bonus.ipynb)


_________________________________________________________________________________


## Submission

https://github.com/BrianLabelle/pewletthackard

- - -

© 2019 Rice Cookers | Brian Labelle | Sous-Coding Chef
