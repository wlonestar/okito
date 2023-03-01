alter table pin
add column fts tsvector;

update pin
set fts = setweight(to_tsvector('jiebacfg', content), 'A');
create index pin_fts_gin_index on pin using gin(fts);

alter table post
add column fts tsvector;

update post
set fts = setweight(to_tsvector('jiebacfg', content), 'A') || setweight(to_tsvector('jiebacfg', title), 'B') || setweight(to_tsvector('jiebacfg', summary), 'C');
create index post_fts_gin_index on post using gin(fts);
