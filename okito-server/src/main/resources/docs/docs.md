# okito

| Version | Update Time | Status | Author | Description |
|---------|-------------|--------|--------|-------------|
|v2023-02-28 22:19:27|2023-02-28 22:19:27|auto|@wjl|Created by smart-doc|



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
  "timestamp": 1677593968770,
  "status": 990,
  "message": "success",
  "data": {}
}
```

### select pinComments by pinId
**URL:** http://localhost:8088/pin/comment/pin/{pinId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinComments by pinId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|pinId|int64|true|pinId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/pin/385
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 819,
  "message": "success",
  "data": {}
}
```

### select pinComments by authorId
**URL:** http://localhost:8088/pin/comment/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinComments by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/author/903
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 909,
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
curl -X GET -i http://localhost:8088/pin/comment/secondary/425
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 185,
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
curl -X GET -i http://localhost:8088/pin/comment/count/pin/733
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 140,
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
curl -X GET -i http://localhost:8088/pin/comment/7
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 547,
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
  "id": 949,
  "content": "8n7jdv",
  "uploadTime": "2023-02-28 22:19:28",
  "authorId": 851,
  "pinId": 717,
  "parentId": 256
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
  "timestamp": 1677593968770,
  "status": 789,
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
curl -X DELETE -i http://localhost:8088/pin/comment/338
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 957,
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
  "timestamp": 1677593968770,
  "status": 867,
  "message": "success",
  "data": {}
}
```

### select pinCommentLikes by userId
**URL:** http://localhost:8088/pin/comment/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinCommentLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/comment/like/526
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 317,
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
curl -X GET -i http://localhost:8088/pin/comment/like/single?commentId=368&userId=139 --data '&368&139'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 855,
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
  "commentId": 194,
  "userId": 856,
  "type": 30635
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
  "timestamp": 1677593968770,
  "status": 265,
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
  "commentId": 521,
  "userId": 369,
  "type": 5495
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
  "timestamp": 1677593968770,
  "status": 980,
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
curl -X DELETE -i http://localhost:8088/pin/comment/like?commentId=385&userId=679 --data '&385&679'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 866,
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
  "timestamp": 1677593968770,
  "status": 141,
  "message": "success",
  "data": {}
}
```

### select postComments by postId
**URL:** http://localhost:8088/post/comment/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postComments by postId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/post/897
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 508,
  "message": "success",
  "data": {}
}
```

### select postComments by authorId
**URL:** http://localhost:8088/post/comment/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postComments by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/author/621
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 952,
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
curl -X GET -i http://localhost:8088/post/comment/secondary/180
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 844,
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
curl -X GET -i http://localhost:8088/post/comment/102
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 628,
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
curl -X GET -i http://localhost:8088/post/comment/count/post/698
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 558,
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
  "id": 462,
  "content": "8kskbf",
  "uploadTime": "2023-02-28 22:19:28",
  "authorId": 559,
  "postId": 261,
  "parentId": 112
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
  "timestamp": 1677593968770,
  "status": 950,
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
curl -X DELETE -i http://localhost:8088/post/comment/35
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 488,
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
  "timestamp": 1677593968770,
  "status": 647,
  "message": "success",
  "data": {}
}
```

### select postCommentLikes by userId
**URL:** http://localhost:8088/post/comment/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postCommentLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/comment/like/91
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 435,
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
curl -X GET -i http://localhost:8088/post/comment/like/single?commentId=393&userId=488 --data '&393&488'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 494,
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
  "commentId": 582,
  "userId": 840,
  "type": 14179
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
  "timestamp": 1677593968770,
  "status": 622,
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
  "commentId": 522,
  "userId": 491,
  "type": 13857
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
  "timestamp": 1677593968770,
  "status": 210,
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
curl -X DELETE -i http://localhost:8088/post/comment/like?commentId=288&userId=42 --data '&288&42'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 254,
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
  "timestamp": 1677593968770,
  "status": 414,
  "message": "success",
  "data": {}
}
```

### select hot 100 pins
**URL:** http://localhost:8088/pin/hot

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select hot 100 pins

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/hot
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 778,
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
curl -X GET -i http://localhost:8088/pin/search?q=eibcn7 --data '&eibcn7'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 257,
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
  "timestamp": 1677593968770,
  "status": 144,
  "message": "success",
  "data": {}
}
```

