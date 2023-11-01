//맨 우측 상단 사용자 포인트(로 추정) 출력
SELECT mileage FROM member WHERE member.id = 1234;

//현재 지역에서 가능한 총 미션 개수
SELECT count(*) FROM mission 
WHERE store_id IN (
			SELECT s.id 
			FROM store AS s join region AS r
			ON s.region_id = r.id
			WHERE r.name = '안암동' 
)AND mission.deadline > CURDATE();

// 사용자가 완료한 미션 개수 출력
SELECT count(*) FROM member_mission 
WHERE member_id = 1234 AND mission_id IN (
			SELECT m.id FROM mission AS m 
			JOIN (
					SELECT t.id FROM store AS t join region AS r
					ON t.region_id = r.id
					WHERE r.name = '안암동'
		 ) AS s ON m.store_id = s.id
)AND mission.deadline > CURDATE();