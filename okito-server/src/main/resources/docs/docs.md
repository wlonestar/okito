# okito

| Version | Update Time | Status | Author | Description |
|---------|-------------|--------|--------|-------------|
|v2023-02-22 21:50:44|2023-02-22 21:50:44|auto|@wjl|Created by smart-doc|



## pin comment controller
### select all pinComments
**URL:** http://localhost:8088/pin/comment

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 27,
  "message": "success",
  "data": {}
}
```

### select all pinComments by pinId
**URL:** http://localhost:8088/pin/comment/pin/{pinId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments by pinId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true|pinId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/pin/679
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 342,
  "message": "success",
  "data": {}
}
```

### select all pinComments by authorId
**URL:** http://localhost:8088/pin/comment/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/author/632
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 519,
  "message": "success",
  "data": {}
}
```

### select secondary PinComments by id
**URL:** http://localhost:8088/pin/comment/secondary/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select secondary PinComments by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/secondary/3
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 297,
  "message": "success",
  "data": {}
}
```

### select all pinComments by page
**URL:** http://localhost:8088/pin/comment/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 584,
  "message": "success",
  "data": {}
}
```

### select all pinComments by pinId and page
**URL:** http://localhost:8088/pin/comment/page/pin/{pinId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments by pinId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true|   pinId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/page/pin/598
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 497,
  "message": "success",
  "data": {}
}
```

### select all pinComments by authorId and page
**URL:** http://localhost:8088/pin/comment/page/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinComments by authorId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/page/author/627
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 155,
  "message": "success",
  "data": {}
}
```

### select secondary comments by id and page
**URL:** http://localhost:8088/pin/comment/page/secondary/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select secondary comments by id and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|      id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/page/secondary/691
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 474,
  "message": "success",
  "data": {}
}
```

### count pinComments by pin id
**URL:** http://localhost:8088/pin/comment/count/pin/{pinId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count pinComments by pin id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true|pin id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/count/pin/175
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 827,
  "message": "success",
  "data": {}
}
```

### select pinComment By id
**URL:** http://localhost:8088/pin/comment/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinComment By id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/418
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 978,
  "message": "success",
  "data": {}
}
```

### add a pinComment
**URL:** http://localhost:8088/pin/comment

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a pinComment

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|content|string|false|No comments found.|-|
|uploadTime|object|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|pinId|int64|false|No comments found.|-|
|parentId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/pin/comment --data '{
  "id": 767,
  "content": "ta9oi1",
  "uploadTime": {},
  "authorId": 237,
  "pinId": 123,
  "parentId": 782
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 257,
  "message": "success",
  "data": {}
}
```

### delete pinComment By id
**URL:** http://localhost:8088/pin/comment/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete pinComment By id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/pin/comment/309
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 93,
  "message": "success",
  "data": {}
}
```

## pin comment like controller
### select all pinCommentLikes
**URL:** http://localhost:8088/pin/comment/like

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinCommentLikes

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 929,
  "message": "success",
  "data": {}
}
```

### select all pinCommentLikes by userId
**URL:** http://localhost:8088/pin/comment/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinCommentLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like/425
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 865,
  "message": "success",
  "data": {}
}
```

### select all pinCommentLikes by page
**URL:** http://localhost:8088/pin/comment/like/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinCommentLikes by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 745,
  "message": "success",
  "data": {}
}
```

### select all pinCommentLikes by userId and page
**URL:** http://localhost:8088/pin/comment/like/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinCommentLikes by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like/page/882
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 159,
  "message": "success",
  "data": {}
}
```

### select pinCommentLike by id
**URL:** http://localhost:8088/pin/comment/like/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinCommentLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|true|commentId|-|
|userId|int64|true|   userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like/single?commentId=779&userId=971 --data '&779&971'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 193,
  "message": "success",
  "data": {}
}
```

### add a pinCommentLike
**URL:** http://localhost:8088/pin/comment/like

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a pinCommentLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/pin/comment/like --data '{
  "commentId": 715,
  "userId": 535,
  "type": 24083
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 250,
  "message": "success",
  "data": {}
}
```

