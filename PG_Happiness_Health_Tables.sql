-- Run data from World_Happiness
SELECT * FROM public."World_Happiness"
ORDER BY country ASC LIMIT 100

--Run data from Kcal_by_Country
SELECT * FROM public."Kcal_by_Country"
ORDER BY "Country" ASC LIMIT 100

-- Combine data from Kcal_by_Country and World_Happiness
SELECT w.country, w.happiness_score, k."Alcoholic_Beverages",k."Animal_Products",k."Animal_fats",k."Cereal_Excluding_Beer",k."Eggs",k."Fish_Seafood",k."Fruits_Excluding_Wine",k."Meat",k."Milk_Excluding_Butter",k."Miscellaneous",k."Offals",k."Oilcrops",k."Pulses",k."Spices",k."Starchy_Roots",k."Stimulants",k."Sugar_Crops",k."Treenuts",k."Vegetal_Products",k."Vegetable_Oils",k."Vegtables",k."Obesity",k."Population"
INTO happiness_kcal_by_country
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country;


-- Retrieve country and happiness scores related to Alcoholic_Beverages 
-- Create a table, "alcohol_and_happiness"
SELECT w.country, w.happiness_score, k."Alcoholic_Beverages"
-- INTO alcohol_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country;

-- Retrieve country and happiness scores related to Sugar_Sweeteners
-- Creat a table, "sugar_and_happiness"
SELECT w.country, w.happiness_score, k."Sugar_Sweetners"
-- INTO sugar_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.countr;

-- Retrieve country and happiness scores related to Obesity
-- Create a table, "obesity_and_happiness"
SELECT w.country, w.happiness_score, k."Obesity"
-- INTO obesity_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country DESC;

-- Retrieve country and happiness scores related to Meat
-- Create a table, "meat_and_happiness"
SELECT w.country, w.happiness_score, k."Meat"
-- INTO meat_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country;

-- Retrieve country and happiness scores related to Vegetables
-- Create a table, "vegetables_and_happiness"
SELECT w.country, w.happiness_score, k."Vegtables"
-- INTO vegetables_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country;

-- Retrieve country and happiness scores related to Cereal_Excluding_Beer
-- Create a table, "grain_and_happiness"
SELECT w.country, w.happiness_score, k."Cereal_Excluding_Beer"
-- INTO grain_and_happiness
FROM "World_Happiness" as w
INNER JOIN "Kcal_by_Country" as k
ON (w.country = k."Country")
ORDER BY w.country;

-- 
