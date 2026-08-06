-- Roles de aplicacion (least-privilege) para el dominio scheduling
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='scheduling_reader') THEN CREATE ROLE scheduling_reader NOLOGIN; END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='scheduling_writer') THEN CREATE ROLE scheduling_writer NOLOGIN; END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='scheduling_admin')  THEN CREATE ROLE scheduling_admin  NOLOGIN; END IF;
END $$;
