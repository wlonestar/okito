# okito

| Version | Update Time | Status | Author | Description |
|---------|-------------|--------|--------|-------------|
|v2023-03-01 08:52:08|2023-03-01 08:52:08|auto|@wjl|Created by smart-doc|



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
  "timestamp": 1677631931596,
  "status": 271,
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
curl -X GET -i http://localhost:8088/pin/comment/pin/358
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 326,
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
curl -X GET -i http://localhost:8088/pin/comment/author/209
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 846,
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
curl -X GET -i http://localhost:8088/pin/comment/secondary/292
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 140,
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
curl -X GET -i http://localhost:8088/pin/comment/count/pin/596
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 635,
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
curl -X GET -i http://localhost:8088/pin/comment/504
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 233,
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
  "id": 235,
  "content": "7aavce",
  "uploadTime": "2023-03-01 08:52:11",
  "authorId": 567,
  "pinId": 255,
  "parentId": 264
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
  "timestamp": 1677631931596,
  "status": 857,
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
curl -X DELETE -i http://localhost:8088/pin/comment/225
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 864,
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
  "timestamp": 1677631931596,
  "status": 515,
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
curl -X GET -i http://localhost:8088/pin/comment/like/155
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 86,
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
curl -X GET -i http://localhost:8088/pin/comment/like/single?commentId=697&userId=329 --data '&697&329'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 278,
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
  "commentId": 762,
  "userId": 931,
  "type": 16631
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
  "timestamp": 1677631931596,
  "status": 392,
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
  "commentId": 131,
  "userId": 334,
  "type": 16023
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
  "timestamp": 1677631931596,
  "status": 674,
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
curl -X DELETE -i http://localhost:8088/pin/comment/like?commentId=178&userId=796 --data '&178&796'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 106,
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
  "timestamp": 1677631931596,
  "status": 930,
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
curl -X GET -i http://localhost:8088/post/comment/post/397
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 186,
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
curl -X GET -i http://localhost:8088/post/comment/author/245
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 129,
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
curl -X GET -i http://localhost:8088/post/comment/secondary/962
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 656,
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
curl -X GET -i http://localhost:8088/post/comment/291
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 328,
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
curl -X GET -i http://localhost:8088/post/comment/count/post/88
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 260,
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
  "id": 808,
  "content": "k8zpiw",
  "uploadTime": "2023-03-01 08:52:11",
  "authorId": 272,
  "postId": 696,
  "parentId": 200
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
  "timestamp": 1677631931596,
  "status": 180,
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
curl -X DELETE -i http://localhost:8088/post/comment/947
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 432,
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
  "timestamp": 1677631931596,
  "status": 935,
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
curl -X GET -i http://localhost:8088/post/comment/like/788
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 42,
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
curl -X GET -i http://localhost:8088/post/comment/like/single?commentId=479&userId=780 --data '&479&780'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 18,
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
  "commentId": 967,
  "userId": 299,
  "type": 15239
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
  "timestamp": 1677631931596,
  "status": 466,
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
  "commentId": 817,
  "userId": 144,
  "type": 13031
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
  "timestamp": 1677631931596,
  "status": 949,
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
curl -X DELETE -i http://localhost:8088/post/comment/like?commentId=80&userId=410 --data '&80&410'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 112,
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
  "timestamp": 1677631931596,
  "status": 479,
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
  "timestamp": 1677631931596,
  "status": 33,
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
curl -X GET -i http://localhost:8088/pin/search?q=yb7lbd --data '&yb7lbd'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 676,
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
  "timestamp": 1677631931596,
  "status": 683,
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
curl -X GET -i http://localhost:8088/pin/author/366
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 705,
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
curl -X GET -i http://localhost:8088/pin/follow/554
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 101,
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
curl -X GET -i http://localhost:8088/pin/count/author/778
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 755,
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
curl -X GET -i http://localhost:8088/pin/657
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 434,
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
  "id": 1,
  "content": "as8ym1",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 132
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
  "timestamp": 1677631931596,
  "status": 437,
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
  "id": 875,
  "content": "cgg0ox",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 890,
  "viewNum": 829
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
  "timestamp": 1677631931596,
  "status": 870,
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
curl -X DELETE -i http://localhost:8088/pin/248
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 692,
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
  "timestamp": 1677631931596,
  "status": 223,
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
curl -X GET -i http://localhost:8088/pin/like/468
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 75,
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
curl -X GET -i http://localhost:8088/pin/like/single?pinId=890&userId=104 --data '&890&104'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 682,
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
  "pinId": 39,
  "userId": 822,
  "type": 12827
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
  "timestamp": 1677631931596,
  "status": 331,
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
  "pinId": 859,
  "userId": 678,
  "type": 4695
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
  "timestamp": 1677631931596,
  "status": 611,
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
curl -X DELETE -i http://localhost:8088/pin/like?pinId=592&userId=505 --data '&592&505'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 298,
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
  "timestamp": 1677631931596,
  "status": 692,
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
curl -X GET -i http://localhost:8088/category/582
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 540,
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
  "id": 512,
  "name": "marty.marquardt",
  "cover": "tyfe0j",
  "description": "5cnfnk"
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
  "timestamp": 1677631931596,
  "status": 395,
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
  "id": 419,
  "name": "marty.marquardt",
  "cover": "hjqb4t",
  "description": "92f8tl"
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
  "timestamp": 1677631931596,
  "status": 844,
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
curl -X DELETE -i http://localhost:8088/category/745
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 609,
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
  "timestamp": 1677631931596,
  "status": 173,
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
curl -X GET -i http://localhost:8088/collection/author/271
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 163,
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
curl -X GET -i http://localhost:8088/collection/follower/454
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 176,
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
curl -X GET -i http://localhost:8088/collection/806
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 393,
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
curl -X GET -i http://localhost:8088/collection/count/posts/848
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 432,
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
curl -X GET -i http://localhost:8088/collection/count/collection/68
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 69,
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
curl -X GET -i http://localhost:8088/collection/count/follow/504
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 261,
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
  "id": 959,
  "name": "marty.marquardt",
  "cover": "yp6ei9",
  "description": "y5hk4m",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 633
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
  "timestamp": 1677631931596,
  "status": 486,
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
  "id": 166,
  "name": "marty.marquardt",
  "cover": "gzj01r",
  "description": "aogc9g",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 88
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
  "timestamp": 1677631931596,
  "status": 983,
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
curl -X DELETE -i http://localhost:8088/collection/12
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 99,
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
  "timestamp": 1677631931596,
  "status": 405,
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
curl -X GET -i http://localhost:8088/column/author/804
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 199,
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
curl -X GET -i http://localhost:8088/column/follower/513
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 737,
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
curl -X GET -i http://localhost:8088/column/981
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 135,
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
curl -X GET -i http://localhost:8088/column/count/post/745
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 885,
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
curl -X GET -i http://localhost:8088/column/count/follow/820
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 344,
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
  "id": 745,
  "name": "marty.marquardt",
  "cover": "egvwoa",
  "description": "udl1z1",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 926
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
  "timestamp": 1677631931596,
  "status": 925,
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
  "id": 975,
  "name": "marty.marquardt",
  "cover": "jzsemj",
  "description": "uihs6o",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "authorId": 555
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
  "timestamp": 1677631931596,
  "status": 865,
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
curl -X DELETE -i http://localhost:8088/column/182
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 143,
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
  "timestamp": 1677631931596,
  "status": 471,
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
  "timestamp": 1677631931596,
  "status": 80,
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
  "timestamp": 1677631931596,
  "status": 293,
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
  "timestamp": 1677631931596,
  "status": 944,
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
curl -X GET -i http://localhost:8088/post/title?q=7rn2cu --data '&7rn2cu'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 880,
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
curl -X GET -i http://localhost:8088/post/search?q=xgu9f4 --data '&xgu9f4'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 324,
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
curl -X GET -i http://localhost:8088/post/cate/352
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 114,
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
curl -X GET -i http://localhost:8088/post/tag/641
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 632,
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
curl -X GET -i http://localhost:8088/post/collection/898
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 357,
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
curl -X GET -i http://localhost:8088/post/column/265
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 78,
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
curl -X GET -i http://localhost:8088/post/author/727
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 812,
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
curl -X GET -i http://localhost:8088/post/follow/207
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 117,
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
curl -X GET -i http://localhost:8088/post/100
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 461,
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
  "id": 674,
  "title": "x54r8d",
  "summary": "esiamk",
  "cover": "3yao8e",
  "content": "g9uhtp",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "draft": true,
  "cateId": 363,
  "authorId": 947,
  "viewNum": 746
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
  "timestamp": 1677631931596,
  "status": 173,
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
  "id": 304,
  "title": "jedt9f",
  "summary": "i2f798",
  "cover": "knvwxd",
  "content": "y057qg",
  "createTime": "2023-03-01 08:52:11",
  "updateTime": "2023-03-01 08:52:11",
  "draft": true,
  "cateId": 48,
  "authorId": 549,
  "viewNum": 344
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
  "timestamp": 1677631931596,
  "status": 863,
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
curl -X DELETE -i http://localhost:8088/post/464
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 230,
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
  "timestamp": 1677631931596,
  "status": 508,
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
curl -X GET -i http://localhost:8088/post/like/285
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 110,
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
curl -X GET -i http://localhost:8088/post/like/single?postId=341&userId=65 --data '&341&65'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 528,
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
  "postId": 899,
  "userId": 646,
  "type": 27905
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
  "timestamp": 1677631931596,
  "status": 959,
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
  "postId": 785,
  "userId": 595,
  "type": 24683
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
  "timestamp": 1677631931596,
  "status": 368,
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
curl -X DELETE -i http://localhost:8088/post/like?postId=21&userId=121 --data '&21&121'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 750,
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
  "timestamp": 1677631931596,
  "status": 741,
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
curl -X GET -i http://localhost:8088/tag/post/69
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 41,
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
curl -X GET -i http://localhost:8088/tag/follower/82
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 320,
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
curl -X GET -i http://localhost:8088/tag/572
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 633,
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
  "id": 242,
  "name": "marty.marquardt",
  "cover": "3kwaar",
  "description": "356zw9"
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
  "timestamp": 1677631931596,
  "status": 690,
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
  "id": 665,
  "name": "marty.marquardt",
  "cover": "nuppyg",
  "description": "se5pzf"
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
  "timestamp": 1677631931596,
  "status": 601,
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
curl -X DELETE -i http://localhost:8088/tag/21
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 795,
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
curl -X GET -i http://localhost:8088/tag/follow/single?userId=211&tagId=469 --data '&211&469'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 241,
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
  "userId": 900,
  "tagId": 610,
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
  "timestamp": 1677631931596,
  "status": 543,
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
  "userId": 954,
  "tagId": 518,
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
  "timestamp": 1677631931596,
  "status": 659,
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
  "timestamp": 1677631931596,
  "status": 770,
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
curl -X GET -i http://localhost:8088/activity/user/60
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 928,
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
  "id": 672,
  "userId": 133,
  "actionType": 9644,
  "actionSubType": 22147,
  "targetId": 540,
  "execTime": "2023-03-01 08:52:11"
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
  "timestamp": 1677631931596,
  "status": 238,
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
  "email": "oma.willms@gmail.com",
  "password": "wir8j9",
  "device": "5emhqa"
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
  "timestamp": 1677631931596,
  "status": 306,
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
  "username": "marty.marquardt",
  "password": "bu1e4q",
  "email": "oma.willms@gmail.com"
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
  "timestamp": 1677631931596,
  "status": 24,
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
curl -X GET -i http://localhost:8088/auth/check?tokenValue=qn90xx --data '&qn90xx'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 472,
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
curl -X POST -H 'Content-Type: application/json' -i http://localhost:8088/auth/logout --data '06byvi'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 467,
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
  "timestamp": 1677631931596,
  "status": 784,
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
curl -X GET -i http://localhost:8088/role/835
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 791,
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
  "id": 577,
  "name": "marty.marquardt"
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
  "timestamp": 1677631931596,
  "status": 571,
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
  "id": 337,
  "name": "marty.marquardt"
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
  "timestamp": 1677631931596,
  "status": 921,
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
curl -X DELETE -i http://localhost:8088/role/378
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 498,
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
  "timestamp": 1677631931596,
  "status": 792,
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
curl -X GET -i http://localhost:8088/user/collection/single?userId=123&collectionId=583 --data '&123&583'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 491,
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
  "userId": 771,
  "collectionId": 900,
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
  "timestamp": 1677631931596,
  "status": 152,
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
  "userId": 128,
  "collectionId": 350,
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
  "timestamp": 1677631931596,
  "status": 965,
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
curl -X DELETE -i http://localhost:8088/user/collection?userId=779&collectionId=645 --data '&779&645'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 284,
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
  "timestamp": 1677631931596,
  "status": 602,
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
curl -X GET -i http://localhost:8088/user/column/single?userId=674&columnId=609 --data '&674&609'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 45,
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
  "userId": 880,
  "columnId": 698,
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
  "timestamp": 1677631931596,
  "status": 518,
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
  "userId": 308,
  "columnId": 484,
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
  "timestamp": 1677631931596,
  "status": 446,
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
curl -X DELETE -i http://localhost:8088/user/column?userId=627&columnId=29 --data '&627&29'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 326,
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
curl -X GET -i http://localhost:8088/user/following/936
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 284,
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
curl -X GET -i http://localhost:8088/user/follower/601
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 951,
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
curl -X GET -i http://localhost:8088/user/189
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 585,
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
curl -X GET -i http://localhost:8088/user/count/tag/447
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 81,
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
curl -X GET -i http://localhost:8088/user/check/email?email=oma.willms@gmail.com --data '&oma.willms@gmail.com'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 979,
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
curl -X GET -i http://localhost:8088/user/check/username?username=marty.marquardt --data '&marty.marquardt'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 629,
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
  "timestamp": 1677631931596,
  "status": 664,
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
curl -X GET -i http://localhost:8088/user/follow/follower/250
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 177,
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
curl -X GET -i http://localhost:8088/user/follow/followed/190
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 826,
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
curl -X GET -i http://localhost:8088/user/follow/single?followerId=135&followedId=550 --data '&135&550'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 364,
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
  "followerId": 363,
  "followedId": 370,
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
  "timestamp": 1677631931596,
  "status": 704,
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
  "followerId": 471,
  "followedId": 29,
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
  "timestamp": 1677631931596,
  "status": 678,
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
curl -X DELETE -i http://localhost:8088/user/follow?followerId=182&followedId=231 --data '&182&231'
```
**Response-fields:**

| Field | Type | Description | Since |
|-------|------|-------------|-------|
|timestamp|int64|No comments found.|-|
|status|int32|No comments found.|-|
|message|string|No comments found.|-|
|data|object|No comments found.|-|

**Response-example:**
```
{
  "timestamp": 1677631931596,
  "status": 307,
  "message": "success",
  "data": {}
}
```


