                -- SELECT *
                -- FROM teams
                -- LIMIT 1;


-- id  |     name      |       stadium        | division | conference |  head_coach  | active 
-- ----+---------------+----------------------+----------+------------+--------------+--------
--   1 | Buffalo Bills | Ralph Wilson Stadium | East     | AFC        | Doug Marrone | t

                -- SELECT *
                -- FROM players
                -- LIMIT 2;


--   id  |       name       | position | salary  | team_id 
-- ------+------------------+----------+---------+---------
--  1533 | Mario Williams   | DE       | 5900000 |       1
--  1534 | Drayton Florence | CB       | 4000000 |       1


--0!0!0!0 -----    Going to comment out and tab over my queries



-- 1. List the names of all NFL teams'

        -- SELECT name
        -- FROM teams;


--          name         
-- ----------------------
--  Buffalo Bills--  Miami Dolphins--  New England Patriots--  New York Jets
--  Baltimore Ravens--  Cincinnati Bengals--  Cleveland Browns--  Pittsburgh Steelers
--  Houston Texans--  Indianapolis Colts--  Jacksonville Jaguars--  Tennessee Titans
--  Denver Broncos--  Kansas City Chiefs--  Oakland Raiders--  San Diego Chargers
--  Dallas Cowboys--  New York Giants--  Philadelphia Eagles--  Washington Redskins
--  Chicago Bears--  Detroit Lions--  Green Bay Packers--  Minnesota Vikings
--  Atlanta Falcons--  Carolina Panthers--  New Orleans Saints--  Tampa Bay Buccaneers
--  Arizona Cardinals--  St. Louis Rams--  San Francisco 49ers--  Seattle Seahawks
-- (32 rows)

-- 2. List the stadium name and head coach of all NFC teams

        -- SELECT stadium, head_coach
        -- FROM teams
        -- WHERE conference ='NFC';


--             stadium            |  head_coach   
-- -------------------------------+---------------
--  AT&T Stadium                  | Jason Garrett
--  MetLife Stadium               | Tom Coughlin
--  Lincoln Financial Field       | Chip Kelly
--  FedExField                    | Jay Gruden
--  Soldier Field                 | Marc Trestman
--  Ford Field                    | Jim Caldwell
--  Lambeau Field                 | Mike McCarthy
--  TCF Bank Stadium              | Mike Zimmer
--  Georgia Dome                  | Mike Smith
--  Bank of America Stadium       | Ron Rivera
--  Mercedes-Benz Superdome       | Sean Payton
--  Raymond James Stadium         | Lovie Smith
--  University of Phoenix Stadium | Bruce Arians
--  Edward Jones Dome             | Jeff Fisher
--  Levis Stadium                 | Jim Harbaugh
--  CenturyLink Field             | Pete Carroll
-- (16 rows)



-- 3. List the head coaches of the AFC South

            -- SELECT head_coach
            -- FROM teams
            -- WHERE conference = 'AFC' 
            -- AND division = 'South';


--  Bill OBrien
--  Chuck Pagano
--  Gus Bradley
--  Ken Whisenhunt

            -- SELECT head_coach, name, division, conference
            -- FROM teams
            -- WHERE conference = 'AFC'
            -- AND division = 'South';

--- to confirm above is correct - only 4 teams per division ....  in 2012....

--    head_coach   |         name         | division | conference 
-- ----------------+----------------------+----------+------------
--  Bill OBrien    | Houston Texans       | South    | AFC
--  Chuck Pagano   | Indianapolis Colts   | South    | AFC
--  Gus Bradley    | Jacksonville Jaguars | South    | AFC
--  Ken Whisenhunt | Tennessee Titans     | South    | AFC

-- 4. The total number of players in the NFL

--- prob a better way but i'll use guess and check price is right high low game style
--- my random q to get player info lets me know theres is at least 2k players
-- lets see if 3 ...

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3000
            -- LIMIT 2;


--         name    |  id  
-- ----------------+------
--  Demarcus Dobbs | 3001
--  Ian Williams   | 3002

--- lets see if 4k ?


            -- SELECT name, id    
            -- FROM players
            -- WHERE id > 4000 
            -- LIMIT 2;

