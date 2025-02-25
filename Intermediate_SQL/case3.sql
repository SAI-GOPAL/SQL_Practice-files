select *,case when year in ('JR','SR') then player_name else Null end as JR_SR_Player
from benn.college_football_players