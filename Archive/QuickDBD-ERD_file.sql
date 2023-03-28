-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/pOstA7
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "World_Happiness_Data" (
    "Country" VARCHAR   NOT NULL,
    "Happiness_score" numeric   NOT NULL,
    CONSTRAINT "pk_World_Happiness_Data" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "Food_Supply_Data" (
    "Country" VARCHAR   NOT NULL,
    "Alcoholic_Beverages" numeric   NOT NULL,
    "Animal_Products" numeric   NOT NULL,
    "Animal_fats" numeric   NOT NULL,
    "Aquatic_products_Other" numeric   NOT NULL,
    "Cereals_Excluding_Beer" numeric   NOT NULL,
    "Eggs" numeric   NOT NULL,
    "Fish_Seafood" numeric   NOT NULL,
    "Fruits_Exlcuding_Wine" numeric   NOT NULL,
    "Meat" numeric   NOT NULL,
    "Milk_Excluding_Butter" numeric   NOT NULL,
    "Miscellaneous" numeric   NOT NULL,
    "Offals" numeric   NOT NULL,
    "Oilcrops" numeric   NOT NULL,
    "Pulses" numeric   NOT NULL,
    "Spices" numeric   NOT NULL,
    "Starchy_Root" numeric   NOT NULL,
    "Stimulants" numeric   NOT NULL,
    "Sugar_Crops" numeric   NOT NULL,
    "Sugar_and_Sweeteners" numeric   NOT NULL,
    "Treenuts" numeric   NOT NULL,
    "Vegetal_Products" numeric   NOT NULL,
    "Vegetable_oils" numeric   NOT NULL,
    "Vegetables" numeric   NOT NULL,
    "Obesity" numeric   NOT NULL,
    "Population" numeric   NOT NULL,
    CONSTRAINT "pk_Food_Supply_Data" PRIMARY KEY (
        "Country"
     )
);

ALTER TABLE "Food_Supply_Data" ADD CONSTRAINT "fk_Food_Supply_Data_Country" FOREIGN KEY("Country")
REFERENCES "World_Happiness_Data" ("Country");

