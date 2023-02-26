# okito

| Version | Update Time | Status | Author | Description |
|---------|-------------|--------|--------|-------------|
|v2023-02-26 16:32:53|2023-02-26 16:32:53|auto|@wjl|Created by smart-doc|



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
  "timestamp": 1677400374740,
  "status": 802,
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
curl -X GET -i http://localhost:8088/pin/comment/pin/608
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 390,
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
curl -X GET -i http://localhost:8088/pin/comment/author/231
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 313,
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
curl -X GET -i http://localhost:8088/pin/comment/secondary/10
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 830,
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
  "timestamp": 1677400374740,
  "status": 449,
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
curl -X GET -i http://localhost:8088/pin/comment/page/pin/513
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 649,
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
curl -X GET -i http://localhost:8088/pin/comment/page/author/916
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 804,
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
curl -X GET -i http://localhost:8088/pin/comment/page/secondary/223
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 655,
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
curl -X GET -i http://localhost:8088/pin/comment/count/pin/660
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 316,
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
curl -X GET -i http://localhost:8088/pin/comment/640
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 632,
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
  "id": 341,
  "content": "ba5mci",
  "uploadTime": "2023-02-26 16:32:54",
  "authorId": 625,
  "pinId": 770,
  "parentId": 928
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
  "timestamp": 1677400374740,
  "status": 97,
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
curl -X DELETE -i http://localhost:8088/pin/comment/502
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 880,
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
  "timestamp": 1677400374740,
  "status": 30,
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
curl -X GET -i http://localhost:8088/pin/comment/like/806
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 551,
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
  "timestamp": 1677400374740,
  "status": 153,
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
curl -X GET -i http://localhost:8088/pin/comment/like/page/37
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 132,
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
curl -X GET -i http://localhost:8088/pin/comment/like/single?commentId=93&userId=558 --data '&93&558'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 322,
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
  "commentId": 930,
  "userId": 926,
  "type": 24925
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
  "timestamp": 1677400374740,
  "status": 731,
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
  "commentId": 656,
  "userId": 112,
  "type": 16223
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
  "timestamp": 1677400374740,
  "status": 844,
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
curl -X DELETE -i http://localhost:8088/pin/comment/like?commentId=675&userId=760 --data '&675&760'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 212,
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
  "timestamp": 1677400374740,
  "status": 146,
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
curl -X GET -i http://localhost:8088/post/comment/post/80
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 605,
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
curl -X GET -i http://localhost:8088/post/comment/author/516
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 996,
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
curl -X GET -i http://localhost:8088/post/comment/secondary/918
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 708,
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
  "timestamp": 1677400374740,
  "status": 501,
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
curl -X GET -i http://localhost:8088/post/comment/page/post/334
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 997,
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
curl -X GET -i http://localhost:8088/post/comment/page/author/543
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 626,
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
curl -X GET -i http://localhost:8088/post/comment/page/secondary/786
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 342,
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
curl -X GET -i http://localhost:8088/post/comment/376
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 541,
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
curl -X GET -i http://localhost:8088/post/comment/count/post/360
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 93,
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
  "id": 181,
  "content": "3kpcr6",
  "uploadTime": "2023-02-26 16:32:54",
  "authorId": 356,
  "postId": 276,
  "parentId": 872
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
  "timestamp": 1677400374740,
  "status": 84,
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
curl -X DELETE -i http://localhost:8088/post/comment/933
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 122,
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
  "timestamp": 1677400374740,
  "status": 771,
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
curl -X GET -i http://localhost:8088/post/comment/like/432
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 17,
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
  "timestamp": 1677400374740,
  "status": 124,
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
curl -X GET -i http://localhost:8088/post/comment/like/page/120
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 740,
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
curl -X GET -i http://localhost:8088/post/comment/like/single?commentId=63&userId=962 --data '&63&962'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 19,
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
  "commentId": 364,
  "userId": 108,
  "type": 6659
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
  "timestamp": 1677400374740,
  "status": 604,
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
  "commentId": 124,
  "userId": 129,
  "type": 19213
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
  "timestamp": 1677400374740,
  "status": 878,
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
curl -X DELETE -i http://localhost:8088/post/comment/like?commentId=243&userId=409 --data '&243&409'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 566,
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
  "timestamp": 1677400374740,
  "status": 525,
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
curl -X GET -i http://localhost:8088/pin/author/294
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 366,
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
  "timestamp": 1677400374740,
  "status": 2,
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
curl -X GET -i http://localhost:8088/pin/page/author/995
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 98,
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
curl -X GET -i http://localhost:8088/pin/count/author/490
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 698,
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
curl -X GET -i http://localhost:8088/pin/740
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 19,
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
  "id": 262,
  "content": "a28ley",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 330
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
  "timestamp": 1677400374740,
  "status": 296,
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
  "id": 692,
  "content": "utj2h7",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 488,
  "viewNum": 753
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
  "timestamp": 1677400374740,
  "status": 758,
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
curl -X DELETE -i http://localhost:8088/pin/613
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 296,
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
  "timestamp": 1677400374740,
  "status": 801,
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
curl -X GET -i http://localhost:8088/pin/like/181
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 149,
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
  "timestamp": 1677400374740,
  "status": 122,
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
curl -X GET -i http://localhost:8088/pin/like/page/435
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 712,
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
curl -X GET -i http://localhost:8088/pin/like/single?pinId=560&userId=470 --data '&560&470'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 345,
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
  "userId": 472,
  "type": 8413
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
  "timestamp": 1677400374740,
  "status": 320,
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
  "pinId": 503,
  "userId": 976,
  "type": 8850
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
  "timestamp": 1677400374740,
  "status": 917,
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
curl -X DELETE -i http://localhost:8088/pin/like?pinId=79&userId=512 --data '&79&512'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 622,
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
  "timestamp": 1677400374740,
  "status": 627,
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
curl -X GET -i http://localhost:8088/category/141
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 382,
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
  "id": 157,
  "name": "charles.fisher",
  "cover": "2jtds2",
  "description": "ia7u3e"
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
  "timestamp": 1677400374740,
  "status": 681,
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
  "id": 23,
  "name": "charles.fisher",
  "cover": "d05gyy",
  "description": "j9k7x6"
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
  "timestamp": 1677400374740,
  "status": 413,
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
curl -X DELETE -i http://localhost:8088/category/262
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 175,
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
  "timestamp": 1677400374740,
  "status": 811,
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
curl -X GET -i http://localhost:8088/collection/author/442
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 537,
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
curl -X GET -i http://localhost:8088/collection/follower/69
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 688,
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
curl -X GET -i http://localhost:8088/collection/599
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 849,
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
curl -X GET -i http://localhost:8088/collection/count/posts/89
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 7,
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
curl -X GET -i http://localhost:8088/collection/count/collection/759
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 257,
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
curl -X GET -i http://localhost:8088/collection/count/follow/779
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 112,
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
  "id": 648,
  "name": "charles.fisher",
  "cover": "1eub2p",
  "description": "u31sbz",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 122
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
  "timestamp": 1677400374740,
  "status": 583,
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
  "id": 445,
  "name": "charles.fisher",
  "cover": "1cqhjf",
  "description": "qgzasa",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 999
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
  "timestamp": 1677400374740,
  "status": 322,
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
curl -X DELETE -i http://localhost:8088/collection/297
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 901,
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
  "timestamp": 1677400374740,
  "status": 954,
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
curl -X GET -i http://localhost:8088/column/author/611
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 835,
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
curl -X GET -i http://localhost:8088/column/follower/110
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 106,
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
curl -X GET -i http://localhost:8088/column/17
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 10,
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
curl -X GET -i http://localhost:8088/column/count/post/80
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 312,
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
curl -X GET -i http://localhost:8088/column/count/follow/512
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 670,
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
  "id": 573,
  "name": "charles.fisher",
  "cover": "s9mfxm",
  "description": "rso2f5",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 299
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
  "timestamp": 1677400374740,
  "status": 799,
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
  "id": 667,
  "name": "charles.fisher",
  "cover": "iusokm",
  "description": "gs742t",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "authorId": 503
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
  "timestamp": 1677400374740,
  "status": 930,
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
curl -X DELETE -i http://localhost:8088/column/41
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 893,
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
  "timestamp": 1677400374740,
  "status": 35,
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
curl -X GET -i http://localhost:8088/post/cate/262
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 913,
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
curl -X GET -i http://localhost:8088/post/tag/83
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 940,
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
curl -X GET -i http://localhost:8088/post/collection/209
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 436,
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
curl -X GET -i http://localhost:8088/post/column/151
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 253,
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
curl -X GET -i http://localhost:8088/post/author/8
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 327,
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
curl -X GET -i http://localhost:8088/post/107
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 265,
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
  "id": 531,
  "title": "m4zlkk",
  "summary": "bkcgo2",
  "cover": "ydq55v",
  "content": "7ao580",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "draft": true,
  "cateId": 631,
  "authorId": 434,
  "viewNum": 53
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
  "timestamp": 1677400374740,
  "status": 817,
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
  "id": 286,
  "title": "2lxvyd",
  "summary": "eb7r7a",
  "cover": "4zc59s",
  "content": "y6ifwl",
  "createTime": "2023-02-26 16:32:54",
  "updateTime": "2023-02-26 16:32:54",
  "draft": true,
  "cateId": 910,
  "authorId": 284,
  "viewNum": 884
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
  "timestamp": 1677400374740,
  "status": 315,
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
curl -X DELETE -i http://localhost:8088/post/475
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 699,
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
  "timestamp": 1677400374740,
  "status": 341,
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
curl -X GET -i http://localhost:8088/post/like/549
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 935,
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
curl -X GET -i http://localhost:8088/post/like/single?postId=995&userId=425 --data '&995&425'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 179,
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
  "postId": 548,
  "userId": 754,
  "type": 20411
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
  "timestamp": 1677400374740,
  "status": 55,
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
  "postId": 850,
  "userId": 818,
  "type": 25767
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
  "timestamp": 1677400374740,
  "status": 410,
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
curl -X DELETE -i http://localhost:8088/post/like?postId=938&userId=162 --data '&938&162'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 985,
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
  "timestamp": 1677400374740,
  "status": 950,
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
curl -X GET -i http://localhost:8088/tag/post/144
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 837,
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
curl -X GET -i http://localhost:8088/tag/follower/137
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 552,
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
curl -X GET -i http://localhost:8088/tag/727
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 228,
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
  "id": 554,
  "name": "charles.fisher",
  "cover": "rve25y",
  "description": "4w7fi0"
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
  "timestamp": 1677400374740,
  "status": 31,
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
  "id": 403,
  "name": "charles.fisher",
  "cover": "3qdyl4",
  "description": "b7wvf5"
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
  "timestamp": 1677400374740,
  "status": 460,
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
curl -X DELETE -i http://localhost:8088/tag/806
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 503,
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
curl -X GET -i http://localhost:8088/tag/follow/single?userId=719&tagId=192 --data '&719&192'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 606,
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
  "userId": 75,
  "tagId": 33,
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
  "timestamp": 1677400374740,
  "status": 612,
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
  "userId": 898,
  "tagId": 976,
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
  "timestamp": 1677400374740,
  "status": 52,
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
  "timestamp": 1677400374740,
  "status": 198,
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
curl -X GET -i http://localhost:8088/activity/user/46
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 526,
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
  "timestamp": 1677400374740,
  "status": 368,
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
  "id": 558,
  "userId": 439,
  "actionType": 7290,
  "actionSubType": 24052,
  "targetId": 557,
  "execTime": "2023-02-26 16:32:54"
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
  "timestamp": 1677400374740,
  "status": 738,
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
  "email": "keith.crona@gmail.com",
  "password": "b4v0ha",
  "device": "lmh389"
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
  "timestamp": 1677400374740,
  "status": 718,
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
  "username": "charles.fisher",
  "password": "xaklbn",
  "email": "keith.crona@gmail.com"
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
  "timestamp": 1677400374740,
  "status": 250,
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
curl -X GET -i http://localhost:8088/auth/check?tokenValue=182pkg --data '&182pkg'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 730,
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
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/logout --data '4hhgvo'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 866,
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
  "timestamp": 1677400374740,
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
curl -X GET -i http://localhost:8088/role/434
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 334,
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
  "id": 680,
  "name": "charles.fisher"
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
  "timestamp": 1677400374740,
  "status": 228,
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
  "id": 986,
  "name": "charles.fisher"
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
  "timestamp": 1677400374740,
  "status": 160,
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
curl -X DELETE -i http://localhost:8088/role/664
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 202,
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
  "timestamp": 1677400374740,
  "status": 284,
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
curl -X GET -i http://localhost:8088/user/collection/single?userId=748&collectionId=81 --data '&748&81'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 857,
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
  "userId": 378,
  "collectionId": 471,
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
  "timestamp": 1677400374740,
  "status": 943,
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
  "userId": 494,
  "collectionId": 178,
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
  "timestamp": 1677400374740,
  "status": 784,
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
curl -X DELETE -i http://localhost:8088/user/collection?userId=667&collectionId=71 --data '&667&71'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 657,
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
  "timestamp": 1677400374740,
  "status": 234,
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
curl -X GET -i http://localhost:8088/user/column/single?userId=976&columnId=313 --data '&976&313'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 274,
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
  "userId": 635,
  "columnId": 239,
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
  "timestamp": 1677400374740,
  "status": 777,
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
  "userId": 153,
  "columnId": 20,
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
  "timestamp": 1677400374740,
  "status": 342,
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
curl -X DELETE -i http://localhost:8088/user/column?userId=279&columnId=54 --data '&279&54'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 987,
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
curl -X GET -i http://localhost:8088/user/following/62
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 704,
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
curl -X GET -i http://localhost:8088/user/follower/657
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 984,
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
curl -X GET -i http://localhost:8088/user/414
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 232,
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
curl -X GET -i http://localhost:8088/user/count/tag/686
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 888,
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
curl -X GET -i http://localhost:8088/user/check/email?email=keith.crona@gmail.com --data '&keith.crona@gmail.com'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 405,
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
curl -X GET -i http://localhost:8088/user/check/username?username=charles.fisher --data '&charles.fisher'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 494,
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
  "timestamp": 1677400374740,
  "status": 827,
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
curl -X GET -i http://localhost:8088/user/follow/follower/456
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 630,
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
curl -X GET -i http://localhost:8088/user/follow/followed/895
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 651,
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
curl -X GET -i http://localhost:8088/user/follow/single?followerId=852&followedId=509 --data '&852&509'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 282,
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
  "followerId": 259,
  "followedId": 663,
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
  "timestamp": 1677400374740,
  "status": 463,
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
  "followerId": 228,
  "followedId": 492,
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
  "timestamp": 1677400374740,
  "status": 503,
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
curl -X DELETE -i http://localhost:8088/user/follow?followerId=666&followedId=402 --data '&666&402'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677400374740,
  "status": 856,
  "message": "success",
  "data": {}
}
```