### update a pinCommentLike
**URL:** http://localhost:8088/pin/comment/like

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update a pinCommentLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/pin/comment/like --data '{
  "commentId": 782,
  "userId": 682,
  "type": 14016
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 878,
  "message": "success",
  "data": {}
}
```

### delete pinCommentLike by id
**URL:** http://localhost:8088/pin/comment/like

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete pinCommentLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|true|commentId|-|
|userId|int64|true|   userId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/pin/comment/like?commentId=375&userId=195 --data '&375&195'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 9,
  "message": "success",
  "data": {}
}
```

## post comment controller
### select all postComments
**URL:** http://localhost:8088/post/comment

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 59,
  "message": "success",
  "data": {}
}
```

### select all postComments by postId
**URL:** http://localhost:8088/post/comment/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments by postId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/post/381
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 910,
  "message": "success",
  "data": {}
}
```

### select all postComments by authorId
**URL:** http://localhost:8088/post/comment/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/author/272
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 457,
  "message": "success",
  "data": {}
}
```

### select secondary postComments by id
**URL:** http://localhost:8088/post/comment/secondary/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select secondary postComments by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/secondary/6
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 139,
  "message": "success",
  "data": {}
}
```

### select all postComments by page
**URL:** http://localhost:8088/post/comment/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 594,
  "message": "success",
  "data": {}
}
```

### select all postComments by postId and page
**URL:** http://localhost:8088/post/comment/page/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments by postId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|  postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/page/post/475
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 306,
  "message": "success",
  "data": {}
}
```

### select all postComments by authorId and page
**URL:** http://localhost:8088/post/comment/page/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postComments by authorId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/page/author/851
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 850,
  "message": "success",
  "data": {}
}
```

### select secondary comments by id and page
**URL:** http://localhost:8088/post/comment/page/secondary/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select secondary comments by id and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|      id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/page/secondary/920
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 633,
  "message": "success",
  "data": {}
}
```

### select postComment By id
**URL:** http://localhost:8088/post/comment/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postComment By id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/262
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 241,
  "message": "success",
  "data": {}
}
```

### count postComments By post id
**URL:** http://localhost:8088/post/comment/count/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count postComments By post id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|post id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/count/post/729
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 191,
  "message": "success",
  "data": {}
}
```

### add a postComment
**URL:** http://localhost:8088/post/comment

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a postComment

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|content|string|false|No comments found.|-|
|uploadTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|postId|int64|false|No comments found.|-|
|parentId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/post/comment --data '{
  "id": 348,
  "content": "p6e0mz",
  "uploadTime": "2023-02-22 21:51:50",
  "authorId": 783,
  "postId": 272,
  "parentId": 798
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 186,
  "message": "success",
  "data": {}
}
```

### delete pinComment By id
**URL:** http://localhost:8088/post/comment/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete pinComment By id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/post/comment/384
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 834,
  "message": "success",
  "data": {}
}
```

## post comment like controller
### select all postCommentLikes
**URL:** http://localhost:8088/post/comment/like

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postCommentLikes

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 417,
  "message": "success",
  "data": {}
}
```

### select all postCommentLikes by userId
**URL:** http://localhost:8088/post/comment/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postCommentLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like/557
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 501,
  "message": "success",
  "data": {}
}
```

### select all postCommentLikes by page
**URL:** http://localhost:8088/post/comment/like/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postCommentLikes by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 877,
  "message": "success",
  "data": {}
}
```

### select all postCommentLikes by userId and page
**URL:** http://localhost:8088/post/comment/like/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postCommentLikes by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like/page/923
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 186,
  "message": "success",
  "data": {}
}
```

### select postCommentLike by id
**URL:** http://localhost:8088/post/comment/like/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postCommentLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|true|commentId|-|
|userId|int64|true|   userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like/single?commentId=889&userId=743 --data '&889&743'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 13,
  "message": "success",
  "data": {}
}
```

### add a postCommentLike
**URL:** http://localhost:8088/post/comment/like

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a postCommentLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/post/comment/like --data '{
  "commentId": 815,
  "userId": 332,
  "type": 5040
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 324,
  "message": "success",
  "data": {}
}
```

