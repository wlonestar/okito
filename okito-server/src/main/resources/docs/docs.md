# okito

| Version | Update Time | Status | Author | Description |
|---------|-------------|--------|--------|-------------|
|v2023-02-28 13:58:05|2023-02-28 13:58:05|auto|@wjl|Created by smart-doc|



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
  "timestamp": 1677563886908,
  "status": 304,
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
curl -X GET -i http://localhost:8088/pin/comment/pin/111
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
  "timestamp": 1677563886908,
  "status": 730,
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
curl -X GET -i http://localhost:8088/pin/comment/author/745
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
  "timestamp": 1677563886908,
  "status": 111,
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
curl -X GET -i http://localhost:8088/pin/comment/secondary/546
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
  "timestamp": 1677563886908,
  "status": 212,
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
  "timestamp": 1677563886908,
  "status": 167,
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
curl -X GET -i http://localhost:8088/pin/comment/page/pin/179
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
  "timestamp": 1677563886908,
  "status": 817,
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
curl -X GET -i http://localhost:8088/pin/comment/page/author/94
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
  "timestamp": 1677563886908,
  "status": 633,
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
curl -X GET -i http://localhost:8088/pin/comment/page/secondary/501
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
  "timestamp": 1677563886908,
  "status": 266,
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
curl -X GET -i http://localhost:8088/pin/comment/count/pin/727
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
  "timestamp": 1677563886908,
  "status": 349,
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
curl -X GET -i http://localhost:8088/pin/comment/453
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
  "timestamp": 1677563886908,
  "status": 653,
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
|uploadTime|string|false|No comments found.|-|
|authorId|int64|false|No comments found.|-|
|pinId|int64|false|No comments found.|-|
|parentId|int64|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/pin/comment --data '{
  "id": 776,
  "content": "kytk2d",
  "uploadTime": "2023-02-28 13:58:06",
  "authorId": 815,
  "pinId": 290,
  "parentId": 609
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
  "timestamp": 1677563886908,
  "status": 861,
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
curl -X DELETE -i http://localhost:8088/pin/comment/581
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
  "timestamp": 1677563886908,
  "status": 334,
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
  "timestamp": 1677563886908,
  "status": 789,
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
curl -X GET -i http://localhost:8088/pin/comment/like/439
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
  "timestamp": 1677563886908,
  "status": 635,
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
  "timestamp": 1677563886908,
  "status": 924,
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
curl -X GET -i http://localhost:8088/pin/comment/like/page/855
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
  "timestamp": 1677563886908,
  "status": 2,
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
curl -X GET -i http://localhost:8088/pin/comment/like/single?commentId=56&userId=248 --data '&56&248'
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
  "timestamp": 1677563886908,
  "status": 695,
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
  "commentId": 108,
  "userId": 209,
  "type": 27050
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
  "timestamp": 1677563886908,
  "status": 857,
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
  "commentId": 823,
  "userId": 63,
  "type": 5406
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
  "timestamp": 1677563886908,
  "status": 724,
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
curl -X DELETE -i http://localhost:8088/pin/comment/like?commentId=801&userId=676 --data '&801&676'
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
  "timestamp": 1677563886908,
  "status": 712,
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
  "timestamp": 1677563886908,
  "status": 110,
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
curl -X GET -i http://localhost:8088/post/comment/post/941
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
  "timestamp": 1677563886908,
  "status": 639,
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
curl -X GET -i http://localhost:8088/post/comment/author/668
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
  "timestamp": 1677563886908,
  "status": 843,
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
curl -X GET -i http://localhost:8088/post/comment/secondary/903
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
  "timestamp": 1677563886908,
  "status": 730,
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
  "timestamp": 1677563886908,
  "status": 814,
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
curl -X GET -i http://localhost:8088/post/comment/page/post/342
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
  "timestamp": 1677563886908,
  "status": 827,
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
curl -X GET -i http://localhost:8088/post/comment/page/author/304
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
  "timestamp": 1677563886908,
  "status": 890,
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
curl -X GET -i http://localhost:8088/post/comment/page/secondary/192
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
  "timestamp": 1677563886908,
  "status": 998,
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
curl -X GET -i http://localhost:8088/post/comment/810
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
  "timestamp": 1677563886908,
  "status": 199,
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
curl -X GET -i http://localhost:8088/post/comment/count/post/861
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
  "timestamp": 1677563886908,
  "status": 95,
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
  "id": 626,
  "content": "t49np7",
  "uploadTime": "2023-02-28 13:58:07",
  "authorId": 210,
  "postId": 46,
  "parentId": 114
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
  "timestamp": 1677563886908,
  "status": 97,
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
curl -X DELETE -i http://localhost:8088/post/comment/178
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
  "timestamp": 1677563886908,
  "status": 143,
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
  "timestamp": 1677563886908,
  "status": 434,
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
curl -X GET -i http://localhost:8088/post/comment/like/280
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
  "timestamp": 1677563886908,
  "status": 512,
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
  "timestamp": 1677563886908,
  "status": 44,
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
curl -X GET -i http://localhost:8088/post/comment/like/page/95
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
  "timestamp": 1677563886908,
  "status": 497,
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
curl -X GET -i http://localhost:8088/post/comment/like/single?commentId=845&userId=365 --data '&845&365'
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
  "timestamp": 1677563886908,
  "status": 457,
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
  "commentId": 227,
  "userId": 655,
  "type": 3579
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
  "timestamp": 1677563886908,
  "status": 609,
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
  "commentId": 688,
  "userId": 646,
  "type": 18511
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
  "timestamp": 1677563886908,
  "status": 975,
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
curl -X DELETE -i http://localhost:8088/post/comment/like?commentId=748&userId=977 --data '&748&977'
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
  "timestamp": 1677563886908,
  "status": 804,
  "message": "success",
  "data": {}
}
```

## pin controller
### select recommend 100 pins
**URL:** http://localhost:8088/pin/recommend

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select recommend 100 pins

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/recommend
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
  "timestamp": 1677563886908,
  "status": 881,
  "message": "success",
  "data": {}
}
```

