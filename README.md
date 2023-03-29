# DOES WHAT YOU EAT MAKE YOU HAPPY?

## Topic
The World Happiness Report is an annual report published by the United Nations Sustainable Development Solutions Network that ranks countries by their happiness levels. The report takes into account a variety of factors such as income, social support, freedom to make life choices, generosity, perceptions of corruption, and overall well-being to determine the happiness levels of people in different countries.

The report ranks countries on a scale of 0-10, with 10 being the highest level of happiness. Our goal is to determine if a country's dietary habits predict their score for the World Happiness Report. We chose dietary habits because it is not currently considered in the happiness report, but is a major part of human daily life.

## Data Sources
 - World Happiness Dataset: https://www.kaggle.com/datasets/hari31416/world-happiness-report
   - The dataset has a more normalized form of the world happiness data from year 2015 to 2022. We chose to use data from 2021 as it compares to the data from the below dataset.
 - Covid19 Healthy Diet Dataset: https://www.kaggle.com/datasets/mariaren/covid19-healthy-diet-dataset
   - Of the the 4 datasets available, we chose to use the energy intake (kcal) dataset as we felt calories were the most commonly looked at metric. The kcal is calculated as percentage of total intake amount. The data set also includes COVID-19 data, which we removed since it is not pertinent to our study. The data used is from 2021.

## Questions
- Does the dietary breakdown predict the countries' happiness score?
- Does obesity correlate to happiness at the same rate as carbohydrate intake?
- Does alcohol consumption alone contribute to happiness?
- Does happiness increase as intake of a particular food decreases?
- Does happiness increase as intake of a particular food increases?

## Discovery

### Python 

The World Happiness Dataset for 2021 was loaded into a pandas dataframe. The following steps were used to clean the data:
- `df.drop`: to remove all of the columns from the dataset except the country names and the overall happiness score.
- `df.isnull().sum()`: to test for any null values in the dataset. The result was '0', so we were good to proceed.
- `df.rename`: to change the remaining column names to something consistent with other Happiness Datasets, camel-casing.
- `df.to_csv`: uploading the finished dataframe so it can be uploaded into a Postgres database.