### update a postCommentLike
**URL:** http://localhost:8088/post/comment/like

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update a postCommentLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/post/comment/like --data '{
  "commentId": 365,
  "userId": 68,
  "type": 13044
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 297,
  "message": "success",
  "data": {}
}
```

### delete postCommentLike by id
**URL:** http://localhost:8088/post/comment/like

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete postCommentLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|commentId|int64|true|commentId|-|
|userId|int64|true|   userId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/post/comment/like?commentId=774&userId=181 --data '&774&181'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 520,
  "message": "success",
  "data": {}
}
```

## pin controller
### select all pins
**URL:** http://localhost:8088/pin

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pins

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 190,
  "message": "success",
  "data": {}
}
```

### select all pins by authorId
**URL:** http://localhost:8088/pin/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pins by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/author/312
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 396,
  "message": "success",
  "data": {}
}
```

### select all pins by page
**URL:** http://localhost:8088/pin/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pins by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 189,
  "message": "success",
  "data": {}
}
```

### select all pins by page and by authorId
**URL:** http://localhost:8088/pin/page/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pins by page and by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/page/author/590
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 831,
  "message": "success",
  "data": {}
}
```

### count pins by author id
**URL:** http://localhost:8088/pin/count/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count pins by author id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|author id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/count/author/311
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 118,
  "message": "success",
  "data": {}
}
```

### select pin by id
**URL:** http://localhost:8088/pin/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pin by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/158
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 656,
  "message": "success",
  "data": {}
}
```

### add a pin
**URL:** http://localhost:8088/pin

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a pin

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|content|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/pin --data '{
  "id": 689,
  "content": "guhoex",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 944
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 920,
  "message": "success",
  "data": {}
}
```

### update pin
**URL:** http://localhost:8088/pin

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update pin

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|content|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|viewNum|int64|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/pin --data '{
  "id": 301,
  "content": "q4f0di",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 651,
  "viewNum": 516
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 674,
  "message": "success",
  "data": {}
}
```

### delete pin by id
**URL:** http://localhost:8088/pin/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete pin by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/pin/190
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 458,
  "message": "success",
  "data": {}
}
```

## pin like controller
### select all pinLikes
**URL:** http://localhost:8088/pin/like

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinLikes

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 808,
  "message": "success",
  "data": {}
}
```

### select all pinLikes by userId
**URL:** http://localhost:8088/pin/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like/657
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 426,
  "message": "success",
  "data": {}
}
```

### select all pinLikes by page
**URL:** http://localhost:8088/pin/like/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinLikes by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 90,
  "message": "success",
  "data": {}
}
```

### select all pinLikes by userId and page
**URL:** http://localhost:8088/pin/like/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pinLikes by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like/page/264
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 368,
  "message": "success",
  "data": {}
}
```

### select pinLike by id
**URL:** http://localhost:8088/pin/like/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true| pinId|-|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like/single?pinId=281&userId=103 --data '&281&103'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 775,
  "message": "success",
  "data": {}
}
```

### add a pinLike
**URL:** http://localhost:8088/pin/like

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a pinLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/pin/like --data '{
  "pinId": 736,
  "userId": 479,
  "type": 15270
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 113,
  "message": "success",
  "data": {}
}
```

### update a pinLike
**URL:** http://localhost:8088/pin/like

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update a pinLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/pin/like --data '{
  "pinId": 948,
  "userId": 811,
  "type": 2185
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 261,
  "message": "success",
  "data": {}
}
```

### delete pinLike by id
**URL:** http://localhost:8088/pin/like

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete pinLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true| pinId|-|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/pin/like?pinId=461&userId=33 --data '&461&33'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 534,
  "message": "success",
  "data": {}
}
```

## category controller
### select all categories
**URL:** http://localhost:8088/category

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all categories

**Request-example:**
```
curl -X GET -i http://localhost:8088/category
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 241,
  "message": "success",
  "data": {}
}
```

### select all categories by page
**URL:** http://localhost:8088/category/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all categories by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/category/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 517,
  "message": "success",
  "data": {}
}
```

### select category by id
**URL:** http://localhost:8088/category/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select category by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/category/711
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 536,
  "message": "success",
  "data": {}
}
```

### add a category
**URL:** http://localhost:8088/category

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a category

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/category --data '{
  "id": 254,
  "name": "benjamin.oreilly",
  "cover": "foq7r9",
  "description": "w07dvo"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 253,
  "message": "success",
  "data": {}
}
```

