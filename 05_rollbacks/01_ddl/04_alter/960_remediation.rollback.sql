-- Rollback de remediation-scheduling-960
ALTER TABLE scheduling.time_slot      DROP COLUMN IF EXISTS deleted_by;
ALTER TABLE scheduling.time_slot      DROP COLUMN IF EXISTS deleted_at;
ALTER TABLE scheduling.time_slot      DROP COLUMN IF EXISTS is_active;
ALTER TABLE scheduling.class_session  DROP COLUMN IF EXISTS deleted_by;
ALTER TABLE scheduling.class_session  DROP COLUMN IF EXISTS deleted_at;
ALTER TABLE scheduling.class_session  DROP COLUMN IF EXISTS is_active;
ALTER TABLE scheduling.schedule       DROP COLUMN IF EXISTS deleted_by;
ALTER TABLE scheduling.schedule       DROP COLUMN IF EXISTS deleted_at;
ALTER TABLE scheduling.schedule       DROP COLUMN IF EXISTS is_active;