### search by keywords
**URL:** http://localhost:8088/pin/search

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** search by keywords

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|q|string|true|keywords|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/search?q=5ewdk2 --data '&5ewdk2'
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
  "timestamp": 1677563886908,
  "status": 9,
  "message": "success",
  "data": {}
}
```

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
  "timestamp": 1677563886908,
  "status": 276,
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
curl -X GET -i http://localhost:8088/pin/author/671
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
  "timestamp": 1677563886908,
  "status": 219,
  "message": "success",
  "data": {}
}
```

### select all pins written by user followed by id
**URL:** http://localhost:8088/pin/followed/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all pins written by user followed by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/followed/486
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
  "timestamp": 1677563886908,
  "status": 167,
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
  "timestamp": 1677563886908,
  "status": 883,
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
curl -X GET -i http://localhost:8088/pin/page/author/277
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
  "timestamp": 1677563886908,
  "status": 422,
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
curl -X GET -i http://localhost:8088/pin/count/author/173
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
  "timestamp": 1677563886908,
  "status": 872,
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
curl -X GET -i http://localhost:8088/pin/366
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
  "timestamp": 1677563886908,
  "status": 12,
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
  "id": 200,
  "content": "jrekr5",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 597
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
  "timestamp": 1677563886908,
  "status": 739,
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
  "id": 834,
  "content": "cy61nf",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 972,
  "viewNum": 56
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
  "timestamp": 1677563886908,
  "status": 133,
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
curl -X DELETE -i http://localhost:8088/pin/274
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
  "timestamp": 1677563886908,
  "status": 740,
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
  "timestamp": 1677563886908,
  "status": 536,
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
curl -X GET -i http://localhost:8088/pin/like/422
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
  "timestamp": 1677563886908,
  "status": 319,
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
  "timestamp": 1677563886908,
  "status": 369,
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
curl -X GET -i http://localhost:8088/pin/like/page/703
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
  "timestamp": 1677563886908,
  "status": 155,
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
curl -X GET -i http://localhost:8088/pin/like/single?pinId=38&userId=982 --data '&38&982'
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
  "timestamp": 1677563886908,
  "status": 733,
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
  "pinId": 471,
  "userId": 980,
  "type": 10330
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
  "timestamp": 1677563886908,
  "status": 670,
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
  "pinId": 864,
  "userId": 355,
  "type": 25154
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
  "timestamp": 1677563886908,
  "status": 374,
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
curl -X DELETE -i http://localhost:8088/pin/like?pinId=622&userId=89 --data '&622&89'
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
  "timestamp": 1677563886908,
  "status": 368,
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
  "timestamp": 1677563886908,
  "status": 287,
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
curl -X GET -i http://localhost:8088/category/48
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
  "timestamp": 1677563886908,
  "status": 943,
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
  "id": 451,
  "name": "ned.botsford",
  "cover": "sb45el",
  "description": "cf3v9k"
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
  "timestamp": 1677563886908,
  "status": 618,
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
  "id": 572,
  "name": "ned.botsford",
  "cover": "nuxc7b",
  "description": "3197n1"
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
  "timestamp": 1677563886908,
  "status": 259,
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
curl -X DELETE -i http://localhost:8088/category/569
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
  "timestamp": 1677563886908,
  "status": 470,
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
  "timestamp": 1677563886908,
  "status": 783,
  "message": "success",
  "data": {}
}
```

### select all collections by author id
**URL:** http://localhost:8088/collection/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all collections by author id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|author id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/author/481
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
  "timestamp": 1677563886908,
  "status": 447,
  "message": "success",
  "data": {}
}
```