-- name  | id
-- ------+----
-- (0 rows)

---- nope lkess tha 4 k -  so we split it at 3.5 k

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3500
            -- LIMIT 2;

-- none

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3200
            -- LIMIT 2;

-- none

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3100
            -- LIMIT 2;

 ----  none ....



            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3001
            -- LIMIT 25;

--- ... 
-- Chris Clemons     | 3023
--  Brandon Mebane   | 3024
--  Marshawn Lynch   | 3025
--  Tarvaris Jackson | 3026

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3027
            -- LIMIT 25;

--- ...

-- Kam Chancellor    | 3050
--  Walter Thurmond  | 3051
--  Byron Maxwell    | 3052

---  so more than 3050 ... 

            -- SELECT name, id
            -- FROM players
            -- WHERE id > 3050
            -- LIMIT 25;


--  Ron Parke           | 3062
--  Brandon Browner     | 3063
--  Jameson Konz        | 3064
--  (14 rows)


-- only 14 rows from max of 25 so we found the end ... hooray !


-- 3064  players in nfl 'in year 2012'

--- prob a better way to find max number but this was more fun.... 




------------------------------------------------------------------------------------
-------!!!!!________ COMMIT HERE  -- "Commit: NFL queries 1" ____---___---__!!!!!!!
------------------------------------------------------------------------------------


-- 5. The team names and head coaches of the NFC North and AFC East
                -- SELECT name, head_coach
                -- FROM teams
                -- WHERE division = 'North' AND conference = 'NFC' 
                -- OR division = 'East' AND conference = 'AFC';

--          name         |   head_coach   
-- ----------------------+----------------
--  Buffalo Bills        | Doug Marrone
--  Miami Dolphins       | Joe Philbin
--  New England Patriots | Bill Belichick
--  New York Jets        | Rex Ryan
--  Chicago Bears        | Marc Trestman
--  Detroit Lions        | Jim Caldwell
--  Green Bay Packers    | Mike McCarthy
--  Minnesota Vikings    | Mike Zimmer
-- (8 rows)

--- to dbl check ....

            -- SELECT name, head_coach, division, conference
            -- FROM teams
            -- WHERE division = 'North' AND conference = 'NFC'
            -- OR division = 'East' AND conference = 'AFC';

--          name         |   head_coach   | division | conference 
-- ----------------------+----------------+----------+------------
--  Buffalo Bills        | Doug Marrone   | East     | AFC
--  Miami Dolphins       | Joe Philbin    | East     | AFC
--  New England Patriots | Bill Belichick | East     | AFC
--  New York Jets        | Rex Ryan       | East     | AFC
--  Chicago Bears        | Marc Trestman  | North    | NFC
--  Detroit Lions        | Jim Caldwell   | North    | NFC
--  Green Bay Packers    | Mike McCarthy  | North    | NFC
--  Minnesota Vikings    | Mike Zimmer    | North    | NFC
-- (8 rows)

--- yeppers


-- 6. The 50 players with the highest salaries

-- SELECT name, salary
-- FROM players
-- WHERE salary > 7200000
-- LIMIT 50;

---- get 48 results at this inquiry so to get top 50 have to decrease to 7100000
-- SELECT name, salary
-- FROM players
-- WHERE salary > 7100000
-- LIMIT 50;


---  more correct way to do it

            -- SELECT name, salary   
            -- FROM players
            -- ORDER by salary DESC 
            -- LIMIT 50;

