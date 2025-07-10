DROP TABLE details;

CREATE TABLE details(
name VARCHAR(50),
age TINYINT
);

DELIMITER $$

CREATE TRIGGER must_be_adult
	BEFORE INSERT ON details FOR EACH ROW
    BEGIN 
		IF NEW.age < 18 
        THEN 
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Must be an adult';
         END IF;
     END;    
    
$$

DELIMITER ;    
    
    INSERT INTO details (name,age)
VALUES ('ABCDE',12),
		('FGHIJ',13);
    


SELECT * FROM details;