# ETLProject | Vote - Tax - FIPS
Richard Harris | Brian Labelle

## Background
HarLabs has been tasked with merging data sources from the 2016 Primary Election results with 2014 Salary / Wages.
We used a 3rd data source to merge on the zipcode based on the US County FIPS. FIPS (Federal Information Processing Standards) are a set of standards that describe document processing, encryption algorithms and other information technology standards for use within non-military government agencies and by government contractors and vendors who work with the agencies.


![ETL-Project](images/splash.jpg)


## Technology

In order for us to complete this customer request we utilized:
   - Python
   - Jupyter NoteBooks
   - Postgres
   - Microsoft Excel
   - CSV files
   - QuickDBD ( Postgres ER Diagram )

   - SQL 
   - Adobe Fireworks CS6
   - Adobe Premiere Rush
   
   Attempts where made to use
   - SQLITE
   - SQLAlchemy ( In Depth )
   
## Data Sources ( kaggle: )
  - 2016 Primary Election Results - ( https://www.kaggle.com/benhamner/2016-us-election ) 
  - 2014 Individual Income Tax Statistics - ( https://www.kaggle.com/irs/individual-income-tax-statistics )
  - FIPS - ( https://www.kaggle.com/danofer/zipcodes-county-fips-crosswalk/version/1 )

  
# Instructions
1. Pull down the entire GitHub Project ( if possible )
2. Donnect to your postgres database and create a database called etlproject and run the SQL in the SQL folder of the project to create the FIPS union table ( sql-postgres-fips-table.sql )
3. Swap out the default postgres credentials in the Jupyter Notebook called ETL-Project.ipynb
4. Run the Jupyter Notebook file
5. Make sure you also update your default postgres credentials in the final cell which will...
	a. create a connection to postgres
	b. create a table called electiontaxfips in your connected database, if exist, it replaces it.
	c. creates a output csv file which is then imported into the postgres database.
	
![ETL-Project](images/postgres-output.jpg)

_________________________________________________________________________________




## Submission

https://https://github.com/BrianLabelle/ETL-Project

- - -

© 2019 Rice Cookers | HarLabs | Richard Harris - Brian Labelle | Sous-Coding Chefs