### update category
**URL:** http://localhost:8088/category

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update category

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/category --data '{
  "id": 544,
  "name": "benjamin.oreilly",
  "cover": "abixqg",
  "description": "baz6x3"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 824,
  "message": "success",
  "data": {}
}
```

### delete category by id
**URL:** http://localhost:8088/category/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete category by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/category/89
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 639,
  "message": "success",
  "data": {}
}
```

## collection controller
### select all collections
**URL:** http://localhost:8088/collection

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all collections

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 273,
  "message": "success",
  "data": {}
}
```

### select all collections by page
**URL:** http://localhost:8088/collection/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all collections by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 89,
  "message": "success",
  "data": {}
}
```

### select collection by id
**URL:** http://localhost:8088/collection/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select collection by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/799
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 121,
  "message": "success",
  "data": {}
}
```

### add a collection
**URL:** http://localhost:8088/collection

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a collection

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/collection --data '{
  "id": 894,
  "name": "benjamin.oreilly",
  "cover": "x73tgf",
  "description": "447nrw",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 87
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 161,
  "message": "success",
  "data": {}
}
```

### update collection
**URL:** http://localhost:8088/collection

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update collection

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/collection --data '{
  "id": 155,
  "name": "benjamin.oreilly",
  "cover": "cxmmgo",
  "description": "ih9ipq",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 341
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 842,
  "message": "success",
  "data": {}
}
```

### delete collection by id
**URL:** http://localhost:8088/collection/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete collection by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/collection/549
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 418,
  "message": "success",
  "data": {}
}
```

## column controller
### select all columns
**URL:** http://localhost:8088/column

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all columns

**Request-example:**
```
curl -X GET -i http://localhost:8088/column
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 557,
  "message": "success",
  "data": {}
}
```

### select all followed columns by authorId
**URL:** http://localhost:8088/column/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all followed columns by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/author/956
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 785,
  "message": "success",
  "data": {}
}
```

### select all followed columns by userId
**URL:** http://localhost:8088/column/follow/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all followed columns by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/follow/589
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 530,
  "message": "success",
  "data": {}
}
```

### select all columns by page
**URL:** http://localhost:8088/column/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all columns by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 449,
  "message": "success",
  "data": {}
}
```

### select column by id
**URL:** http://localhost:8088/column/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select column by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/960
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 8,
  "message": "success",
  "data": {}
}
```

### count posts num by column id
**URL:** http://localhost:8088/column/count/post/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count posts num by column id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|column id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/count/post/928
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 355,
  "message": "success",
  "data": {}
}
```

### count posts num by column id
**URL:** http://localhost:8088/column/count/follow/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count posts num by column id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|column id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/count/follow/378
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 969,
  "message": "success",
  "data": {}
}
```

### add a column
**URL:** http://localhost:8088/column

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a column

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/column --data '{
  "id": 402,
  "name": "benjamin.oreilly",
  "cover": "33o4ev",
  "description": "iy52lv",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 909
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 237,
  "message": "success",
  "data": {}
}
```

### update column
**URL:** http://localhost:8088/column

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update column

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/column --data '{
  "id": 890,
  "name": "benjamin.oreilly",
  "cover": "kgh5s2",
  "description": "ridbik",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "authorId": 605
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 761,
  "message": "success",
  "data": {}
}
```

### delete column by id
**URL:** http://localhost:8088/column/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete column by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/column/996
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 876,
  "message": "success",
  "data": {}
}
```

## post controller
### select all posts
**URL:** http://localhost:8088/post

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all posts

**Request-example:**
```
curl -X GET -i http://localhost:8088/post
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 200,
  "message": "success",
  "data": {}
}
```

### select posts by cateId
**URL:** http://localhost:8088/post/cate/{cateId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by cateId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|cateId|int64|true|cateId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/cate/590
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 517,
  "message": "success",
  "data": {}
}
```

### select posts by tagId
**URL:** http://localhost:8088/post/tag/{tagId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by tagId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|tagId|int64|true|tagId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/tag/71
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 626,
  "message": "success",
  "data": {}
}
```

### select posts by collectionId
**URL:** http://localhost:8088/post/collection/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by collectionId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collectionId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/collection/86
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 87,
  "message": "success",
  "data": {}
}
```

