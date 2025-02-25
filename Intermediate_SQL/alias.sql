select  players.school_name as players_School_name, players.player_name as Players_name, players.position as Players_position, players.weight as players_weight
FROM benn.college_football_players players
where state='GA'
order by weight DESC