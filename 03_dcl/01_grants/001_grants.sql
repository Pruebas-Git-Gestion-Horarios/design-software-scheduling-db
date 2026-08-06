-- Grants least-privilege dominio scheduling
GRANT USAGE ON SCHEMA scheduling TO scheduling_reader, scheduling_writer, scheduling_admin;
GRANT SELECT ON ALL TABLES IN SCHEMA scheduling TO scheduling_reader;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA scheduling TO scheduling_writer;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA scheduling TO scheduling_writer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA scheduling TO scheduling_admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA scheduling TO scheduling_admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA scheduling GRANT SELECT ON TABLES TO scheduling_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA scheduling GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO scheduling_writer;
ALTER DEFAULT PRIVILEGES IN SCHEMA scheduling GRANT ALL ON TABLES TO scheduling_admin;
