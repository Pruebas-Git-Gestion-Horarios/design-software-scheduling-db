CREATE UNIQUE INDEX uq_schedule_ficha_id_period_published
    ON scheduling.schedule (ficha_id, period)
    WHERE status = 'PUBLISHED';

CREATE INDEX ix_schedule_status
    ON scheduling.schedule (status);