--           name           |  salary  
-- -------------------------+----------
--  Peyton Manning          | 18000000
--  Drew Brees              | 15760000
--  Dwight Freeney          | 14035000
--  Elvis Dumervil          | 14000000
--  Michael Vick            | 12500000
--  Sam Bradford            | 12000000
--  Jared Allen             | 11619850
--  Matt Ryan               | 11500000
--  Matthew Stafford        | 11500000
--  Tamba Hali              | 11250000
--  Jake Long               | 11200000
--  Nnamdi Asomugha         | 11000000
--  Trent Williams          | 11000000
--  Vincent Jackson         | 11000000
--  Cliff Avril             | 10600000
--  Calais Campbell         | 10600000
--  Joe Thomas              | 10500000
--  Brent Grimes            | 10431000
--  Peyton Manning (buyout) | 10400000
--  Chris Long              | 10310000
--  Philip Rivers           | 10200000
--  Jason Smith             | 10000000
--  David Harris            |  9900000
--  Wes Welker              |  9515000
--  Davin Joseph            |  9500000
--  Dwayne Bowe             |  9443000
--  Asante Samuel           |  9400000
--  Brandon Marshall        |  9300000
--  Ndamukong Suh           |  9250000
--  Tony Romo               |  9000000
--  Julius Peppers          |  8900000
--  Anthony Spencer         |  8800000
--  Karlos Dansby           |  8800000
--  Jordan Gross            |  8500000
--  Tyson Jackson           |  8005000
--  Adrian Peterson         |  8000000
--  Champ Bailey            |  8000000
--  Chris Johnson           |  8000000
--  Aaron Rodgers           |  8000000
--  Jason Peters            |  7900000
--  Eric Wright             |  7750000
--  Steve Smith             |  7750000
--  Santonio Holmes         |  7750000
--  Jay Cutler              |  7700000
--  Matt Forte              |  7700000
--  Ray Rice                |  7700000
--  Brian Urlacher          |  7500000
--  Johnathan Joseph        |  7250000
--  Gary Brackett           |  7200000
--  Ed Reed                 |  7200000
-- (50 rows)




-- 7. The average salary of all NFL players
-- goto w3 schools https://www.w3schools.com/sql/sql_count_avg_sum.asp

-- SELECT AVG(salary)
-- FROM players;

-- ----------------------
-- 1579692.539817232376
-- (1 row)

--- UGLY NUKBER let's clean that up with rounding...


            -- SELECT ROUND(AVG(salary),2)
            -- FROM players;


-- round    
-- -------------
--  1579692.54
-- (1 row)

-- MUCH BETTER

-- 8. The names and positions of players with a salary above 10_000_000

        -- SELECT name, position 
        -- FROM players
        -- WHERE salary > 10000000;

--           name           | position 
-- -------------------------+----------
--  Jake Long               | T
--  Joe Thomas              | T
--  Dwight Freeney          | DE
--  Peyton Manning (buyout) | QB
--  Peyton Manning          | QB
--  Elvis Dumervil          | DE
--  Tamba Hali              | DE
--  Philip Rivers           | QB
--  Michael (con) Vick      | QB ----- BOOOO - dog hater - as an Atlanta native I say BOO
--  Nnamdi Asomugha         | CB
--  Trent Williams          | T
--  Matthew Stafford        | QB
--  Cliff Avril             | DE
--  Jared Allen             | DE
--  Matt Ryan               | QB
--  Brent Grimes            | CB
--  Drew Brees              | QB
--  Vincent Jackson         | WR
--  Calais Campbell         | DE
--  Sam Bradford            | QB
--  Chris Long              | DE
-- (21 rows)





------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-------!!!!!________ COMMIT HERE  -- "Commit: NFL queries 2" ____---___---__!!!!!!!
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------


-- 9. The player with the highest salary in the NFL
--- we say that was peyton when we did the 50 top salaries... but ok - let's do it again....

            -- SELECT name, salary   
            -- FROM players
            -- ORDER by salary DESC 
            -- LIMIT 1;

-- name
-- |  salary  
-- ----------------+----------
--  Peyton Manning | 18000000
-- (1 row)

-- 10. The name and position of the first 100 players with the lowest salaries

        -- SELECT name, position
        -- FROM players
        -- ORDER by salary ASC
        -- LIMIT 100;

