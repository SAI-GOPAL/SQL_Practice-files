-- Write a query that displays player names, school names and conferences for schools in the "FBS (Division I-A Teams)" division.

select 
players.player_name as player_name,players.school_name as school_name,teams.conference as conference
  FROM benn.college_football_players players
  JOIN benn.college_football_teams teams
    ON teams.school_name = players.school_name
    
    where teams.division='FBS (Division I-A Teams)'