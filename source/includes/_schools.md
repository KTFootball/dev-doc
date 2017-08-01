# 校园

## 服务简介

SERVICE_NAME:  

`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=APPKEY"
```

## 获取学校信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|学校ID

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

## 获取学校所有学员信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/users"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/users`

### Url Parameters
Parameter | Description
--------- | -----------
ID|学校ID

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

### Query Parameters
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

## 查找学校

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/query?name=<NAME>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/query`

### Query Parameters
Parameter | Description
--------- | -----------
name|学校名称

> 返回内容

```json
{
  "data": [
    {
      "id": 1,
      "name": "测试学校",
      "address": "测试地址",
      "ecard": 80
    }
  ]
}
```

## 创建学校

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools -d "name=xxxx&address=xxxx""
```

### HTTP Request

	`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test school|true|学校名字
address|blah blah|true|学校地址

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

## 更新学校

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID> -d "name=xxxx&address=xxxx""
```

### HTTP Request

	`PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|学校ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test school|true|学校名字
address|blah blah|true|学校地址

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
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms -d "grade=1&cls=1""
```

### HTTP Request

	`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms`

### Query Parameters
Parameter | Description
--------- | -----------
ID|学校ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
grade|1|true|年级
cls|blah blah|false|班级

> 返回内容

```json
{
  "data": {
    "id": 5,
    "school": 1,
    "grade": "1",
    "cls": "4"
  }
}
```

## 获取班级

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms`

### Query Parameters
Parameter | Description
--------- | -----------
ID|学校ID


> 返回内容

```json
{
  "data": [
    {
      "id": 2,
      "school": 1,
      "grade": "1",
      "cls": "2"
    },
    {
      "id": 3,
      "school": 1,
      "grade": "1",
      "cls": "3"
    },
    {
      "id": 5,
      "school": 1,
      "grade": "1",
      "cls": "4"
    }
  ]
}
```

## 删除班级

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms/<CID>"
```

### HTTP Request

	`DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms/<CID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|学校ID
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
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles -d "uid=1&sid=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/profiles`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
sid|1|true|学校ID

> 返回内容

```json
{
  "data": {
    "id": 3,
    "user_id": 2,
    "school_id": 1,
    "realname": null,
    "gender": null,
    "point": 0,
    "ce": 0,
    "avatar": null,
    "birthday": null,
    "classroom": null
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
classroom_id|1|false|班级id
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
    "classroom": {
      "id": 2,
      "school": 1,
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

### Url Parameters
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
    "classroom": {
      "id": 2,
      "school": 1,
      "grade": "1",
      "cls": "2"
    }
  }
}
```

## 创建教师信息

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers -d "uid=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers`

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
    "school": null
  }
}
```

## 获取教师信息

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|教师ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "username": "ufozhengli@163.com"
    },
    "school": {
      "id": 1,
      "name": "测试学校",
      "address": "测试地址",
      "ecard": 0
    }
  }
}
```

## 更改或者绑定学校

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID> -d "sid=1""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|教师ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
sid|1|true|学校ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "username": "ufozhengli@163.com"
    },
    "school": {
      "id": 1,
      "name": "测试学校",
      "address": "测试地址",
      "ecard": 0
    },
    "contribution": 0
  }
}
```

## 增加教师的贡献值

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID> -d "contribution=1""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/teachers/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|教师ID

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
    "school": {
      "id": 1,
      "name": "测试学校",
      "address": "测试地址",
      "ecard": 0
    },
    "contribution": 1
  }
}
```

## 快速参赛

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/quickgame"
```

### HTTP Request

`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/quickgame`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

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
    "classroom": null
  }
}
```

## 查询班级所有学生

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/classrooms/<CID>/users"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/classrooms/<CID>/users`

### Query Parameters

Parameter | Description
--------- | -----------
SID|学校ID
CID|教室ID

> 返回内容

```json
{
    "data": [
        {
            "id":61,
            "user_id":1470,
            "school_id":3,
            "user": {
                "id":1470,
                "username":"k3t00001"
            },
            "realname":null,
            "gender":1,
            "point":0,
            "ce":984,
            "avatar":null,
            "birthday":null,
            "classroom": {
                "id":7,
                "school":3,
                "grade":"0",
                "cls":"涓€鐝�"
            }
        }
    ]
}
```

## 查询校园操作记录

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/opts"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/opts`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json
{
    "data": [
        {
            "created_at": "2017-08-01 10:51:43 +0800",
            "content": "test"
        },
        {
            "created_at": "2017-08-01 10:54:03 +0800",
            "content": "test"
        },
        {
            "created_at": "2017-08-01 10:54:47 +0800",
            "content": "test"
        }
    ]
}
```

## 创建操作记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/opts"
```

### HTTP Request

`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/opts`


### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
source|school|true|类型(school club)
source_id|1|true|类型ID
content|test|true|内容

> 返回内容

```json
{
    "data": [
        {
            "created_at": "2017-08-01 10:51:43 +0800",
            "content": "test"
        }
    ]
}
```


## 查询校园的测评记录

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments/ranks"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments/ranks`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json
{
    "data": [
			{
					"user": {
							"id": 130,
							"user_id": 2005,
							"school_id": 3,
							"user": {
									"id": 2005,
									"username": "k3t00007"
							},
							"realname": null,
							"gender": 1,
							"point": 0,
							"ce": 1064,
							"avatar": null,
							"birthday": null,
							"classroom": {
									"id": 14,
									"school": 3,
									"grade": "4",
									"cls": "四班"
							}
					},
					"skill_combo": 5,
					"total": 7167
			}
    ]
}
```