### select pins by authorId
**URL:** http://localhost:8088/pin/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pins by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/author/766
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 90,
  "message": "success",
  "data": {}
}
```

### select pins written by user followed by id
**URL:** http://localhost:8088/pin/follow/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pins written by user followed by id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/follow/544
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 321,
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
curl -X GET -i http://localhost:8088/pin/count/author/466
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 679,
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
curl -X GET -i http://localhost:8088/pin/472
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 52,
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
  "id": 534,
  "content": "kuzarv",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 809
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
  "timestamp": 1677593968770,
  "status": 980,
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
  "id": 92,
  "content": "gko1po",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 211,
  "viewNum": 716
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
  "timestamp": 1677593968770,
  "status": 718,
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
curl -X DELETE -i http://localhost:8088/pin/173
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 54,
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
  "timestamp": 1677593968770,
  "status": 197,
  "message": "success",
  "data": {}
}
```

### select pinLikes by userId
**URL:** http://localhost:8088/pin/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select pinLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/pin/like/367
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 515,
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
curl -X GET -i http://localhost:8088/pin/like/single?pinId=873&userId=283 --data '&873&283'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 440,
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
  "pinId": 847,
  "userId": 953,
  "type": 9433
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
  "timestamp": 1677593968770,
  "status": 155,
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
  "pinId": 139,
  "userId": 494,
  "type": 23572
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
  "timestamp": 1677593968770,
  "status": 441,
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
curl -X DELETE -i http://localhost:8088/pin/like?pinId=91&userId=854 --data '&91&854'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 195,
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
  "timestamp": 1677593968770,
  "status": 819,
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
curl -X GET -i http://localhost:8088/category/404
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 116,
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
  "id": 511,
  "name": "joel.rutherford",
  "cover": "n8kkmh",
  "description": "shw8fn"
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
  "timestamp": 1677593968770,
  "status": 393,
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
  "id": 648,
  "name": "joel.rutherford",
  "cover": "48gl4n",
  "description": "xrtg47"
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
  "timestamp": 1677593968770,
  "status": 344,
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
curl -X DELETE -i http://localhost:8088/category/192
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 657,
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
  "timestamp": 1677593968770,
  "status": 541,
  "message": "success",
  "data": {}
}
```

### select collections by author id
**URL:** http://localhost:8088/collection/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select collections by author id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|author id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/author/119
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 840,
  "message": "success",
  "data": {}
}
```

### select collections by follower id
**URL:** http://localhost:8088/collection/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select collections by follower id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|follower id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/collection/follower/929
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 940,
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
curl -X GET -i http://localhost:8088/collection/146
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 151,
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
curl -X GET -i http://localhost:8088/collection/count/posts/508
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 128,
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
curl -X GET -i http://localhost:8088/collection/count/collection/131
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 866,
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
curl -X GET -i http://localhost:8088/collection/count/follow/3
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 647,
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
  "id": 766,
  "name": "joel.rutherford",
  "cover": "u2ylrm",
  "description": "79mjlc",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 734
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
  "timestamp": 1677593968770,
  "status": 709,
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
  "name": "joel.rutherford",
  "cover": "0uui93",
  "description": "wuig1b",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 118
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
  "timestamp": 1677593968770,
  "status": 476,
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
curl -X DELETE -i http://localhost:8088/collection/208
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 385,
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
  "timestamp": 1677593968770,
  "status": 90,
  "message": "success",
  "data": {}
}
```

### select followed columns by authorId
**URL:** http://localhost:8088/column/author/{authorId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followed columns by authorId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|authorId|int64|true|authorId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/author/213
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 820,
  "message": "success",
  "data": {}
}
```

### select followed columns by follower id
**URL:** http://localhost:8088/column/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followed columns by follower id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/column/follower/569
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 54,
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
curl -X GET -i http://localhost:8088/column/846
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 856,
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
curl -X GET -i http://localhost:8088/column/count/post/278
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 173,
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
curl -X GET -i http://localhost:8088/column/count/follow/576
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 924,
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
  "id": 184,
  "name": "joel.rutherford",
  "cover": "rqufc3",
  "description": "vpchpd",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 151
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
  "timestamp": 1677593968770,
  "status": 403,
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
  "id": 460,
  "name": "joel.rutherford",
  "cover": "bcbbyr",
  "description": "ym9epb",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "authorId": 30
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
  "timestamp": 1677593968770,
  "status": 565,
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
curl -X DELETE -i http://localhost:8088/column/229
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 70,
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
  "timestamp": 1677593968770,
  "status": 433,
  "message": "success",
  "data": {}
}
```

### select hot 100 posts
**URL:** http://localhost:8088/post/hot

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select hot 100 posts

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/hot
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 762,
  "message": "success",
  "data": {}
}
```

