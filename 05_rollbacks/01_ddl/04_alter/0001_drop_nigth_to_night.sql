ALTER TABLE scheduling.time_slot
DROP CONSTRAINT ck_time_slot_shift;

ALTER TABLE scheduling.time_slot
ADD CONSTRAINT ck_time_slot_shift
CHECK (shift IN ('DAY', 'NIGTH', 'MIXED'));