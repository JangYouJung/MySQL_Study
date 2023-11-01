//사용자가 홈화면에서 '미션 도전!'을 클릭하는 경우 
INSERT INTO member_mission (member_id, mission_id, mission_status)
VALUES (1234, 111, 'yetyet');


//진행중 화면에 진행중인 미션들 띄우기
SELECT mission.* 
FROM mission JOIN member_mission AS mm
ON mission.id = mm.mission_id
WHERE mm.status='yetyet' AND mm.member_id = 1234
ORDER BY mission.deadline LIMIT 5;