### select posts by columnId
**URL:** http://localhost:8088/post/column/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by columnId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/column/690
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 662,
  "message": "success",
  "data": {}
}
```

### select posts by authorId
**URL:** http://localhost:8088/post/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/author/428
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 884,
  "message": "success",
  "data": {}
}
```

### select posts by page
**URL:** http://localhost:8088/post/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 44,
  "message": "success",
  "data": {}
}
```

### select posts by cateId and page
**URL:** http://localhost:8088/post/page/cate/{cateId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by cateId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|cateId|int64|true|  cateId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page/cate/699
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 246,
  "message": "success",
  "data": {}
}
```

### select posts by tagId and page
**URL:** http://localhost:8088/post/page/tag/{tagId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by tagId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|tagId|int64|true|   tagId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page/tag/437
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 160,
  "message": "success",
  "data": {}
}
```

### select posts by collectionId and page
**URL:** http://localhost:8088/post/page/collection/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by collectionId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collectionId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page/collection/959
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 500,
  "message": "success",
  "data": {}
}
```

### select posts by columnId and page
**URL:** http://localhost:8088/post/page/column/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by columnId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page/column/504
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 293,
  "message": "success",
  "data": {}
}
```

### select posts by authorId and page
**URL:** http://localhost:8088/post/page/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts by authorId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/page/author/236
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 423,
  "message": "success",
  "data": {}
}
```

### select post by id
**URL:** http://localhost:8088/post/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select post by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/625
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 968,
  "message": "success",
  "data": {}
}
```

### add a post
**URL:** http://localhost:8088/post

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a post

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|title|string|false|No comments found.|-|
|summary|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|content|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|draft|boolean|false|No comments found.|-|
|cateId|int64|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|viewNum|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/post --data '{
  "id": 474,
  "title": "hxown6",
  "summary": "rxlv20",
  "cover": "ximu57",
  "content": "fdffwj",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "draft": true,
  "cateId": 460,
  "authorId": 255,
  "viewNum": 166
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 972,
  "message": "success",
  "data": {}
}
```

### update post
**URL:** http://localhost:8088/post

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update post

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|title|string|false|No comments found.|-|
|summary|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|content|string|false|No comments found.|-|
|createTime|string|false|No comments found.|-|
|updateTime|string|false|No comments found.|-|
|draft|boolean|false|No comments found.|-|
|cateId|int64|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|viewNum|int64|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/post --data '{
  "id": 184,
  "title": "wgt18u",
  "summary": "3vwlpz",
  "cover": "uajonk",
  "content": "f30vg8",
  "createTime": "2023-02-22 21:51:50",
  "updateTime": "2023-02-22 21:51:50",
  "draft": true,
  "cateId": 210,
  "authorId": 393,
  "viewNum": 242
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 216,
  "message": "success",
  "data": {}
}
```

### delete post by id
**URL:** http://localhost:8088/post/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete post by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/post/350
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 180,
  "message": "success",
  "data": {}
}
```

### delete posts by ids
**URL:** http://localhost:8088/post

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete posts by ids

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|ids|array|true|list of id,[array of int64]|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/post?ids=786,825
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 707,
  "message": "success",
  "data": {}
}
```

## post like controller
### select all postLikes
**URL:** http://localhost:8088/post/like

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postLikes

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 36,
  "message": "success",
  "data": {}
}
```

### select all postLikes by userId
**URL:** http://localhost:8088/post/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like/105
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 236,
  "message": "success",
  "data": {}
}
```

### select all postLikes by page
**URL:** http://localhost:8088/post/like/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postLikes by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 239,
  "message": "success",
  "data": {}
}
```

### select all postLikes by userId and page
**URL:** http://localhost:8088/post/like/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all postLikes by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like/page/96
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 272,
  "message": "success",
  "data": {}
}
```

### select postLike by id
**URL:** http://localhost:8088/post/like/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like/single?postId=258&userId=721 --data '&258&721'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 475,
  "message": "success",
  "data": {}
}
```

