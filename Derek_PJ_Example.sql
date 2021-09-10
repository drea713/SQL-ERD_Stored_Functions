SELECT *
FROM actor;

CREATE OR REPLACE FUNCTION addActor
	(
		_first_name VARCHAR(45),
		_last_name VARCHAR(45),
		_last_update TIMESTAMP WITHOUT TIME ZONE
	)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO actor (first_name, last_name, last_update)
	VALUES (_first_name, _last_name, _last_update);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT addActor('Derek', 'Turner', NOW()::timestamp)

-- another example beginning of video