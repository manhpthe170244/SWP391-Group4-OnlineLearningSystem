SET IDENTITY_INSERT Price_Package ON
INSERT INTO Price_Package (package_id, package_name, duration, pack_status, multiple, description)
VALUES (1,N'Free',1,1,0,N'Access to selected free courses for 1 month.'),
	(2,N'Silver',3,1,0.8,N'Access to silver level courses for 3 months with multiple device support'),
	(3,N'Gold',6,1,1,N'Access to gold level courses for 6 months with multiple device support and personalized learning plans.'),
	(4,N'Diamond',1200,1,1.5,N'Unlimited lifetime access to all courses with multiple device support, exclusive bonuses, and personalized mentorship.');