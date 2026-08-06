-- Quality fixes (v2.0.0): id DEFAULT gen_random_uuid() e indices de FK faltantes
ALTER TABLE scheduling.class_session ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE scheduling.schedule ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE scheduling.scheduling_conflict ALTER COLUMN id SET DEFAULT gen_random_uuid();
ALTER TABLE scheduling.time_slot ALTER COLUMN id SET DEFAULT gen_random_uuid();
CREATE INDEX IF NOT EXISTS ix_class_session_time_slot_id ON scheduling.class_session (time_slot_id);
CREATE INDEX IF NOT EXISTS ix_scheduling_conflict_schedule_id ON scheduling.scheduling_conflict (schedule_id);
CREATE INDEX IF NOT EXISTS ix_scheduling_conflict_session_a_id ON scheduling.scheduling_conflict (session_a_id);
CREATE INDEX IF NOT EXISTS ix_scheduling_conflict_session_b_id ON scheduling.scheduling_conflict (session_b_id);
