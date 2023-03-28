-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "World_Happiness" (
    "country" varchar   NOT NULL,
    "happiness_score" numeric   NOT NULL,
    CONSTRAINT "pk_World_Happiness" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "Kcal_by_Country" (
    "Country" varchar   NOT NULL,
    "Alcoholic_Beverages" numeric   NOT NULL,
    "Animal_Products" numeric   NOT NULL,
    "Animal_fats" numeric   NOT NULL,
    "Cereal_Excluding_Beer" numeric   NOT NULL,
    "Eggs" numeric   NOT NULL,
    "Fish_Seafood" numeric   NOT NULL,
    "Fruits_Excluding_Wine" numeric   NOT NULL,
    "Meat" numeric   NOT NULL,
    "Milk_Excluding_Butter" numeric   NOT NULL,
    "Miscellaneous" numeric   NOT NULL,
    "Offals" numeric   NOT NULL,
    "Oilcrops" numeric   NOT NULL,
    "Pulses" numeric   NOT NULL,
    "Spices" numeric   NOT NULL,
    "Starchy_Roots" numeric   NOT NULL,
    "Stimulants" numeric   NOT NULL,
    "Sugar_Crops" numeric   NOT NULL,
    "Sugar_Sweeteners" numeric   NOT NULL,
    "Treenuts" numeric   NOT NULL,
    "Vegetal_Products" numeric   NOT NULL,
    "Vegetable_Oils" numeric   NOT NULL,
    "Vegetables" numeric   NOT NULL,
    "Obesity" numeric   NOT NULL,
    "Population" numeric   NOT NULL,
    CONSTRAINT "pk_Kcal_by_Country" PRIMARY KEY (
        "Country"
     )
);

ALTER TABLE "World_Happiness" ADD CONSTRAINT "fk_World_Happiness_Country" FOREIGN KEY("country")
REFERENCES "Kcal_by_Country" ("Country");



