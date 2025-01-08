SELECT * FROM TABLE_NAME;
SELECT * FROM TABLE_NAME WHERE ID=1;
SELECT * FROM TABLE_NAME WHERE ID=3;
/* Show first name, last name, and gender of patients whose gender is 'M' */
SELECT first_name, last_name, gender FROM patients WHERE gender = "M"

/* Show first name and last name of patients who does not have allergies. (null) */
SELECT first_name, last_name FROM patients WHERE allergies is null

/* Use "WHERE" and "LIKE %" for partial search.
 Show first name of patients that start with the letter 'C' */
SELECT first_name FROM patients WHERE first_name like "C%"
/* Show first name of patients that ends with the letter 'C' */
SELECT first_name FROM patients WHERE first_name like "%c"
/* Show first name of patients that have "abc" anywhere in middle */
SELECT first_name FROM patients WHERE first_name like "%abc%"

/*Show first name and last name of patients that weight within the range of 100 to 120 (inclusive) */
SELECT first_name, last_name FROM patients WHERE weight Between 100 and 120
SELECT first_name, last_name FROM patients WHERE weight >= 100 and <=120

/* Show all details of patients whose gender is not 'M' */
SELECT * FROM patients WHERE NOT gender = "M"

/* Show all details of patients who have multiple allergies */
SELECT * FROM patients WHERE allergies IN ("Penicillin", "Sulfa")

/*  Show all details of patients who have height less than 200 and weight greater than 130 and city Hamilton */ 
SELECT * FROM patients WHERE weight > 130 AND height < 200 AND city = "Hamilton"

/* Use OR to return any record that is true to any of the filters */
SELECT * FROM patients WHERE weight > 130 OR height < 200

/* Use underscore (_) to search the letter in word */
SELECT * FROM TABLE_NAME WHERE first_name LIKE "a__"

/* Use underscore (_) and % to search the letter in word and find the data that starts or ends the particular word*/
SELECT * FROM TABLE_NAME WHERE first_name LIKE "a__%"

/* Use ORDER BY to sort in ascending or descending order */
SELECT * FROM TABLE_NAME ORDER BY first_name ASC
SELECT * FROM TABLE_NAME ORDER BY first_name DESC