### select all collections by follower id
**URL:** http://localhost:8088/collection/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all collections by follower id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|follower id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/follower/728
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
  "timestamp": 1677563886908,
  "status": 547,
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
curl -X GET -i http://localhost:8088/collection/493
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
  "timestamp": 1677563886908,
  "status": 599,
  "message": "success",
  "data": {}
}
```

### count collections by author id
**URL:** http://localhost:8088/collection/count/posts/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count collections by author id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|author id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/count/posts/435
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
  "timestamp": 1677563886908,
  "status": 458,
  "message": "success",
  "data": {}
}
```

### count posts by collection id
**URL:** http://localhost:8088/collection/count/collection/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count posts by collection id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collection id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/count/collection/386
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
  "timestamp": 1677563886908,
  "status": 101,
  "message": "success",
  "data": {}
}
```

### count posts num by collection id
**URL:** http://localhost:8088/collection/count/follow/{collectionId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count posts num by collection id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|collectionId|int64|true|collection id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/count/follow/687
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
  "timestamp": 1677563886908,
  "status": 827,
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
  "id": 352,
  "name": "ned.botsford",
  "cover": "p3nou5",
  "description": "nqv92y",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 4
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
  "timestamp": 1677563886908,
  "status": 165,
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
  "id": 284,
  "name": "ned.botsford",
  "cover": "109xy4",
  "description": "fngndi",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 509
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
  "timestamp": 1677563886908,
  "status": 204,
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
curl -X DELETE -i http://localhost:8088/collection/927
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
  "timestamp": 1677563886908,
  "status": 808,
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
  "timestamp": 1677563886908,
  "status": 733,
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
curl -X GET -i http://localhost:8088/column/author/582
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
  "timestamp": 1677563886908,
  "status": 262,
  "message": "success",
  "data": {}
}
```

### select all followed columns by follower id
**URL:** http://localhost:8088/column/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all followed columns by follower id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/follower/835
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
  "timestamp": 1677563886908,
  "status": 387,
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
curl -X GET -i http://localhost:8088/column/654
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
  "timestamp": 1677563886908,
  "status": 177,
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
curl -X GET -i http://localhost:8088/column/count/post/349
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
  "timestamp": 1677563886908,
  "status": 802,
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
curl -X GET -i http://localhost:8088/column/count/follow/145
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
  "timestamp": 1677563886908,
  "status": 696,
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
  "id": 393,
  "name": "ned.botsford",
  "cover": "azdmxv",
  "description": "qfhkhw",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 285
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
  "timestamp": 1677563886908,
  "status": 813,
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
  "id": 906,
  "name": "ned.botsford",
  "cover": "r0qb5s",
  "description": "rjq9mz",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "authorId": 750
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
  "timestamp": 1677563886908,
  "status": 394,
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
curl -X DELETE -i http://localhost:8088/column/484
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
  "timestamp": 1677563886908,
  "status": 395,
  "message": "success",
  "data": {}
}
```

## post controller
### select recommend 100 posts
**URL:** http://localhost:8088/post/recommend

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select recommend 100 posts

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/recommend
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
  "timestamp": 1677563886908,
  "status": 409,
  "message": "success",
  "data": {}
}
```

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
  "timestamp": 1677563886908,
  "status": 50,
  "message": "success",
  "data": {}
}
```

### search posts by title
**URL:** http://localhost:8088/post/title

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** search posts by title

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|q|string|true|title|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/title?q=bgk0hn --data '&bgk0hn'
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
  "timestamp": 1677563886908,
  "status": 878,
  "message": "success",
  "data": {}
}
```

