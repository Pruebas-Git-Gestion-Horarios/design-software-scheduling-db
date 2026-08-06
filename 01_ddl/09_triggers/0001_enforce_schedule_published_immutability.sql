CREATE OR REPLACE FUNCTION scheduling.enforce_schedule_published_immutability()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF TG_OP = 'DELETE' AND OLD.status = 'PUBLISHED' THEN
        RAISE EXCEPTION 'Published schedules cannot be deleted';
    END IF;

    IF TG_OP = 'UPDATE' AND OLD.status = 'PUBLISHED' THEN
        IF NEW.status <> 'ARCHIVED'
           OR NEW.id IS DISTINCT FROM OLD.id
           OR NEW.ficha_id IS DISTINCT FROM OLD.ficha_id
           OR NEW.period IS DISTINCT FROM OLD.period
           OR NEW.name IS DISTINCT FROM OLD.name
           OR NEW.published_at IS DISTINCT FROM OLD.published_at
           OR NEW.published_by IS DISTINCT FROM OLD.published_by THEN
            RAISE EXCEPTION 'Published schedules are immutable; only archiving is allowed';
        END IF;
    END IF;

    RETURN CASE WHEN TG_OP = 'DELETE' THEN OLD ELSE NEW END;
END;
$$;

CREATE TRIGGER trg_schedule_published_immutability
BEFORE UPDATE OR DELETE ON scheduling.schedule
FOR EACH ROW
EXECUTE FUNCTION scheduling.enforce_schedule_published_immutability();