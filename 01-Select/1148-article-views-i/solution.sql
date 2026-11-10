
Select distinct author_id as id 
from views 
where author_id = viewer_id 
order by id 
#distinct and order by go hand in hand 