### add a postLike
**URL:** http://localhost:8088/post/like

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a postLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/post/like --data '{
  "postId": 848,
  "userId": 836,
  "type": 32374
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 765,
  "message": "success",
  "data": {}
}
```

### update postLike
**URL:** http://localhost:8088/post/like

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update postLike

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/post/like --data '{
  "postId": 911,
  "userId": 328,
  "type": 27470
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 878,
  "message": "success",
  "data": {}
}
```

### delete postLike by id
**URL:** http://localhost:8088/post/like

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete postLike by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/post/like?postId=40&userId=128 --data '&40&128'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 989,
  "message": "success",
  "data": {}
}
```

## tag controller
### select all tags
**URL:** http://localhost:8088/tag

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 705,
  "message": "success",
  "data": {}
}
```

### select all tags by postId
**URL:** http://localhost:8088/tag/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags by postId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/post/747
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 497,
  "message": "success",
  "data": {}
}
```

### select all tags by followerId
**URL:** http://localhost:8088/tag/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags by followerId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/follower/116
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 58,
  "message": "success",
  "data": {}
}
```

### select all tags by page
**URL:** http://localhost:8088/tag/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 300,
  "message": "success",
  "data": {}
}
```

### select all tags by postId and page
**URL:** http://localhost:8088/tag/page/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags by postId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|  postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/page/post/770
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 589,
  "message": "success",
  "data": {}
}
```

### select all tags by followerId and page
**URL:** http://localhost:8088/tag/page/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all tags by followerId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/page/follower/401
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 464,
  "message": "success",
  "data": {}
}
```

### select tag by id
**URL:** http://localhost:8088/tag/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select tag by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/205
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 529,
  "message": "success",
  "data": {}
}
```

### add a tag
**URL:** http://localhost:8088/tag

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a tag

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/tag --data '{
  "id": 129,
  "name": "benjamin.oreilly",
  "cover": "bb4a0h",
  "description": "l5iczq"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 380,
  "message": "success",
  "data": {}
}
```

### update tag
**URL:** http://localhost:8088/tag

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update tag

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|
|cover|string|false|No comments found.|-|
|description|string|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/tag --data '{
  "id": 885,
  "name": "benjamin.oreilly",
  "cover": "xtuyg8",
  "description": "l33ze4"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 961,
  "message": "success",
  "data": {}
}
```

### delete tag by id
**URL:** http://localhost:8088/tag/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete tag by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/tag/39
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 459,
  "message": "success",
  "data": {}
}
```

## auth controller
### user login
**URL:** http://localhost:8088/auth/login

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** user login

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|email|string|false|No comments found.|-|
|password|string|false|No comments found.|-|
|device|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/login --data '{
  "email": "nola.murphy@gmail.com",
  "password": "xympnx",
  "device": "h0wkm6"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 138,
  "message": "success",
  "data": {}
}
```

### user sign up<br><br>TODO: before sign out should confirm captcha by email
**URL:** http://localhost:8088/auth/signUp

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** user sign up
<p>
TODO: before sign out should confirm captcha by email

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|username|string|false|No comments found.|-|
|password|string|false|No comments found.|-|
|email|string|false|No comments found.|-|
|avatar|string|false|No comments found.|-|
|joinTime|string|false|No comments found.|-|
|roleId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/signUp --data '{
  "username": "benjamin.oreilly",
  "password": "j182b6",
  "email": "nola.murphy@gmail.com",
  "avatar": "aw6ce1",
  "joinTime": "2023-02-22 21:51:50",
  "roleId": 916
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 472,
  "message": "success",
  "data": {}
}
```

### user register<br><br>TODO: before register should confirm captcha by email
**URL:** http://localhost:8088/auth/register

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** user register
<p>
TODO: before register should confirm captcha by email

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|username|string|false|No comments found.|-|
|password|string|false|No comments found.|-|
|email|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/register --data '{
  "username": "benjamin.oreilly",
  "password": "5ycv0y",
  "email": "nola.murphy@gmail.com"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 547,
  "message": "success",
  "data": {}
}
```

