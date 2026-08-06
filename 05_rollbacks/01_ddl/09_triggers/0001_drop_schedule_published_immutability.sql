DROP TRIGGER IF EXISTS trg_schedule_published_immutability ON scheduling.schedule;
DROP FUNCTION IF EXISTS scheduling.enforce_schedule_published_immutability();