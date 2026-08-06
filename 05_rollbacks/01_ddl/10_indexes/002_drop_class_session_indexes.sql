ALTER TABLE scheduling.class_session
    DROP CONSTRAINT IF EXISTS ex_session_environment,
    DROP CONSTRAINT IF EXISTS ex_session_instructor;

DROP INDEX IF EXISTS scheduling.ix_class_session_schedule_id;
DROP INDEX IF EXISTS scheduling.ix_class_session_environment_id_session_date_start_time_end_time;
DROP INDEX IF EXISTS scheduling.ix_class_session_instructor_id_session_date_start_time_end_time;