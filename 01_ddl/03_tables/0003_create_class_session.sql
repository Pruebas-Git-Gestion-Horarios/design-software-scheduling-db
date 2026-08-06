CREATE TABLE scheduling.class_session (
    id UUID NOT NULL,
    schedule_id UUID NOT NULL,
    competency_id UUID NOT NULL,
    environment_id UUID NOT NULL,
    instructor_id UUID NOT NULL,
    time_slot_id UUID NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    day_of_week SMALLINT NOT NULL,
    session_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    notes TEXT,
    updated_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT pk_class_session PRIMARY KEY (id),
    CONSTRAINT fk_class_session_schedule
        FOREIGN KEY (schedule_id) REFERENCES scheduling.schedule (id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    CONSTRAINT fk_class_session_time_slot
        FOREIGN KEY (time_slot_id) REFERENCES scheduling.time_slot (id)
        ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT ck_class_session_day_of_week
        CHECK (day_of_week BETWEEN 1 AND 7),
    CONSTRAINT ck_class_session_time_range
        CHECK (start_time < end_time),
    CONSTRAINT ck_class_session_status
        CHECK (status IN ('ACTIVE', 'CANCELLED'))
);