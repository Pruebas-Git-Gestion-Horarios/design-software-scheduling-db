ALTER TABLE scheduling.time_slot
DROP CONSTRAINT ck_time_slot_shift;

UPDATE scheduling.time_slot
SET shift = 'NIGHT'
WHERE shift = 'NIGTH';

ALTER TABLE scheduling.time_slot
ADD CONSTRAINT ck_time_slot_shift
CHECK (shift IN ('DAY', 'NIGHT', 'MIXED'));