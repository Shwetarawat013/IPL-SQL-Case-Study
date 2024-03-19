/*INDIAN IPL CASESTUDY*/

/* Ques 1 find out who teams they are and how many times they have won by more than 30 runs*/
Select Winner, Count(*) as totalwins
From Matches
WHERE win_by_runs>30
group by winner
ORDER BY totalwins DESC;

/* Ques 2 Find out who won by more than five wickets, along with the teams' names*/							
Select Winner, Count(*) as totalwins
From Matches
WHERE win_by_wickets>5
group by winner
ORDER BY totalwins DESC;
/* Ques 3 Find the name of the venue where maximum match has been played*/
Select Venue, Count(*) as totalwins
From Matches
group by Venue
ORDER BY totalwins DESC
LIMIT 1;
/* Ques 4 Which player who won the maximum player of the match*/
with t1 as (
	Select player_of_match, Count(*) as maxmanofthematch,
	row_number() OVER(order by Count(*)DESC) as RN
	From Matches
	group by player_of_match)
    
Select * from T1
where RN =1;

/* Ques 5 Which player won the maximum player of the match each year*/
with t1 as (
	Select season, player_of_match, Count(*) as maxmanofthematch,
	row_number() OVER( partition by Season order by Count(*)DESC) as RN
	From Matches
	group by season,player_of_match)
    
Select * from T1
where RN =1;

/* Ques 6 Find out the team’s name who won the maximum tosses*/
with t1  as(
Select toss_winner, Count(*) as wimamxtosses,
row_number() OVER(order by Count(*) DESC) as RN
from Matches
group by toss_winner)

select * from t1
where RN =1;

/* Ques 7 WAP to fetch the name of the team who won the maximum tosses each year*/
with t1  as(
Select season, toss_winner, Count(*) as wimamxtosses,
row_number() OVER(partition by Season order by Count(*) DESC) as RN
from Matches
group by Season, toss_winner)

select * from t1
where RN =1;
 
/*Ques 8 How many matches has been played in each year */
Select season, Count(*) as totalmatchplayed
from matches
group by season;

/*Ques 9 Fetch the name of the city where max match has been played*/
With t1 as (
Select city, Count(*) as totalmatchplayed,
row_number() OVER ( order by COUNT(*) DESC) AS RN
from matches
group by city)

Select * from t1
WHERE RN = 1;

/*Ques 10 Fetch the name of the city where max match has been played each year*/
With t1 as (
Select season,city, Count(*) as totalmatchplayed,
row_number() OVER (partition by season order by COUNT(*) DESC) AS RN
from matches
group by season, city)

Select * from t1
WHERE RN = 1;

/*Ques 11 WAP to fetch the max and min runs to win in each season*/
select season, Max(win_by_runs) as maxruns,
Min(win_by_runs) as minruns
From matches
WHERE win_by_runs>0
group by season;

/*Ques 12 WAP to fetch the team’s name and total matches played by them*/
with T1 as(
Select team1 as team, count(*) as total from matches m1
group by team1
UNION ALL
Select team2 as team, count(*) as total from matches m2
group by team2),

t2 as (select team, sum(total) as totalmatch,
row_number() over( order by Sum(total) DESC) as RN
from t1
group by team)

Select * from t2;

/* Ques 13.	WAP to fetch the team’s name who have played the maximum matches*/
with T1 as(
Select team1 as team, count(*) as total from matches m1
group by team1
UNION ALL
Select team2 as team, count(*) as total from matches m2
group by team2),

t2 as (select team, sum(total) as totalmatch,
row_number() over( order by Sum(total) DESC) as RN
from t1
group by team)

Select * from t2
WHERE RN =1;

/* Ques14 Fetch the team’s name and total matches played by them, total matches won by them, total matches lost by them*/
With t1 as (Select team1 as team, winner From matches m1
UNION ALL
Select team2 as team, winner from matches m2)
Select team,
count(team) as totalmatches,
count(CASE WHEN winner = team THEN 1 End ) As totalwon,
count(CASE WHEN winner != team THEN 1 End) As totallost,
count(CASE WHEN winner IS NULL THEN 1 End) As totaltie
FROM t1
group by team
order by Totalmatches DESC;

/*Ques 15 15.Fetch the team’s name and total matches played by them, total matches won by them, total matches lost by them each year*/
With t1 as (Select season,team1 as team, winner From matches m1
UNION ALL
Select season,team2 as team, winner from matches m2)
Select team,season,
count(team) as totalmatches,
count(CASE WHEN winner = team THEN 1 End ) As totalwon,
count(CASE WHEN winner != team THEN 1 End) As totallost,
count(CASE WHEN winner IS NULL THEN 1 End) As totaltie
FROM t1
group by team,season
order by totalmatches DESC;
