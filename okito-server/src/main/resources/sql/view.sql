-- pin view
create view pin_view as
select 
	id, content, create_time, update_time, author_id, view_num,
	case when like_num is null then 0 else like_num end
from
	pin as p 
left join
	(select pin_id, count(*) as like_num from pin_like where pin_like.type = 1 group by pin_id) as l
	on p.id = l.pin_id
;

-- pin_comment view
create view pin_comment_view as 
select
	id, content, upload_time, author_id, pin_id, parent_id,
	case when like_num is null then 0 else like_num end
from 
	pin_comment as p
left join
	(select comment_id, count(*) as like_num from pin_comment_like where pin_comment_like.type = 1 group by comment_id) as l
	on p.id = l.comment_id
;

-- post view
create view post_view as
select
	id, title, summary, cover, content, create_time, update_time, draft, cate_id, author_id, view_num,
	case when like_num is null then 0 else like_num end
from 
	post as p
left join
	(select post_id, count(*) as like_num from post_like where post_like.type = 1 group by post_id) as l
	on p.id = l.post_id
; 

-- post_comment view
create view post_comment_view as 
select
	id, content, upload_time, author_id, post_id, parent_id,
	case when like_num is null then 0 else like_num end
from 
	post_comment as p
left join
	(select comment_id, count(*) as like_num from post_comment_like where post_comment_like.type = 1 group by comment_id) as l
	on p.id = l.comment_id
;

-- tag view
create view tag_view as
select
	id, name, description, cover, 
	case when follow_num is null then 0 else follow_num end, 
	case when post_num is null then 0 else post_num end
from
	tag as t
left join
	(select tag_id as tag_a, count(*) as follow_num from tag_follow group by tag_a) as follow
	on t.id = follow.tag_a
left join
	(select tag_id as tag_b, count(*) as post_num from post_tag group by tag_b) as pt
	on t.id = pt.tag_b
;

-- user view
create view user_view as
select
	id, username, password, email, token, avatar, 
	bio, homepage, intro, join_time, 
	case when follower_num is null then 0 else follower_num end, 
	case when followed_num is null then 0 else followed_num end,
	case when post_view_num is null then 0 else post_view_num end,
	case when post_like_num is null then 0 else post_like_num end 
from 
	sys_user as u 
left join
	(select follower_id, count(*) as followed_num from user_follow where follow = true group by follower_id) as followed
	on u.id = followed.follower_id
left join
	(select followed_id, count(*) as follower_num from user_follow where follow = true group by followed_id) as follower
	on u.id = follower.followed_id
left join
	(select author_id, sum(view_num) as post_view_num from post_view group by author_id) as p1
	on u.id = p1.author_id
left join
	(select author_id, sum(like_num) as post_like_num from post_view group by author_id) as p2
	on u.id = p2.author_id
;



