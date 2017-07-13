# 俱乐部

## 服务简介

SERVICE_NAME:  

`kt-club` prod模式使用的服务  
`kt-club-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=APPKEY"
```

## 获取俱乐部信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "name": "blah",
    "address": "blah",
    "ecard": 930,
    "users": 170,
    "games": 4,
    "participants": 34,
    "rounds": 10
  }
}
```
## 获取俱乐部所有学员信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/users"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/users`

### Url Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID

### Query Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
page|0|true|第几页
limit|10|true|每页返回数量

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "user_id": 80,
            "club_id": 1,
            "user": {
                "id": 80,
                "username": "k1t00008"
            },
            "realname": null,
            "gender": null,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": null,
            "course": null
        },
        {
            "id": 2,
            "user_id": 81,
            "club_id": 1,
            "user": {
                "id": 81,
                "username": "k1t00009"
            },
            "realname": null,
            "gender": null,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": null,
            "course": null
        },
        {
            "id": 3,
            "user_id": 82,
            "club_id": 1,
            "user": {
                "id": 82,
                "username": "k1t00010"
            },
            "realname": null,
            "gender": null,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": null,
            "course": null
        },
        {
            "id": 4,
            "user_id": 83,
            "club_id": 1,
            "user": {
                "id": 83,
                "username": "k1t00011"
            },
            "realname": null,
            "gender": null,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": null,
            "course": null
        },
        {
            "id": 5,
            "user_id": 84,
            "club_id": 1,
            "user": {
                "id": 84,
                "username": "k1t00012"
            },
            "realname": null,
            "gender": null,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": null,
            "course": null
        }
    ]
}
```

## 获取气场信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/bags/<CODE>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/bags/<CODE>`

### Url Parameters
Parameter | Description
--------- | -----------
CODE|气场二维码

> 返回内容

```json
{
  "data": {
    "source_type": null,
    "source_id": null,
    "code": "KT-CP-QC-140617-001"
  }
}
```

## 俱乐部列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs`


> 返回内容

```json
{
  "data": [
    {
      "id": 1,
      "name": "测试俱乐部",
      "address": "测试地址",
      "ecard": 80
    }
  ]
}

## 查找俱乐部

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/query?name=<NAME>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/query`

### Query Parameters
Parameter | Description
--------- | -----------
name|俱乐部名称

> 返回内容

```json
{
  "data": [
    {
      "id": 1,
      "name": "测试俱乐部",
      "address": "测试地址",
      "ecard": 80
    }
  ]
}
```

## 创建俱乐部

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs -d "name=xxxx&address=xxxx""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test club|true|俱乐部名字
address|blah blah|true|俱乐部地址

> 返回内容

```json
{
  "data": {
    "name": "hello",
    "address": "lorem ispm",
    "ecard": 0
  }
}

```

## 更新俱乐部

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID> -d "name=xxxx&address=xxxx""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test club|true|俱乐部名字
address|blah blah|true|俱乐部地址

> 返回内容

```json
{
  "data": {
    "name": "hello",
    "address": "lorem ispm",
    "ecard": 0
  }
}

```

## 创建班级

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses -d "grade=1&cls=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
grade|1|true|年级
cls|blah blah|true|班级

> 返回内容

```json
{
  "data": {
    "id": 5,
    "club": 1,
    "grade": "1",
    "cls": "4"
  }
}
```

## 获取班级

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID


> 返回内容

```json
{
  "data": [
    {
      "id": 2,
      "club": 1,
      "grade": "1",
      "cls": "2"
    },
    {
      "id": 3,
      "club": 1,
      "grade": "1",
      "cls": "3"
    },
    {
      "id": 5,
      "club": 1,
      "grade": "1",
      "cls": "4"
    }
  ]
}
```

## 删除班级

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses/<CID>"
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/courses/<CID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID
CID|班级ID

> 返回内容

```json
{
  "data": "success"
}
```

## 获取邀请码

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/invite"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/invite`