### search posts by title
**URL:** http://localhost:8088/post/search

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** search posts by title

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|q|string|true|keywords|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/search?q=9tewo1 --data '&9tewo1'
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
  "timestamp": 1677563886908,
  "status": 602,
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
curl -X GET -i http://localhost:8088/post/cate/609
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
  "timestamp": 1677563886908,
  "status": 282,
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
curl -X GET -i http://localhost:8088/post/tag/433
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
  "timestamp": 1677563886908,
  "status": 416,
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
curl -X GET -i http://localhost:8088/post/collection/79
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
  "timestamp": 1677563886908,
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
curl -X GET -i http://localhost:8088/post/column/531
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
  "timestamp": 1677563886908,
  "status": 872,
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
curl -X GET -i http://localhost:8088/post/author/81
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
  "timestamp": 1677563886908,
  "status": 364,
  "message": "success",
  "data": {}
}
```

### select posts written by user followed by id
**URL:** http://localhost:8088/post/follow/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select posts written by user followed by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/follow/250
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
  "timestamp": 1677563886908,
  "status": 772,
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
curl -X GET -i http://localhost:8088/post/290
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
  "timestamp": 1677563886908,
  "status": 47,
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
  "id": 85,
  "title": "jbmywo",
  "summary": "c7ccq5",
  "cover": "ymp5c0",
  "content": "1ufots",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "draft": true,
  "cateId": 519,
  "authorId": 75,
  "viewNum": 331
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
  "timestamp": 1677563886908,
  "status": 432,
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
  "id": 596,
  "title": "q11c6i",
  "summary": "9h7jf3",
  "cover": "25edym",
  "content": "ybo2cd",
  "createTime": "2023-02-28 13:58:07",
  "updateTime": "2023-02-28 13:58:07",
  "draft": true,
  "cateId": 432,
  "authorId": 222,
  "viewNum": 24
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
  "timestamp": 1677563886908,
  "status": 659,
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
curl -X DELETE -i http://localhost:8088/post/761
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
  "timestamp": 1677563886908,
  "status": 238,
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
  "timestamp": 1677563886908,
  "status": 104,
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
curl -X GET -i http://localhost:8088/post/like/59
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
  "timestamp": 1677563886908,
  "status": 179,
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
curl -X GET -i http://localhost:8088/post/like/single?postId=17&userId=922 --data '&17&922'
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
  "timestamp": 1677563886908,
  "status": 238,
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
  "postId": 879,
  "userId": 57,
  "type": 21862
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
  "timestamp": 1677563886908,
  "status": 182,
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
  "postId": 546,
  "userId": 451,
  "type": 31460
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
  "timestamp": 1677563886908,
  "status": 305,
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
curl -X DELETE -i http://localhost:8088/post/like?postId=653&userId=127 --data '&653&127'
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
  "timestamp": 1677563886908,
  "status": 461,
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
  "timestamp": 1677563886908,
  "status": 26,
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
curl -X GET -i http://localhost:8088/tag/post/737
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
  "timestamp": 1677563886908,
  "status": 10,
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
curl -X GET -i http://localhost:8088/tag/follower/426
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
  "timestamp": 1677563886908,
  "status": 960,
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
curl -X GET -i http://localhost:8088/tag/957
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
  "timestamp": 1677563886908,
  "status": 969,
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
  "id": 458,
  "name": "ned.botsford",
  "cover": "1ngpsx",
  "description": "uke11b"
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
  "timestamp": 1677563886908,
  "status": 949,
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
  "id": 314,
  "name": "ned.botsford",
  "cover": "jpl4j8",
  "description": "4vd27p"
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
  "timestamp": 1677563886908,
  "status": 952,
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
curl -X DELETE -i http://localhost:8088/tag/639
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
  "timestamp": 1677563886908,
  "status": 797,
  "message": "success",
  "data": {}
}
```

