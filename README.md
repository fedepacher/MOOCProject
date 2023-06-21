<p align=center><img src=_src/assets/mooc.jpg><p>

# <h1 align=center> **Massive Open Online Course Analysis Project** </h1>


## Introduction

Analysis to present data on course revenue, in order to know which Course has the highest revenue, Also to understand and track where opportunities may lie to increase revenue generation, and track the performance of courses.

## About this project

This is a project for the **SoyHenry** academy.


## Repository content

+ **eda.ipynb**: Contain the EDA process for the `CSV` files.
+ **web_scrap.py**: Contain the web scraping to the udemy web page.
+ **query.sql**: Contain all the query to generate the dimension and fact tables based on the `CSV` files created on te EDA process.
+ **Datasets**: Folder that contains original datasets.
+ **Dashboard**: Folder that contains new generated dataset that were used to create the Power Bi dashboard.
+ **udemy_dashboard.pbix**: Interactive dashboard in Power Bi.


## Workflow

For the project is used Github Action Project, you can access this project in the following [link](https://github.com/users/fedepacher/projects/3).<br>
This project will follow the conventional commits of the following [link](https://github.com/fedepacher/MOOCProject/wiki/Conventional-commit).<br>
Each task will be divided into an issue. [Here](https://github.com/fedepacher/MOOCProject/issues) you can find all the issues available at the moment.<br>
The scheduled task timetable can be access in the following [link](https://github.com/users/fedepacher/projects/3/views/3).<br><br>


# Issues 

## 1. Web scraping

It has been done a web scraping precess to the Udemy platform in order to get missing information such as `rating` and `language`.<br>
For this task it has been created the following [issue](https://github.com/fedepacher/MOOCProject/issues/1) where you can find the task description to solve.<br>


## 2. Exploratory Data Analysis (EDA)

For this task it has been created the following [issue](https://github.com/fedepacher/MOOCProject/issues/2) where you can find the task description to solve.

## 3. Dashboard 

For this task it has been created the following [issue](https://github.com/fedepacher/MOOCProject/issues/3) where you can find the task description to solve.<br>
The following image shows an interactive dashboard:

<p align=center><img src=_src/assets/dashboard.png><p>

Contains the KPIs values and different graphs that shows:

* Number of Courses per Year
* Average subscriber per subject
* Courses Subjects
* Average cost per subject and level
* Average of content duration per subject
* Average of rating per Subject and level


## 4. SQL Table 
 
For this task it has been created the following [issue](https://github.com/fedepacher/MOOCProject/issues/4) where you can find the task description to solve.<br>
It has created the following star model to work in the Power Bi environment: 

<p align=center><img src=_src/assets/matrix.png><p>


# License

This project is licensed under the GPL-2.0 license.