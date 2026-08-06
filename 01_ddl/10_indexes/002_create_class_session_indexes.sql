CREATE INDEX ix_class_session_instructor_id_session_date_start_time_end_time
    ON scheduling.class_session (instructor_id, session_date, start_time, end_time);

CREATE INDEX ix_class_session_environment_id_session_date_start_time_end_time
    ON scheduling.class_session (environment_id, session_date, start_time, end_time);

CREATE INDEX ix_class_session_schedule_id
    ON scheduling.class_session (schedule_id);

ALTER TABLE scheduling.class_session
    ADD CONSTRAINT ex_session_instructor
    EXCLUDE USING gist (
        instructor_id WITH =,
        tsrange(
            session_date + start_time,
            session_date + end_time,
            '[)'
        ) WITH &&
    )
    WHERE (status = 'ACTIVE');

ALTER TABLE scheduling.class_session
    ADD CONSTRAINT ex_session_environment
    EXCLUDE USING gist (
        environment_id WITH =,
        tsrange(
            session_date + start_time,
            session_date + end_time,
            '[)'
        ) WITH &&
    )
    WHERE (status = 'ACTIVE');