--liquibase formatted sql

--changeset Juancarlos:20260722-001-create-schedule
CREATE TABLE scheduling.schedule (
    id UUID NOT NULL,
    ficha_id UUID NOT NULL,
    period VARCHAR(10) NOT NULL,
    name VARCHAR(200),
    status VARCHAR(30) NOT NULL,
    published_at TIMESTAMPTZ,
    published_by UUID,
    row_version INTEGER NOT NULL DEFAULT 0,
    created_by UUID NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,

    CONSTRAINT pk_schedule PRIMARY KEY (id),
    CONSTRAINT ck_schedule_status
        CHECK (status IN ('DRAFT', 'UNDER_REVIEW', 'PUBLISHED', 'ARCHIVED'))
);