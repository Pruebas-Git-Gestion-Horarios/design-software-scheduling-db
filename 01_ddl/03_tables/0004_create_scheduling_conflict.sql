CREATE TABLE scheduling.scheduling_conflict (
    id UUID NOT NULL,
    schedule_id UUID NOT NULL,
    session_a_id UUID NOT NULL,
    session_b_id UUID,
    conflict_type VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    is_resolved BOOLEAN NOT NULL DEFAULT FALSE,
    detected_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT pk_scheduling_conflict PRIMARY KEY (id),
    CONSTRAINT fk_scheduling_conflict_schedule
        FOREIGN KEY (schedule_id) REFERENCES scheduling.schedule (id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT fk_scheduling_conflict_session_a
        FOREIGN KEY (session_a_id) REFERENCES scheduling.class_session (id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT fk_scheduling_conflict_session_b
        FOREIGN KEY (session_b_id) REFERENCES scheduling.class_session (id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT ck_scheduling_conflict_type
        CHECK (conflict_type IN (
            'INSTRUCTOR_DOUBLE_BOOKED',
            'ENVIRONMENT_DOUBLE_BOOKED',
            'SESSIONS_OVERLAP'
        )),
    CONSTRAINT ck_scheduling_conflict_distinct_sessions
        CHECK (session_b_id IS NULL OR session_a_id <> session_b_id)
);