### select top 100 posts
**URL:** http://localhost:8088/post/top

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select top 100 posts

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/top
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 512,
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
  "timestamp": 1677593968770,
  "status": 702,
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
curl -X GET -i http://localhost:8088/post/title?q=uz627k --data '&uz627k'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 377,
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
curl -X GET -i http://localhost:8088/post/search?q=8hzpei --data '&8hzpei'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 241,
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
curl -X GET -i http://localhost:8088/post/cate/451
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 726,
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
curl -X GET -i http://localhost:8088/post/tag/678
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 782,
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
curl -X GET -i http://localhost:8088/post/collection/59
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 358,
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
curl -X GET -i http://localhost:8088/post/column/255
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 568,
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
curl -X GET -i http://localhost:8088/post/author/19
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 948,
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
curl -X GET -i http://localhost:8088/post/follow/618
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 909,
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
curl -X GET -i http://localhost:8088/post/839
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 774,
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
  "id": 989,
  "title": "naa29s",
  "summary": "qyblsb",
  "cover": "vwnd9t",
  "content": "2ebjto",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "draft": true,
  "cateId": 885,
  "authorId": 781,
  "viewNum": 333
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
  "timestamp": 1677593968770,
  "status": 111,
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
  "id": 844,
  "title": "0ttqvn",
  "summary": "o0q20q",
  "cover": "f24end",
  "content": "pj8re8",
  "createTime": "2023-02-28 22:19:28",
  "updateTime": "2023-02-28 22:19:28",
  "draft": true,
  "cateId": 378,
  "authorId": 378,
  "viewNum": 611
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
  "timestamp": 1677593968770,
  "status": 294,
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
curl -X DELETE -i http://localhost:8088/post/873
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 560,
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
  "timestamp": 1677593968770,
  "status": 900,
  "message": "success",
  "data": {}
}
```

### select postLikes by userId
**URL:** http://localhost:8088/post/like/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select postLikes by userId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|userId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/post/like/934
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 588,
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
curl -X GET -i http://localhost:8088/post/like/single?postId=806&userId=367 --data '&806&367'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 750,
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
  "postId": 725,
  "userId": 712,
  "type": 24210
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
  "timestamp": 1677593968770,
  "status": 954,
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
  "postId": 857,
  "userId": 332,
  "type": 7266
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
  "timestamp": 1677593968770,
  "status": 789,
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
curl -X DELETE -i http://localhost:8088/post/like?postId=402&userId=598 --data '&402&598'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 357,
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
  "timestamp": 1677593968770,
  "status": 495,
  "message": "success",
  "data": {}
}
```

### select tags by postId
**URL:** http://localhost:8088/tag/post/{postId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select tags by postId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|postId|int64|true|postId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/post/394
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 30,
  "message": "success",
  "data": {}
}
```

### select tags by followerId
**URL:** http://localhost:8088/tag/follower/{followerId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select tags by followerId

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|followerId|int64|true|followerId|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/tag/follower/784
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 666,
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
curl -X GET -i http://localhost:8088/tag/777
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 698,
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
  "id": 451,
  "name": "joel.rutherford",
  "cover": "ejint3",
  "description": "8sloyn"
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
  "timestamp": 1677593968770,
  "status": 719,
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
  "id": 756,
  "name": "joel.rutherford",
  "cover": "8dv1fs",
  "description": "1mkqlt"
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
  "timestamp": 1677593968770,
  "status": 4,
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
curl -X DELETE -i http://localhost:8088/tag/897
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 566,
  "message": "success",
  "data": {}
}
```

