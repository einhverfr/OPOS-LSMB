BEGIN;

DO LANGUAGE PLPGSQL
$$
BEGIN
PERFORM * FROM pg_roles WHERE rolname = 'opos';
IF NOT FOUND THEN
   CREATE USER opos;
END IF;
END;
$$;

COMMIT;