-- ➜  NFL git:(master) ✗ psql -d NFL < nfl.sql   
--           name          | position 
-- ------------------------+----------
--  Phillip Dillard        | 
--  Eric Kettani           | RB
--  Austin Sylvester       | RB
--  Greg Orton             | WR
--  Jerrod Johnson         | QB
--  McLeod Bethel-Thompson | QB
--  Jonathan Crompton      | QB
--  Travon Bellamy         | CB
--  Caleb King             | RB
--  Mike Mohamed           | LB
--  Kyle Nelson            | LS
--  John Malecki           | G
--  Nathan Bussey          | LB
--  Robert James           | LB
--  Markell Carter         | DE
--  Aaron Lavarias         | DT
--  Mark Dell              | WR
--  Ronald Johnson         | WR
--  Doug Worthington       | DT
--  Derrick Jones          | WR
--  Sealver Siliga         | DT
--  Chase Beeler           | C
--  Kenny Wiggins          | T
--  Konrad Reuland         | TE
--  Michael Wilhoite       | LB
--  Garrett Chisolm        | G
--  Juamorris Stewart      | WR
--  Chad Spann             | RB
--  Trevis Turner          | T
--  Justin Medlock         | KR
--  Armon Binns            | WR
--  Derek Hall             | T
--  Shaky Smithson         | WR
--  Armando Allen          | RB
--  DAndre Goodwin         | WR
--  Jeremy Beal            | DE
--  Brett Brackett         | TE
--  Shaun Draughn          | RB
--  John Clay              | RB
--  Tristan Davis          | RB
--  Curtis Holcomb         | CB
--  Jimmy Young            | WR
--  Kevin Cone             | WR
--  Cory Nelms             | CB
--  Ben Guidugli           | TE
--  David Gilreath         | WR
--  Dontavia Bogan         | WR
--  Joe Hastings           | WR
--  Marshall McFadden      | LB
--  Kade Weston            | DT
--  Kyle Hix               | T
--  Mark LeGree            | S
--  Mike Hartline          | QB
--  Jameson Konz           | WR
--  Tyler Beiler           | 
--  Mike Blanc             | DT
--  Corbin Bryant          | DT
--  Michael Jasper         | DT
--  Mike Rivera            | LB
--  Pat Devlin             | QB
--  Jerome Messam          | RB
--  Jamie McCoy            | TE
--  Lestar Jean            | WR
--  Malcolm Williams       | CB
--  Ricky Sapp             | DE
--  Rashad Carmichael      | CB
--  Alex Silvestro         | DT
--  Adam Weber             | QB
--  Adam Grant             | T
--  Jammie Kirlew          | DE
--  Joe Reitz              | T
--  Brandon Browner        | CB
--  Jeff Byers             | C
--  Jed Collins            | TE
--  Aaron Berry            | CB
--  Logan Payne            | WR
--  Marcus Sherels         | CB
--  T.J. Conley            | PR
--  Cameron Sheffield      | LB
--  Kyle Bosworth          | LB
--  Garrett McIntyre       | DT
--  John Estes             | C
--  Thomas Austin          | G
--  Emmanuel Stephens      | DT
--  Markus White           | DE
--  Ricardo Matthews       | DT
--  Quinten Lawrence       | WR
--  Bilal Powell           | RB
--  Taylor Boggs           | C
--  Kamar Aiken            | WR
--  Dexter Jackson         | WR
--  Justin Rogers          | CB
--  Johnny White           | RB
--  Eron Riley             | WR
--  Tracy Wilson           | CB
--  DaNorris Searcy        | S
--  Chris White            | LB
--  Sterling Moore         | CB
--  Chris Hairston         | T
--  Andrew Hawkins         | WR
-- (100 rows)


--- so who is the lowest ?

-- SELECT name, position, salary 
-- FROM players
-- ORDER by salary ASC
-- LIMIT 3;


-- Phillip Dillard   |          | 369480
--  Markell Carter   | DE       | 390000
--  Jerome Messam    | RB       | 390000


-- Phillip - you lucky bastard making over 350k a year to suck at football



-- 11. The average salary for a DE in the nfl

-- SELECT ROUND(AVG(salary),2)
-- FROM players
-- WHERE position = 'DE';


-- round    
-- ------------
--  2161326.38
-- (1 row)

------    $ 2,161,326.38   --- dang

-- 12. The names of all the players on the Buffalo Bills

 ---   already know team-id for buffalo is 1

-- SELECT name
-- FROM players 
-- WHERE team_id = 1;


        -- name        