## 
### select tagFollow by id
**URL:** http://localhost:8088/tag/follow/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select tagFollow by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|
|tagId|int64|true|tag id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/follow/single?userId=471&tagId=988 --data '&471&988'
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
  "timestamp": 1677563886908,
  "status": 631,
  "message": "success",
  "data": {}
}
```

### add a TagFollow
**URL:** http://localhost:8088/tag/follow

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add a TagFollow

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|tagId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/tag/follow --data '{
  "userId": 270,
  "tagId": 166,
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
  "timestamp": 1677563886908,
  "status": 363,
  "message": "success",
  "data": {}
}
```

### update tag follow param
**URL:** http://localhost:8088/tag/follow

**Type:** PUT

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** update tag follow param

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|false|No comments found.|-|
|tagId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/tag/follow --data '{
  "userId": 23,
  "tagId": 226,
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
  "timestamp": 1677563886908,
  "status": 15,
  "message": "success",
  "data": {}
}
```

## activity controller
### select all activities
**URL:** http://localhost:8088/activity

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all activities

**Request-example:**
```
curl -X GET -i http://localhost:8088/activity
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
  "timestamp": 1677563886908,
  "status": 596,
  "message": "success",
  "data": {}
}
```

### select all activities by user id
**URL:** http://localhost:8088/activity/user/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all activities by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/activity/user/244
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
  "timestamp": 1677563886908,
  "status": 218,
  "message": "success",
  "data": {}
}
```

### select all activities by page
**URL:** http://localhost:8088/activity/page

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all activities by page

**Request-example:**
```
curl -X GET -i http://localhost:8088/activity/page
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
  "timestamp": 1677563886908,
  "status": 854,
  "message": "success",
  "data": {}
}
```

### add activity
**URL:** http://localhost:8088/activity

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** add activity

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|id|int64|false|No comments found.|-|
|userId|int64|false|No comments found.|-|
|actionType|int16|false|No comments found.|-|
|actionSubType|int16|false|No comments found.|-|
|targetId|int64|false|No comments found.|-|
|execTime|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/activity --data '{
  "id": 552,
  "userId": 620,
  "actionType": 31609,
  "actionSubType": 3336,
  "targetId": 583,
  "execTime": "2023-02-28 13:58:07"
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
  "timestamp": 1677563886908,
  "status": 715,
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
  "email": "efrain.bednar@hotmail.com",
  "password": "8lv4b0",
  "device": "b6anc2"
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
  "timestamp": 1677563886908,
  "status": 731,
  "message": "success",
  "data": {}
}
```

### user register
**URL:** http://localhost:8088/auth/register

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** user register

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|username|string|false|No comments found.|-|
|password|string|false|No comments found.|-|
|email|string|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/register --data '{
  "username": "ned.botsford",
  "password": "tuvn4q",
  "email": "efrain.bednar@hotmail.com"
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
  "timestamp": 1677563886908,
  "status": 359,
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
curl -X GET -i http://localhost:8088/auth/check?tokenValue=u4k04v --data '&u4k04v'
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
  "timestamp": 1677563886908,
  "status": 247,
  "message": "success",
  "data": {}
}
```

### user logout
**URL:** http://localhost:8088/auth/logout

**Type:** POST

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/json

**Description:** user logout

