#Provide list of cottage property
SELECT * FROM property WHERE type = 'cottage'

#Provide list of property which name include the word 'luxury'
SELECT * FROM property WHERE name LIKE '%luxury%';
SELECT * FROM Property WHERE name LIKE '%Luxury%'


#Provide list of property which type is/are not house, but named as house
SELECT * FROM property WHERE type != 'house' AND name LIKE '%house%';
SELECT * FROM property WHERE type != 'House' AND name LIKE '%House%'

#Provide list of property with no view
SELECT * FROM property WHERE view IS NULL

#Provide list of property with weekly minimum night
SELECT * FROM property WHERE min_night = 7

#Provide list of apartment property which price higher than $150
SELECT * FROM property WHERE price > 150

#Provide list of apartment property which are located in Seattle
SELECT * FROM property WHERE location = 'Seattle';
SELECT * FROM property WHERE location = 'seattle'

#Property with price less than $100 have to be updated to $150
UPDATE property SET price = 150 WHERE price < 100

#Property with monthly minimum night has to be updated to weekly minimum night
UPDATE property SET min_night = 7 WHERE min_night = 30

#Property with type apartment has to be updated to condominium
UPDATE property SET type = 'condominium' WHERE type = 'apartment'