--------------------
--  Mario Williams
--  Drayton Florence
--  Shawne Merriman
--  Dwan Edwards
--  Chris Kelsay
--  Kyle Williams
--  Nick Barnett
--  Spencer Johnson
--  Ryan Fitzpatrick
--  Steve Johnson
--  Tyler Thigpen
--  Lee Evans (Buyout)
--  Brad Smith
--  Fred Jackson
--  Scott Chandler
--  George Wilson
--  Erik Pears
--  Leodis McKelvin
--  Brian Moorman
--  Terrence McGee
--  Marcell Dareus
--  Chad Rinehart
--  Kraig Urbik
--  Rian Lindell
--  Kirk Morrison
--  Corey McIntyre
--  C.J. Spiller
--  Garrison Sanborn
--  Eric Wood
--  Lionel Dotson
--  Ruvell Martin
--  Andy Levitre
--  Jairus Byrd
--  Jarron Gilbert
--  Kyle Moore
--  Aaron Williams
--  Donald Jones
--  Fendi Onobun
--  Kellen Heard
--  Mike Caussin
--  Naaman Roosevelt
--  Alex Carrington
--  Arthur Moats
--  Colin Brown
--  Cordaro Howard
--  Dan Batten
--  David Nelson
--  Marcus Easley
--  Sam Young
--  Torell Troup
--  Kelvin Sheppard
--  Lee Smith
--  Chris Hairston
--  Chris White
--  DaNorris Searcy
--  Johnny White
--  Justin Rogers
--  Kamar Aiken
--  Michael Jasper
-- (59 rows)


-- SELECT name, position
-- FROM players
-- WHERE team_id = 1;




------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-------!!!!!________ COMMIT HERE  -- "Commit: NFL queries 3" ____---___---__!!!!!!!
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
-- 13. The total salary of all players on the New York Giants

 --- to find nyg team id 
-- SELECT name, id 
-- FROM teams;

--     NYG = 18


-- SELECT SUM(salary)
-- FROM players
-- WHERE team_id =18; 


-- sum    
-- ----------
--  74,179,466
-- (1 row)

--- seems legit salary cap at 75k I think from playng madden back in the day.... 

-- 14. The player with the lowest salary on the Green Bay Packers
--- change limit to 1 to see just one but with it at three in case there's a tie

-- SELECT name, salary
-- FROM players
-- WHERE team_id = 23
-- ORDER by salary ASC
-- LIMIT 3;


-- ➜  NFL git: (master) ✗ psql -d NFL < nfl.sql   

--       name       | salary 
-- -----------------+--------
--  Shaky Smithson  | 390000
--  Brandon Saine   | 465000
--  Alexander Green | 465000
-- (3 rows)


----- answer is --  Shaky Smithson  | 390000

--- BONUS
--- lowest 10 players 
-- SELECT name, salary
-- FROM players
-- ORDER by salary ASC
-- LIMIT 10;

--        name       | salary 
-- ------------------+--------
--  Phillip Dillard  | 369480   ----- dang only one down here all alone at the bottom....
--  Markell Carter   | 390000
--  Jerome Messam    | 390000
--  Eric Kettani     | 390000
--  Michael Jasper   | 390000
--  Malcolm Williams | 390000
--  Aaron Lavarias   | 390000
--  Pat Devlin       | 390000
--  Alex Silvestro   | 390000
--  Kyle Hix         | 390000
-- (10 rows)

-- SELECT *
-- FROM players
-- WHERE name = 'Phillip Dillard';


--   id  |      name       | position | salary | team_id 
-- ------+-----------------+----------+--------+---------
--  2401 | Phillip Dillard |          | 369480 |      18
-- (1 row)



-- so he's on the giants and plays the bench 
-- I'd trade salaries in a heart-beat!


-------------------------------------------------------------------------------------------------
-------!!!!!________ COMMIT HERE  -- "Commit: NFL queries HFM BONUS BABY" ____---___---__!!!!!!!
-------------------------------------------------------------------------------------------------








-- SELECT *
-- FROM players
-- WHERE position = 'WR';

-- SELECT *
-- FROM teams
-- WHERE id = 31;


--- data from year 2012 --- Randy Moss on the 49ers -- only did that in 2012