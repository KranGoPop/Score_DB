-- Post can be executed after non-post insertions done.
UPDATE school SET score = (
  SELECT COALESCE(SUM(event.score), 0) FROM users
  JOIN achievement AS ach ON ach.user_id = users.id
  JOIN event ON ach.event_id = event.id
  WHERE ach.status = 'ok' AND users.school_id = school.id
);