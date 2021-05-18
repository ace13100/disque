use music;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'music';
GRANT SELECT, 
      UPDATE, 
      DELETE, 
      INSERT
      ON *.* TO 'user'@'localhost';
      
	