### check login stata
**URL:** http://localhost:8088/auth/check

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** check login stata

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|tokenValue|string|true|tokenValue|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/auth/check?tokenValue=5hxqzn --data '&5hxqzn'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 446,
  "message": "success",
  "data": {}
}
```

### user logout
**URL:** http://localhost:8088/auth/logout

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** user logout

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|token|string|true|token|-|

**Request-example:**
```
curl -X POST -i http://localhost:8088/auth/logout --data 'token=tspzsy'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 702,
  "message": "success",
  "data": {}
}
```

## role controller
### select all role
**URL:** http://localhost:8088/role

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all role

**Request-example:**
```
curl -X GET -i http://localhost:8088/role
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 310,
  "message": "success",
  "data": {}
}
```

### select all roles by page
**URL:** http://localhost:8088/role/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all roles by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/role/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 94,
  "message": "success",
  "data": {}
}
```

### select role by id
**URL:** http://localhost:8088/role/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select role by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/role/251
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 278,
  "message": "success",
  "data": {}
}
```

### add a role
**URL:** http://localhost:8088/role

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a role

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/role --data '{
  "id": 932,
  "name": "benjamin.oreilly"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 615,
  "message": "success",
  "data": {}
}
```

### update role
**URL:** http://localhost:8088/role

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update role

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|name|string|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/role --data '{
  "id": 866,
  "name": "benjamin.oreilly"
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 507,
  "message": "success",
  "data": {}
}
```

### delete role by id
**URL:** http://localhost:8088/role/{id}

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete role by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/role/566
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 565,
  "message": "success",
  "data": {}
}
```

## user collection controller
### select all userCollections
**URL:** http://localhost:8088/user/collection

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all userCollections

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 596,
  "message": "success",
  "data": {}
}
```

### TODO<br> <br>select userCollections by userId and type
**URL:** http://localhost:8088/user/collection/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** TODO
<p></p>
select userCollections by userId and type

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|follow|boolean|true|follow|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/784?follow=true --data '&true'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 767,
  "message": "success",
  "data": {}
}
```

### TODO<br> <br>select userCollections by collectionId and type
**URL:** http://localhost:8088/user/collection/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** TODO
<p></p>
select userCollections by collectionId and type

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collectionId|-|

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|follow|boolean|true|follow|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/203?follow=true --data '&true'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 647,
  "message": "success",
  "data": {}
}
```

### select all userCollections by page
**URL:** http://localhost:8088/user/collection/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all userCollections by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 57,
  "message": "success",
  "data": {}
}
```

### TODO<br> <br>select userCollections by userId, type and page
**URL:** http://localhost:8088/user/collection/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** TODO
<p></p>
select userCollections by userId, type and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userID|-|

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|follow|boolean|true| follow|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/page/812?follow=true --data '&true'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 539,
  "message": "success",
  "data": {}
}
```

### TODO<br> <br>select userCollections by collectionId, type and page
**URL:** http://localhost:8088/user/collection/page/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** TODO
<p></p>
select userCollections by collectionId, type and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collectionId|-|

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|follow|boolean|true|follow|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/page/320?follow=true --data '&true'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 635,
  "message": "success",
  "data": {}
}
```

### select userCollection by id
**URL:** http://localhost:8088/user/collection/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select userCollection by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|      userId|-|
|collectionId|int64|true|collectionId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/collection/single?userId=619&collectionId=67 --data '&619&67'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 717,
  "message": "success",
  "data": {}
}
```

### add a userCollection
**URL:** http://localhost:8088/user/collection

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a userCollection

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|collectId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/user/collection --data '{
  "userId": 812,
  "collectId": 368,
  "follow": true
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 578,
  "message": "success",
  "data": {}
}
```

### update userCollection
**URL:** http://localhost:8088/user/collection

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update userCollection

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|collectId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/user/collection --data '{
  "userId": 21,
  "collectId": 235,
  "follow": true
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 627,
  "message": "success",
  "data": {}
}
```

### delete userCollection by id
**URL:** http://localhost:8088/user/collection

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete userCollection by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|      userId|-|
|collectionId|int64|true|collectionId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/user/collection?userId=3&collectionId=480 --data '&3&480'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 891,
  "message": "success",
  "data": {}
}
```

