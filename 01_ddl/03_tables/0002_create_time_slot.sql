CREATE TABLE scheduling.time_slot (
    id UUID NOT NULL,
    name VARCHAR(50) NOT NULL,
    day_of_week SMALLINT  NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    shift VARCHAR(20) NOT NULL,

    CONSTRAINT pk_time_slot PRIMARY KEY (id),
    CONSTRAINT ck_time_slot_day_of_week
        CHECK (day_of_week BETWEEN 1 AND  7),
    CONSTRAINT ck_time_slot_time_range 
        CHECK (start_time < end_time),
    CONSTRAINT ck_time_slot_shift
        CHECK (shift IN ('DAY', 'NIGTH', 'MIXED'))
);