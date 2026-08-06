-- DEMO - franja horaria y un horario (DRAFT) para la ficha demo
INSERT INTO scheduling.time_slot (id, name, day_of_week, start_time, end_time, shift) VALUES
  ('e0000000-0000-0000-0000-000000000001','Manana 07-10 Lunes',1,'07:00','10:00','DAY') ON CONFLICT (id) DO NOTHING;
INSERT INTO scheduling.schedule (id, ficha_id, period, status, created_by, created_at, updated_at) VALUES
  ('e0000000-0000-0000-0000-000000000002','b0000000-0000-0000-0000-000000000005','2026-1','DRAFT','c0000000-0000-0000-0000-000000000001', now(), now()) ON CONFLICT (id) DO NOTHING;
