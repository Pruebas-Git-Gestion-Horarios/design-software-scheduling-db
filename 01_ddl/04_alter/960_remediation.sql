-- R3 remediación de congruencia (2026-08-06): columnas de soft-delete que el contrato promete.
-- Changeset NUEVO (remediation-scheduling-960); NO modifica changesets corridos.
-- Seguras: is_active con DEFAULT; deleted_* nullable.
ALTER TABLE scheduling.schedule       ADD COLUMN IF NOT EXISTS is_active  BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE scheduling.schedule       ADD COLUMN IF NOT EXISTS deleted_at TIMESTAMPTZ;
ALTER TABLE scheduling.schedule       ADD COLUMN IF NOT EXISTS deleted_by UUID;
ALTER TABLE scheduling.class_session  ADD COLUMN IF NOT EXISTS is_active  BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE scheduling.class_session  ADD COLUMN IF NOT EXISTS deleted_at TIMESTAMPTZ;
ALTER TABLE scheduling.class_session  ADD COLUMN IF NOT EXISTS deleted_by UUID;
ALTER TABLE scheduling.time_slot      ADD COLUMN IF NOT EXISTS is_active  BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE scheduling.time_slot      ADD COLUMN IF NOT EXISTS deleted_at TIMESTAMPTZ;
ALTER TABLE scheduling.time_slot      ADD COLUMN IF NOT EXISTS deleted_by UUID;
