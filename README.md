# Project 2 | Crowdfunding ETL

# Team Members:
__________________________________________________________________________________
- Michelle Moody: ERD model, SQL import, Create the Contacts DataFrame, README
- Yiran Zhang: Create the Campaign DataFrame, Import Data into Crowdfunding Database, README
- Sean Daily: Create the Category and Subcategory DataFrames, README
__________________________________________________________________________________

# Project Objectives:
__________________________________________________________________________________
1) Building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data.
2) Create four CSV files and use the CSV file data to create an ERD and a table schema
3) Upload the CSV file data into a Postgres database

Programming & Software: 
- Microsoft Excel: used for viewing csv files
- QuickDBD: used for sketching the ERD table and generating sql import
- PostgresSQL: relational database management system
- pgAdmin: used as a tool to provide access to the data
- Jupyter Notebook: used for data cleaning and processing

Libraries:
- pandas
- Numpy
- RegExr
- JSON
__________________________________________________________________________________

# Project Overview:
__________________________________________________________________________________
Part 1: Create DataFrames for Category, Subcategory, Campaign and Contacts

Using Jupyter Notebook to import the two excel files that were provided, we transformed and manipulated these files to generate four dataframes. These dataframes were then exported into csv files.

- category.csv
- subcategory.csv
- campaign.csv
- contacts.csv

Part 2: Create the Crowdfunding Database

Using QuickDBD, we sketched an Entity Relationship Diagram (ERD) to form a table schema of the four csv files that were created. We identified the dependendcies between each table (primary and foreign keys) and their relationships (one to one/one to many) and the relevant datatypes for each column.

- Schema = crowdfunding.sql
- ERD Diagram = crowdfunding_ERD.png

INSERT ERD DIAGRAM HERE

Part 3: Import Data into Crowdfunding Database

We created a SQL database in Postgres through pgAdmin. The table schema sql file generated through the ERD diagram was uploaded to create a table structure and dependencies. The four csv files generated were imported into their corresponding tables using python SQLAlchemy in Jupyter Notebook. 

Part 4: Findings and Queries

Category with the highest success rate:
Category with the lowest success rate:
Subcategory with the highest number of successful projects:
Subcategory with the lowest number of successful projects:
Category with the highest sum of pleded amounts:
Top countries with the highest sum of pleged amounts:
__________________________________________________________________________________

# Executive Summary & Conclusion
__________________________________________________________________________________
ETL (Extract, Transform and Load) is a foundational skill in the data science field. Data is often scattered across multiple sources and in various formats. Understanding how to perform these steps is a critical concept that enables you to have clean and accurate data. Being able to manipulate data types, fix formatting issues and generate new colums with additional information can allow you to gain meaningful insights from your data. 
__________________________________________________________________________________

# Instructions
__________________________________________________________________________________
The instructions for this mini project are divided into the following subsections:

- Create the Category and Subcategory DataFrames
- Create the Campaign DataFrame
- Create the Contacts DataFrame
- Create the Crowdfunding Database

# Create the Category and Subcategory DataFrames
1) Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
2) Export the category DataFrame as category.csv and save it to your GitHub repository.
3) Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles
4) Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

# Create the Campaign DataFrame
1) Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
2) Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

# Create the Contacts DataFrame
1) Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
- Option 1: Use Python dictionary methods.
- Option 2: Use regular expressions.
2) If you chose Option 1, complete the following steps:
- Import the contacts.xlsx file into a DataFrame.
- Iterate through the DataFrame, converting each row to a dictionary.
- Iterate through each dictionary, doing the following:
- Extract the dictionary values from the keys by using a Python list comprehension.
- Add the values for each row to a new list.
- Create a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and place each in a new column.
- Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
3) If you chose Option 2, complete the following steps:
- Import the contacts.xlsx file into a DataFrame.
- Extract the "contact_id", "name", and "email" columns by using regular expressions.
- Create a new DataFrame with the extracted data.
- Convert the "contact_id" column to the integer type.
- Split each "name" column value into a first and a last name, and place each in a new column.
- Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

# Create the Crowdfunding Database
1) Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
2) Use the information from the ERD to create a table schema for each CSV file.
3) Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
4) Create a new Postgres database, named crowdfunding_db.
5) Using the database schema, create the tables in the correct order to handle the foreign keys.
6) Verify the table creation by running a SELECT statement for each table.
7) Import each CSV file into its corresponding SQL table.
8) Verify that each table has the correct data by running a SELECT statement for each.



