
activity 动态

id 主键

userId 动作的执行人

actionType 动作的类别

actionSubType 动作的子分类

- like 点赞

  - post 文章
  
  - pin 想法

- follow 关注

  - user 用户

  - column 专栏

  - collection 收藏夹

- upload 发布

  - post 文章
  
  - pin 想法

targetId 对象的 id

execTime 执行时间

```sql
create table activity (
  id int8 primary key,
  user_id int8 not null,
  action_type int2 not null,
  action_sub_type int2 not null,
  target_id int8 not null,
  exec_time timestamptz not null 
)
```