> 返回内容

```json
{
  "data": "123456"
}
```

## 验证邀请码

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/invite -d "code=123456""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/invite`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
code|123456|true|邀请码

> 返回内容

```json
{
  "data": true
}
```

## 创建学员信息

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles -d "uid=1&cid=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
cid|1|true|俱乐部ID

> 返回内容

```json
{
  "data": {
    "id": 3,
    "user_id": 2,
    "club_id": 1,
    "realname": null,
    "gender": null,
    "point": 0,
    "ce": 0,
    "avatar": null,
    "birthday": null,
    "course": null
  }
}
```

## 更新学员信息

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<PID> -d """
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<PID>`

### Query Parameters
Parameter | Description
--------- | -----------
PID|资料ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
avatar_key|xxxxxxxxxxxx|false|头像key
course_id|1|false|班级id
gender|0|false|性别 0 男 1 女
realname|布拿拿|false|姓名
birthday|1992-07-28|false|生日

> 返回内容

```json
{
  "data": {
    "id": 2,
    "user_id": 1,
    "realname": "布拿拿",
    "gender": 0,
    "point": 0,
    "ce": 0,
    "avatar": null,
    "birthday": "1992-07-28",
    "course": {
      "id": 2,
      "club": 1,
      "grade": "1",
      "cls": "2"
    }
  }
}
```

## 删除学生信息

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<PID>"
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<PID>`

### Query Parameters
Parameter | Description
--------- | -----------
PID|资料ID

> 返回内容

```json
{
  "data": "success"
}
```

## 查询学员信息

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<UID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles/<UID>`

### Query Parameters
Parameter | Description
--------- | -----------
UID|用户ID

> 返回内容

```json
{
  "data": {
    "id": 2,
    "user_id": 1,
    "realname": "布拿拿",
    "gender": 0,
    "point": 0,
    "ce": 0,
    "avatar": null,
    "birthday": "1992-07-28",
    "course": {
      "id": 2,
      "club": 1,
      "grade": "1",
      "cls": "2"
    }
  }
}
```

## 创建经理信息

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers -d "uid=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID

> 返回内容

```json
{
  "data": {
    "id": 2,
    "user": {
      "username": "banana@eurus.cn"
    },
    "club": null
  }
}
```

## 获取经理信息

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|经理ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "username": "ufozhengli@163.com"
    },
    "club": {
      "id": 1,
      "name": "测试俱乐部",
      "address": "测试地址",
      "ecard": 0
    }
  }
}
```

## 更改或者绑定俱乐部

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID> -d "cid=1""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|经理ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
cid|1|true|俱乐部ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "username": "ufozhengli@163.com"
    },
    "club": {
      "id": 1,
      "name": "测试俱乐部",
      "address": "测试地址",
      "ecard": 0
    },
    "contribution": 0
  }
}
```

## 增加经理的贡献值

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID> -d "contribution=1""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/managers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|经理ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
contribution|1|true|贡献值

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "username": "ufozhengli@163.com"
    },
    "club": {
      "id": 1,
      "name": "测试俱乐部",
      "address": "测试地址",
      "ecard": 0
    },
    "contribution": 1
  }
}
```

## 快速参赛

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/quickgame"
```

### HTTP Request

`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/quickgame`

### Query Parameters

Parameter | Description
--------- | -----------
ID|俱乐部ID

> 返回内容

```json
{
  "data": {
    "id": 50,
    "user_id": 57,
    "user": {
      "id": 57,
      "username": "k1t00017"
    },
    "realname": null,
    "gender": null,
    "point": 0,
    "ce": 0,
    "avatar": null,
    "birthday": null,
    "course": null
  }
}
```

## 俱乐部商品

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/merchandises"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/merchandises`

### Query Parameters

Parameter | Description
--------- | -----------
ID|俱乐部ID

> 返回内容

```json
{
    "data": [
        {
            "address": "blah blah\u0006",
            "intro": "blah blah",
            "profit": "blah blah\u0006",
            "crowd": "blah blah",
            "notice": "blan blah",
            "days": "1,3,5,7",
            "time_slot": "10:00 - 18:00",
            "club": {
                "id": 1,
                "name": "blah",
                "address": "blah",
                "ecard": 52,
                "users": 1035,
                "games": 6,
                "participants": 228,
                "rounds": 97
            },
            "target": null,
            "target_id": null,
            "amount": 1000,
            "discount_amount": 500,
            "created_at": "2017-07-04 13:18:53 +0800"
        }
    ]
}
```

## 俱乐部商品详情

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises/<ID>"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/merchandises/<ID>`

### Query Parameters

Parameter | Description
--------- | -----------
ID|商品ID

> 返回内容

```json
{
    "data": {
        "address": "blah blah\u0006",
        "intro": "blah blah",
        "profit": "blah blah\u0006",
        "crowd": "blah blah",
        "notice": "blan blah",
        "days": "1,3,5,7",
        "time_slot": "10:00 - 18:00",
        "club": {
            "id": 1,
            "name": "blah",
            "address": "blah",
            "ecard": 52,
            "users": 1035,
            "games": 6,
            "participants": 228,
            "rounds": 97
        },
        "target": "ClubCard",
        "target_id": 2,
        "amount": 1000,
        "discount_amount": 500,
        "created_at": "2017-07-04 13:18:53 +0800"
    }
}
```

## 用户订单

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/users/<ID>/orders"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/users/<ID>/orders?status=-1`

### Query Parameters

Parameter | Description
--------- | -----------
ID|商品ID

> 返回内容

```json

```

## 俱乐部参赛卡

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/cards"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/cards`

### Query Parameters

Parameter | Description
--------- | -----------
ID|俱乐部ID

### Uul Parameters
Parameter | Description
--------- | -----------
type|0或者1 0代表没用的卡，1是有用的


> 返回内容

```json
{
    "data": [
        {
            "id": 2,
            "type": 0,
            "count": 1,
            "scheduled_at": "2017-07-04 13:21:43 +0800",
            "user": {
                "id": 1,
                "username": "ufozhengli@163.com"
            },
            "club": {
                "id": 1,
                "name": "blah",
                "address": "blah",
                "ecard": 52,
                "users": 1035,
                "games": 6,
                "participants": 228,
                "rounds": 97
            }
        }
    ]
}
```

## 用户参赛卡

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/users/<ID>/cards"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/users/<ID>/cards`

### Query Parameters

Parameter | Description
--------- | -----------
ID|用户ID

### Uul Parameters
Parameter | Description
--------- | -----------
type|0或者1 0代表没用的卡，1是有用的

> 返回内容

```json
{
    "data": [
        {
            "id": 2,
            "type": 0,
            "count": 1,
            "scheduled_at": "2017-07-04 13:21:43 +0800",
            "user": {
                "id": 1,
                "username": "ufozhengli@163.com"
            },
            "club": {
                "id": 1,
                "name": "blah",
                "address": "blah",
                "ecard": 52,
                "users": 1035,
                "games": 6,
                "participants": 228,
                "rounds": 97
            }
        }
    ]
}
```

## 用户参赛卡详情

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/cards/<ID>"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/cards/<ID>`

### Query Parameters

Parameter | Description
--------- | -----------
ID|参赛卡ID

> 返回内容

```json
{
    "data": [
        {
            "id": 2,
            "type": 0,
            "count": 1,
            "scheduled_at": "2017-07-04 13:21:43 +0800",
            "user": {
                "id": 1,
                "username": "ufozhengli@163.com"
            },
            "club": {
                "id": 1,
                "name": "blah",
                "address": "blah",
                "ecard": 52,
                "users": 1035,
                "games": 6,
                "participants": 228,
                "rounds": 97
            }
        }
    ]
}
```

## 获取excited视频

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/excited"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/excited`


> 返回内容

```json
同Rounds其他接口
```