## user column controller
### select all UserColumns
**URL:** http://localhost:8088/user/column

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all UserColumns

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 277,
  "message": "success",
  "data": {}
}
```

### select all UserColumnFollows by userId
**URL:** http://localhost:8088/user/column/user/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all UserColumnFollows by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/user/519
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 594,
  "message": "success",
  "data": {}
}
```

### select all UserColumnFollows by columnId
**URL:** http://localhost:8088/user/column/column/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all UserColumnFollows by columnId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/column/699
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 384,
  "message": "success",
  "data": {}
}
```

### select all UserColumns by page
**URL:** http://localhost:8088/user/column/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all UserColumns by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 745,
  "message": "success",
  "data": {}
}
```

### select UserColumns by userId, type and page
**URL:** http://localhost:8088/user/column/page/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select UserColumns by userId, type and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userID|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/page/264
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 294,
  "message": "success",
  "data": {}
}
```

### select UserColumns by columnId and page
**URL:** http://localhost:8088/user/column/page/{columnId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select UserColumns by columnId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/page/511
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 425,
  "message": "success",
  "data": {}
}
```

### select UserColumn by id
**URL:** http://localhost:8088/user/column/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select UserColumn by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/column/single?userId=565&columnId=798 --data '&565&798'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 605,
  "message": "success",
  "data": {}
}
```

### add a UserColumn
**URL:** http://localhost:8088/user/column

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a UserColumn

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|columnId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/user/column --data '{
  "userId": 183,
  "columnId": 867,
  "follow": true
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 33,
  "message": "success",
  "data": {}
}
```

### update UserColumn
**URL:** http://localhost:8088/user/column

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update UserColumn

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|columnId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/user/column --data '{
  "userId": 712,
  "columnId": 849,
  "follow": true
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 715,
  "message": "success",
  "data": {}
}
```

### delete UserColumn by id
**URL:** http://localhost:8088/user/column

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete UserColumn by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|
|columnId|int64|true|columnId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/user/column?userId=106&columnId=566 --data '&106&566'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 613,
  "message": "success",
  "data": {}
}
```

## 
### select user by id
**URL:** http://localhost:8088/user/{id}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select user by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|true|id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/636
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 289,
  "message": "success",
  "data": {}
}
```

## user follow controller
### select all userFollows
**URL:** http://localhost:8088/user/follow

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all userFollows

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 263,
  "message": "success",
  "data": {}
}
```

### select followers by userId
**URL:** http://localhost:8088/user/follow/follower/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followers by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/follower/40
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 793,
  "message": "success",
  "data": {}
}
```

### select followeds by userId
**URL:** http://localhost:8088/user/follow/followed/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followeds by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/followed/679
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 245,
  "message": "success",
  "data": {}
}
```

### select all userFollows by page
**URL:** http://localhost:8088/user/follow/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all userFollows by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/page
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 915,
  "message": "success",
  "data": {}
}
```

### select followers by userId and page
**URL:** http://localhost:8088/user/follow/page/follower/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followers by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/page/follower/872
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 361,
  "message": "success",
  "data": {}
}
```

### select followeds by userId and page
**URL:** http://localhost:8088/user/follow/page/followed/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followeds by userId and page

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|  userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/page/followed/959
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 686,
  "message": "success",
  "data": {}
}
```

### add userFollow
**URL:** http://localhost:8088/user/follow

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add userFollow

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|false|No comments found.|-|
|followedId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/user/follow --data '{
  "followerId": 871,
  "followedId": 518,
  "type": 17501
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 760,
  "message": "success",
  "data": {}
}
```

### update userFollow
**URL:** http://localhost:8088/user/follow

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update userFollow

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|false|No comments found.|-|
|followedId|int64|false|No comments found.|-|
|type|int16|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/user/follow --data '{
  "followerId": 703,
  "followedId": 696,
  "type": 13813
}'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 478,
  "message": "success",
  "data": {}
}
```

### delete userFollow by id
**URL:** http://localhost:8088/user/follow

**Type:** DELETE

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** delete userFollow by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|
|followedId|int64|true|followedId|-|

**Request-example:**
```
curl -X DELETE -i http://localhost:8088/user/follow?followerId=211&followedId=761 --data '&211&761'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677073845989,
  "status": 550,
  "message": "success",
  "data": {}
}
```


