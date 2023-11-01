SELECT mission.*
FROM mission JOIN member_mission as mm
ON mission.id = mm.mission_id
WHERE mm.status = 'doneyet' AND mm.member_id = 1234
ORDER BY mm.updated_at LIMIT 5;