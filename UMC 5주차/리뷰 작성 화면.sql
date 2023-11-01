INSERT INTO review (member_id, store_id, body, score) 
		VALUES ( 1234,
				SELECT s.store_id FROM store s WHERE s.name = '반이학생마라탕' , 
				'음 너무 맛있어요 포인트도 얻고 맛있는 맛집도 알게 된 것 같아 너무나도 행복한 식사였답니다. 다음에 또 올게요!!', 
				5
	);

//review가 member_mission을 참고한다고 가정
UPDATE member_table 
SET member_status = 'donedone'
WHERE member_id = 1234 AND mission_id = 111