**Body-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|device|string|false|device|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/logout --data 'nt1sua'
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
  "timestamp": 1677563886908,
  "status": 452,
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
  "timestamp": 1677563886908,
  "status": 632,
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
curl -X GET -i http://localhost:8088/role/301
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
  "timestamp": 1677563886908,
  "status": 355,
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
  "id": 838,
  "name": "ned.botsford"
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
  "timestamp": 1677563886908,
  "status": 998,
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
  "id": 926,
  "name": "ned.botsford"
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
  "timestamp": 1677563886908,
  "status": 232,
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
curl -X DELETE -i http://localhost:8088/role/772
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
  "timestamp": 1677563886908,
  "status": 281,
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
  "timestamp": 1677563886908,
  "status": 158,
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
curl -X GET -i http://localhost:8088/user/collection/single?userId=882&collectionId=910 --data '&882&910'
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
  "timestamp": 1677563886908,
  "status": 946,
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
|collectionId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/user/collection --data '{
  "userId": 876,
  "collectionId": 139,
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
  "timestamp": 1677563886908,
  "status": 674,
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
|collectionId|int64|false|No comments found.|-|
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/user/collection --data '{
  "userId": 724,
  "collectionId": 182,
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
  "timestamp": 1677563886908,
  "status": 93,
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
curl -X DELETE -i http://localhost:8088/user/collection?userId=804&collectionId=156 --data '&804&156'
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
  "timestamp": 1677563886908,
  "status": 586,
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
  "timestamp": 1677563886908,
  "status": 111,
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
curl -X GET -i http://localhost:8088/user/column/single?userId=21&columnId=644 --data '&21&644'
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
  "timestamp": 1677563886908,
  "status": 156,
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
  "userId": 836,
  "columnId": 312,
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
  "timestamp": 1677563886908,
  "status": 413,
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
  "userId": 888,
  "columnId": 1,
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
  "timestamp": 1677563886908,
  "status": 137,
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
curl -X DELETE -i http://localhost:8088/user/column?userId=520&columnId=951 --data '&520&951'
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
  "timestamp": 1677563886908,
  "status": 851,
  "message": "success",
  "data": {}
}
```

## 
### select all following users by user id
**URL:** http://localhost:8088/user/following/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all following users by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/following/855
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
  "timestamp": 1677563886908,
  "status": 970,
  "message": "success",
  "data": {}
}
```

### select all followers by user id
**URL:** http://localhost:8088/user/follower/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select all followers by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follower/127
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
  "timestamp": 1677563886908,
  "status": 25,
  "message": "success",
  "data": {}
}
```

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
curl -X GET -i http://localhost:8088/user/654
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
  "timestamp": 1677563886908,
  "status": 664,
  "message": "success",
  "data": {}
}
```

### count follow tags num by user id
**URL:** http://localhost:8088/user/count/tag/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** count follow tags num by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/count/tag/922
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
  "timestamp": 1677563886908,
  "status": 483,
  "message": "success",
  "data": {}
}
```

### check the request email exists
**URL:** http://localhost:8088/user/check/email

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** check the request email exists

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|email|string|true|email|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/check/email?email=efrain.bednar@hotmail.com --data '&efrain.bednar@hotmail.com'
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
  "timestamp": 1677563886908,
  "status": 375,
  "message": "success",
  "data": {}
}
```

### check the request username exists
**URL:** http://localhost:8088/user/check/username

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** check the request username exists

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|username|string|true|username|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/check/username?username=ned.botsford --data '&ned.botsford'
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
  "timestamp": 1677563886908,
  "status": 417,
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
  "timestamp": 1677563886908,
  "status": 871,
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
curl -X GET -i http://localhost:8088/user/follow/follower/602
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
  "timestamp": 1677563886908,
  "status": 985,
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
curl -X GET -i http://localhost:8088/user/follow/followed/570
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
  "timestamp": 1677563886908,
  "status": 325,
  "message": "success",
  "data": {}
}
```

### select UserColumn by id
**URL:** http://localhost:8088/user/follow/single

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select UserColumn by id

**Query-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|  userId|-|
|followedId|int64|true|columnId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follow/single?followerId=298&followedId=498 --data '&298&498'
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
  "timestamp": 1677563886908,
  "status": 382,
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
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/user/follow --data '{
  "followerId": 859,
  "followedId": 58,
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
  "timestamp": 1677563886908,
  "status": 251,
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
|follow|boolean|false|No comments found.|-|

**Request-example:**
```
curl -X PUT -H 'Content-Type: application/json' -i http://localhost:8088/user/follow --data '{
  "followerId": 903,
  "followedId": 369,
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
  "timestamp": 1677563886908,
  "status": 475,
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
curl -X DELETE -i http://localhost:8088/user/follow?followerId=599&followedId=972 --data '&599&972'
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
  "timestamp": 1677563886908,
  "status": 350,
  "message": "success",
  "data": {}
}
```


