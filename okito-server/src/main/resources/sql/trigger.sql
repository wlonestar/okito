-- 1
create function add_activity_post_like() returns trigger as $$ begin 
	insert into activity
	select nextval('activity_id_seq'), new.user_id, 1, 1, new.post_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 1, 1, new.post_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_post_like
after insert or update on post_like
for each row when (new.type = 1)
execute function add_activity_post_like();


create function add_activity_pin_like() returns trigger as $$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 1, 2, new.pin_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 1, 2, new.pin_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_pin_like
after insert or update on pin_like
for each row when (new.type = 1)
execute function add_activity_pin_like();


-- 2
create function add_activity_user_follow() returns trigger as $$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.follower_id, 2, 1, new.followed_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.follower_id, 2, 1, new.followed_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_user_follow
after insert or update on user_follow
for each row when (new.follow = true)
execute function add_activity_user_follow();


create function add_activity_user_column_follow() returns trigger as $$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 2, new.column_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 2, new.column_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_user_column_follow
after insert or update on user_column_follow
for each row when (new.follow = true)
execute function add_activity_user_column_follow();


create function add_activity_user_collection_follow() returns trigger as $$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 3, new.collect_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 3, new.collect_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_user_collection_follow
after insert or update on user_collection_follow
for each row when (new.follow = true)
execute function add_activity_user_collection_follow();


create function add_activity_tag_follow() returns trigger as $$ begin 
	insert into activity 
	select nextval('activity_id_seq'), new.user_id, 2, 4, new.tag_id, current_timestamp
	where not exists (
		select null from activity
		where (user_id, action_type, action_sub_type, target_id) = (new.user_id, 2, 4, new.tag_id)
	);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_or_update_tag_follow
after insert or update on tag_follow
for each row when (new.follow = true)
execute function add_activity_tag_follow();


-- 3
create function add_activity_post() returns trigger as $$ begin 
	insert into activity 
	values(nextval('activity_id_seq'), new.author_id, 3, 1, new.id, current_timestamp);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_post
after insert on post
for each row execute function add_activity_post();


create function add_activity_pin() returns trigger as $$ begin 
	insert into activity 
	values(nextval('activity_id_seq'), new.author_id, 3, 2, new.id, current_timestamp);
	return null;
end; $$ language plpgsql;

create trigger activity_after_insert_pin
after insert on pin
for each row execute function add_activity_pin();
