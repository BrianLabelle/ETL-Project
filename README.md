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
  - 
  
# Instructions
1. pull down the entire GitHub Project
2. connect to your postgres database and create a database called etlproject and run the SQL in the SQL folder of the project to create the FIPS union table ( sql-postgres-fips-table.sql )
3. swap out the default postgres credentials in the Jupyter Notebook called ETL-Project.ipynb
4. run the Jupyter Notebook file
5. make sure you also update your default postgres credentials in the final cell which will...
	a. create a connection to postgres
	b. create a table called electiontaxfips in your connected database, if exist, it replaces it.
	c. creates a output csv file which is then imported into the postgres database.
	
	     

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
