-- Post can be executed after non-post insertions done.
UPDATE users SET score = (
  SELECT COALESCE(SUM(score), 0) FROM achievement
  JOIN event ON event.id = achievement.event_id
  WHERE achievement.user_id = users.id AND achievement.status = 'ok'
);