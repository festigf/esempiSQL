CREATE TRIGGER INSERT_PLAYERS
AFTER
INSERT ON PLAYERS FOR EACH ROW
BEGIN
INSERT INTO CHANGES
(USER, CHA_TIME, CHA_PLAYERNO,
CHA_TYPE, CHA_PLAYERNO_NEW)
VALUES (USER, CURDATE(), NEW.PLAYERNO, 'I', NULL);
END
