# Crowdfunding_ETL
   This project demonstrates an ETL (Extract, Transform, Load) pipeline that extracts data from Excel files, processes the data using Python and Pandas, 
   and loads the processed data into a PostgreSQL database. The project also involves creating an ERD (Entity-Relationship Diagram) and SQL schema to 
   map the relationships between the various entities involved in the crowdfunding dataset.

# Table of Contents
   • Project Overview
   • Technologies Used
   • Installation
   • Usage
   • Project Structure
   • Entity-Relationship Diagram
   • Database Schema
   
# Project Overview
  The project involves building an ETL pipeline to extract data from Excel files (crowdfunding.xlsx and contacts.xlsx), transform it using Pandas, and load 
  it into a PostgreSQL database. The final output is stored in four CSV files: category.csv, subcategory.csv, campaign.csv, and contacts.csv. These CSV files 
  are then imported into the PostgreSQL database, where they are structured according to a predefined schema. This repository contains all the files and 
  instructions needed to set up and run the project.
  
# Technologies Used
   • Python: Core programming language for the ETL pipeline.
   • Pandas: For data manipulation and transformation.
   • PostgreSQL: Database for storing the processed data.
   • SQLAlchemy: For connecting and interacting with the PostgreSQL database.
   • pgAdmin: For managing and querying the PostgreSQL database.
   • Jupyter Notebook: For running and documenting the ETL process.
   •  QuickDBD: For creating the ERD (Entity-Relationship Diagram).
   
# Usage
   1. Run the ETL process:
      o The ETL process is implemented in the Jupyter Notebook named ETL_Mini_Project_Final.ipynb.
      o Open the notebook in Jupyter and follow the instructions to extract, transform, and load the data.

   2. Create the PostgreSQL database:
      o Execute the SQL schema provided in the file CrowdFunding_db_Scheme.sql to create the necessary tables in PostgreSQL.

   3. Load CSV data into PostgreSQL:
      o Use pgAdmin to import the four CSV files (category.csv, subcategory.csv, campaign.csv, and contacts.csv) into their respective tables 
      in the PostgreSQL database.
      
   4. Verify Data:
      o Use SELECT * FROM table_name; to verify the data loaded correctly into PostgreSQL.
      

# Entity-Relationship Diagram
   The ERD below illustrates the relationships between the campaign, category, subcategory, and contacts tables:
   
# Database Schema
   The database schema is defined in CrowdFunding_db_Scheme.sql and includes the following tables:
   • campaign
     o cf_id: Serial primary key
     o contact_id: Foreign key linking to the contacts table
     o category_id: Foreign key linking to the category table
     o subcategory_id: Foreign key linking to the subcategory table
     o Additional columns for campaign details like goal, pledged, description, etc.
   • category
     o category_id: Primary key
     o category_name: Name of the category
   • subcategory
     o subcategory_id: Primary key
     o subcategory_name: Name of the subcategory
   • contacts
     o contact_id: Serial primary key
     o first_name: First name of the contact
     o last_name: Last name of the contact
     o email: Contact email

# By:
Yara El-Emam
Sanjana Prabhakar



