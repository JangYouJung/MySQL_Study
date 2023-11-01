SELECT m.reward, m.deadline, m.mission_spec, s.name
FROM mission AS m 
JOIN ( //[2] 두 번째 조인
		SELECT store.name, store.id
		FROM store JOIN region  //[1] 첫 번째 조인
		ON store.region_id = region.id
		WHERE region.name = '안암동'
		GROUP BY store.id
)AS s ON m.store_id = s.id
WHERE NOT EXISTS ( //[3] 서브 쿼리
		SELECT mission_id
		FROM member_mission
		WHERE member_id = 1234
)
ORDER BY deadline LIMIT 3;