![image](https://user-images.githubusercontent.com/115942978/227724159-f0843943-a381-4500-b0ae-55fa1d4a40b0.png)

The raw data from the Covid19 Healthy Diet Dataset was uploaded to Pandas. The following steps were utilized to clean the data:
- `df.describe()`: creates descriptive statistics of a Pandas DataFrame.
- `df.dtypes`: shows the data type of each column in the DataFrame.
- `df.drop`: method to eliminate specified labels from rows or columns in a DataFrame.
- `df.isnull().sum()`: returns the number of missing values (NaN) in each column of the DataFrame.
- `df.dropna()`: removes rows or columns with missing values from a DataFrame.

The final result was saved as kcal_by_country_df.csv with an end result of 170 total countries. (food_supply_df)
![image](https://user-images.githubusercontent.com/115942978/227000762-dc3b1440-ad32-447e-8bd7-10dc580f19e1.png)

### Data Visualization Entity Relationship Diagram
 
The kcal_by_country.csv provided data that was ready to be organized into a entity relationship diagram. The two data sets were then detailed into data type, primary key, and each category that could be used in the linear regression. The first table is called "World_Happiness" and includes the data of each "Country" and their "Happiness Score". The second table "Kcal_by country" includes "Country", "Animal_fats", "Animal_Products", and many more which are included in the image below.  
 
Entity Relationship Diagram
 
![Screenshot](Images/ERD.png)

### PostgreSQL

The cleaned datasets and the QuickDBD Diagram were loaded into PGAdmin. Displaying the data in tables including one with all the data merged. There was some additional changes made to both datasets to make sure the Key data (Country) was matching. Below is the final result.

![image](https://user-images.githubusercontent.com/115942978/227723742-18b774b5-60cb-48aa-aaf8-b28e74f4f316.png)

### Predictive Model
Given that we have multiple independent data points trying to predict one numerical value, we need to use Multiple Linear Regression for our model. Before we build the model, we needed to ensure that each individual independent variable has a linear relationship to the happiness score.  To do this, I created a graph of each independent variable to happiness scores.

#### Example of a food type that DID correlate:
![image](https://user-images.githubusercontent.com/115942978/227723967-a44ed6a3-00af-4ae8-9cf2-2af8c45f96c1.png)

#### Example of a food type that DID NOT correlate:
![image](https://user-images.githubusercontent.com/115942978/227723993-54f69cd0-d912-4f5e-b761-39def2ef893c.png)

In total, there were 10 independent variables that correlated with happiness:
- Alcoholic Beverages
- Animal Fats
- Animal Products
- Cereal (Excluding Beer)
- Eggs
- Meat
- Milk (Excluding Butter)
- Vegetable Products
- Vegetables
- Obesity
 
We then used a Multiple Linear Regression model to predict the World Happiness Score, using only the previously identified variables. The performance of the model shows that 59.95% of the data fit the regression model.

```
R squared: 59.95
Mean Absolute Error: 0.592440629442399
Mean Square Error: 0.5334936507188065
Root Mean Square Error: 0.7304064969034754
```

## Technology Breakdown

Python and Jupyter Notebook: utilized to clean and prepare csv files, convert to ready to use dataframes, create visual images for correlation, and save results as csv files

www.quickdatabasediagrams.com/: utilized to create Entity Relationship Diagram (ERD)

PostgreSQL and PGAdmin: utilized to combine two separate dataframes into one dataframe

Amazon AWS: utilized to support database management tasks

Portable Network Graphics (PNG): utilized to save charts, images, screenshots for later reference

Regression analysis: utilized to examine and determine food and happiness correlations

GitHub and Google sheets: utilized to document, exchange data, and track group’s tasks and progress


## Phase 1: Project Status as of 3.23.2023
| Task                                     | Date        | Assigned To | Status   | Details                                                                    |
|------------------------------------------|-------------|-------------|----------|----------------------------------------------------------------------------|
| Create Project Plan                      | 3/16/2023   | Tana        | Complete | Decided Trello was not necessary                                           |
| Determine Meeting Availability            | 3/14/2023   | Team        | Complete | "Aaron - after 3pm 7 days a week <br> Laurice - No M, T, Th - other days any time <br> Mary - Thursday all day, Friday and remainder of time is open <br> Shameen - after 5 or any time on the weekend (ok during the day is needed) <br> Tana - after 5 or any time on the weekend" |
| Phase 1                                  |             |             |          |                                                                            |
| Decide on a topic for the project         | 3/14/2023   | Team        | Complete | Can Social Media usage predict the World Happiness Score?                 |
| Create a repository for the project       | 3/14/2023   | Tana        | Complete | Repo: https://github.com/tanahildebrand/OSU_Bootcamp_Final_Project_Group5 |
| Clone the repository - ALL                | 3/16/2023   | ALL         | Complete |                                                                           |
| Data Set Sourcing                        |             |             |          |                                                                            |
| World Happiness Info (2021)               | 3/16/2023   | Aaron       | Complete |                                                                           |
| Food Supply                              | 3/16/2023   | Team        | Complete | https://www.kaggle.com/datasets/mariaren/covid19-healthy-diet-dataset?select=Food_Supply_Quantity_kg_Data.csv |
| Start the README draft start              | 3/16/2023   | Tana        | Complete |                                                                            |
| Clean Dataset for "World Happiness Info"  | 17-Mar      | Aaron       | Complete | Branch merged                                                              |
| Clean Dataset for "Food Supply"           | 17-Mar      | Laurice     | Complete | Branch merged                                                              |
| Create visualization of databases         | 20-Mar      | Shameen     | Complete | Needs to upload to git hub                                                 |
| Create databases in PostgresSQL           | 21-Mar      | Mary        | Complete | Requires AWS for storage                                                   |
| Include mock-ups of a machine learning model and a database | 22-Mar | Tana | Complete |                                                                      |
| Update README file with work completed    | 22-Mar      | ALL         | Complete |                                                                            |
| Submit Assignment                        | 23-Mar      | ALL         | In Progress | https://github.com/tanahildebrand/OSU_Bootcamp_Final_Project_Group5/tree/segment-01-submission |