## tag follow controller
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
curl -X GET -i http://localhost:8088/tag/follow/single?userId=342&tagId=887 --data '&342&887'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 294,
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
  "userId": 137,
  "tagId": 326,
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
  "timestamp": 1677593968770,
  "status": 117,
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
  "userId": 593,
  "tagId": 907,
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
  "timestamp": 1677593968770,
  "status": 250,
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
  "timestamp": 1677593968770,
  "status": 944,
  "message": "success",
  "data": {}
}
```

### select activities by user id
**URL:** http://localhost:8088/activity/user/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select activities by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/activity/user/335
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 380,
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
  "id": 589,
  "userId": 113,
  "actionType": 14845,
  "actionSubType": 23856,
  "targetId": 475,
  "execTime": "2023-02-28 22:19:28"
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
  "timestamp": 1677593968770,
  "status": 658,
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
  "email": "laquita.stehr@yahoo.com",
  "password": "liw3d9",
  "device": "vvupj7"
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
  "timestamp": 1677593968770,
  "status": 374,
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
  "username": "joel.rutherford",
  "password": "4hbt3l",
  "email": "laquita.stehr@yahoo.com"
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
  "timestamp": 1677593968770,
  "status": 659,
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
curl -X GET -i http://localhost:8088/auth/check?tokenValue=sdojtb --data '&sdojtb'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 980,
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
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/logout --data 'i8qzet'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 485,
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
  "timestamp": 1677593968770,
  "status": 730,
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
curl -X GET -i http://localhost:8088/role/417
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 768,
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
  "id": 622,
  "name": "joel.rutherford"
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
  "timestamp": 1677593968770,
  "status": 513,
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
  "id": 546,
  "name": "joel.rutherford"
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
  "timestamp": 1677593968770,
  "status": 841,
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
curl -X DELETE -i http://localhost:8088/role/34
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 881,
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
  "timestamp": 1677593968770,
  "status": 416,
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
curl -X GET -i http://localhost:8088/user/collection/single?userId=8&collectionId=396 --data '&8&396'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 765,
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
  "userId": 908,
  "collectionId": 15,
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
  "timestamp": 1677593968770,
  "status": 289,
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
  "userId": 330,
  "collectionId": 217,
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
  "timestamp": 1677593968770,
  "status": 831,
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
curl -X DELETE -i http://localhost:8088/user/collection?userId=63&collectionId=192 --data '&63&192'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 449,
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
  "timestamp": 1677593968770,
  "status": 102,
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
curl -X GET -i http://localhost:8088/user/column/single?userId=62&columnId=926 --data '&62&926'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 490,
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
  "userId": 921,
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
  "timestamp": 1677593968770,
  "status": 928,
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
  "userId": 547,
  "columnId": 926,
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
  "timestamp": 1677593968770,
  "status": 945,
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
curl -X DELETE -i http://localhost:8088/user/column?userId=41&columnId=555 --data '&41&555'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 137,
  "message": "success",
  "data": {}
}
```

## user controller
### select following users by user id
**URL:** http://localhost:8088/user/following/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select following users by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/following/91
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 504,
  "message": "success",
  "data": {}
}
```

### select followers by user id
**URL:** http://localhost:8088/user/follower/{userId}

**Type:** GET

**Author:** <a href="mailto:wlonestar@163.com">wjl</a>

**Content-Type:** application/x-www-form-urlencoded;charset=UTF-8

**Description:** select followers by user id

**Path-parameters:**

| Parameter | Type | Required | Description | Since |
|-----------|------|----------|-------------|-------|
|userId|int64|true|user id|-|

**Request-example:**
```
curl -X GET -i http://localhost:8088/user/follower/101
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 689,
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
curl -X GET -i http://localhost:8088/user/575
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 218,
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
curl -X GET -i http://localhost:8088/user/count/tag/536
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 755,
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
curl -X GET -i http://localhost:8088/user/check/email?email=laquita.stehr@yahoo.com --data '&laquita.stehr@yahoo.com'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 2,
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
curl -X GET -i http://localhost:8088/user/check/username?username=joel.rutherford --data '&joel.rutherford'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 79,
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
  "timestamp": 1677593968770,
  "status": 29,
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
curl -X GET -i http://localhost:8088/user/follow/follower/955
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 830,
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
curl -X GET -i http://localhost:8088/user/follow/followed/371
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 130,
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
curl -X GET -i http://localhost:8088/user/follow/single?followerId=564&followedId=194 --data '&564&194'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 972,
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
  "followerId": 590,
  "followedId": 588,
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
  "timestamp": 1677593968770,
  "status": 681,
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
  "followerId": 677,
  "followedId": 963,
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
  "timestamp": 1677593968770,
  "status": 868,
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
curl -X DELETE -i http://localhost:8088/user/follow?followerId=236&followedId=518 --data '&236&518'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677593968770,
  "status": 519,
  "message": "success",
  "data": {}
}
```


