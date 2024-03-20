USE amazon_hr;

-- OFF The AUTOCOMMIT capability in mysql
SET autocommit = OFF;
SET autocommit = 0;

-- Start a Transaction
START TRANSACTION;

select * from offices;

-- COMMIT, ROLLBACK & SAVEPOINT
SAVEPOINT initial;

INSERT INTO `offices` VALUES (99,'Piassa','Addis Ababa','PI');
INSERT INTO `offices` VALUES (100,'Saris','Adama','SA');
INSERT INTO `offices` VALUES (101,'Stadium','Asosa','ST');

SAVEPOINT ins;

UPDATE offices
SET address = 'Arat Kilo'
WHERE office_id = 101;

UPDATE offices
SET state = 'AK'
WHERE office_id = 101;

UPDATE offices
SET city = 'Semera'
WHERE office_id = 101;

SAVEPOINT upd;

DELETE FROM offices
WHERE office_id = 101;

DELETE FROM offices
WHERE office_id = 100;

DELETE FROM offices
WHERE office_id = 99;

select * from offices;


rollback to upd;

rollback to ins;

rollback to initial;

commit;





ROLLBACK to ins;

ROLLBACK to initial;

ROLLBACK;

COMMIT;