-- 1. NUMBER OF VALUES
select count(*) as Total_Values 
from astronauts;

-- 2. SPACE FLIGHTS AND SPACE WALKS AVERAGE VALUES
SELECT round(avg("Space Flights"),2) as Avg_Space_Flights, round(avg("Space Walks"),2) as Avg_Space_Walks 
FROM astronauts;

-- 3. NUMBER OF SPACE FLIGHTS AND WALKS
SELECT sum("Space Flights") as Total_Space_Flights, sum("Space Walks") as Total_Space_Walks 
FROM astronauts;

-- 4. MAX SPACE FLIGHTS AND SPACE WALKS VALUES
SELECT max("Space Flights") as Max_Space_Flights, max("Space Walks") as Max_Space_Walks 
FROM astronauts;

-- 5. ASTRONAUT WHO HAVE THE MOST NUMBER OF SPACE FLIGHTS
SELECT "Name", "Space Flights"
from astronauts where "Space Flights" = 7;

-- 6. ASTRONAUT WHO HAVE THE MOST NUMBER OF SPACE WALKS
SELECT "Name", "Space Walks" 
from astronauts where "Space Walks" = 10;

-- 7. MIN SPACE FLIGHTS AND SPACE WALKS VALUES
SELECT min("Space Flights") as Min_Space_Flights, min("Space Walks") as Min_Space_Walks 
FROM astronauts;

-- 8. NUMBER OF ASTRONAUTS WITH NO SPACE FLIGHTS
SELECT count("Name")
from astronauts 
where "Space Flights" = 0;

-- 9. NUMBER OF ASTRONAUTS WITH NO SPACE WALKS
SELECT count("Name")
from astronauts 
where "Space Walks" = 0;

-- 9. NUMBER OF ASTRONAUTS WITH NEITHER SPACE FLIGHTS NOR SPACE WALKS
SELECT count("Name") as both_0 
from astronauts 
where "Space Flights" = 0 and "Space Walks" = 0;

-- 10 NUMBER OF NULL VALUES (YEAR)
select count("Year") 
from astronauts;
select sum(case when "Year" is null then 1 else 0 end) as Total_year_null_values 
from astronauts;

-- 11 NUMBER OF NULL VALUES (MISSIONS)
select * 
from astronauts 
where "Missions" is null;
select sum(case when "Missions" is null then 1 else 0 end) as Total_Missions_null_values 
from astronauts;

-- 12. ASTRONAUTS IN MANAGEMENT POSITION WITH NO FLIGHT EXPERIENCE
select "Name", "Space Flights", "Status" 
from astronauts 
where "Status" = 'Management' and "Space Flights" = 0;

-- 13. NUMBER OF ASTRONAUTS IN MANAGEMENT POSITION WITH NO FLIGHT EXPERIENCE
select count(*) 
from astronauts 
where "Status" = 'Management' and "Space Flights" = 0;
