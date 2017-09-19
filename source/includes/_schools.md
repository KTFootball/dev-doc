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
gender|1|false|性别 1 男 0 女
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


## 查询校园的测评记录，按照total从大到小排序

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

## 校园排行榜（全国学校）

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/schools"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/schools`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json
{
    "data": {
        "idx": 20,
        "rank_info": {
            "id": 3,
            "name": "测试",
            "users": 137,
            "classrooms": 16,
            "contribution": 0
        },
        "list": [
            {
                "id": 1,
                "name": "测试学校",
                "users": 1,
                "classrooms": 3,
                "contribution": 2
            },
            {
                "id": 42,
                "name": "       ",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 41,
                "name": "熊猫乐园",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 21,
                "name": "虹桥天地小学1",
                "users": 0,
                "classrooms": 8,
                "contribution": 0
            },
            {
                "id": 19,
                "name": " 虹桥天地小学",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 18,
                "name": "虹桥天地小学",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 17,
                "name": "sdad",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 16,
                "name": "ffff",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 15,
                "name": "sss",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 14,
                "name": "aaaaa",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 13,
                "name": "aaaa",
                "users": 0,
                "classrooms": 2,
                "contribution": 0
            },
            {
                "id": 12,
                "name": "aaa",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 11,
                "name": "xixi",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 10,
                "name": "复旦大学闵行校区",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 8,
                "name": "哈哈哈哈",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 7,
                "name": "123",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 6,
                "name": "测试abcde",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 5,
                "name": "测试abcd",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 4,
                "name": "测试abc",
                "users": 0,
                "classrooms": 0,
                "contribution": 0
            },
            {
                "id": 3,
                "name": "测试",
                "users": 137,
                "classrooms": 16,
                "contribution": 0
            },
            {
                "id": 2,
                "name": "测试名",
                "users": 0,
                "classrooms": 1,
                "contribution": 0
            },
            {
                "id": 43,
                "name": "     中国幼儿园园长",
                "users": 0,
                "classrooms": 11,
                "contribution": 0
            }
        ]
    }
}
```

## 校园排行榜（本校学生）

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/users"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/users`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json
{
    "data": [
        {
            "id": 2,
            "user_id": 1,
            "school_id": 1,
            "user": {
                "id": 1,
                "username": "ufozhengli@163.com",
                "ce": 1000
            },
            "realname": "布拿拿",
            "gender": 1,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": "1992-07-28",
            "classroom": {
                "id": 2,
                "school": 1,
                "grade": "2",
                "cls": "一班"
            }
        }
    ]
}
```

## 校园排行榜（全国学生）

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/allusers"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/ranks/<SID>/allusers`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json
{
    "data": [
        {
            "id": 2,
            "user_id": 1,
            "school_id": 1,
            "user": {
                "id": 1,
                "username": "ufozhengli@163.com",
                "ce": 1000
            },
            "realname": "布拿拿",
            "gender": 1,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": "1992-07-28",
            "classroom": {
                "id": 2,
                "school": 1,
                "grade": "2",
                "cls": "一班"
            }
        }
    ]
}
```

## 查询校园的测评记录的用户详情

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments/ranks/<UID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments/ranks/<UID>`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID
UID|用户ID

> 返回内容

```json

{
    "data": {
        "profile": {
            "id": 130,
            "user_id": 2005,
            "school_id": 3,
            "user": {
                "id": 2005,
                "username": "k3t00007",
                "ce": 1000
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
        "skill_count": 5,
        "total": 7167,
        "assessments": [
            {
                "assessment": {
                    "skill": {
                        "id": 1,
                        "name": "双脚靠球",
                        "category": "控球类",
                        "level": 0
                    },
                    "count": 66,
                    "created_at": "2017-07-19 12:00:09 +0800"
                },
                "times": 2
            },
            {
                "assessment": {
                    "skill": {
                        "id": 3,
                        "name": "脚背外侧运球",
                        "category": "控球类",
                        "level": 1
                    },
                    "count": 33,
                    "created_at": "2017-07-19 11:51:35 +0800"
                },
                "times": 3
            }
        ]
    }
}
```

## 查询校园的所有用户的测评记录

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/assessments`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID

> 返回内容

```json

{
    "data": [
			{
					"id": 159,
					"count": 1,
					"skill": {
							"id": 1,
							"name": "双脚靠球",
							"sub_title": " 翩翩起舞",
							"intro": "双脚交替跳动触球，锻炼了的控球技术，提升球感\r\n像跳舞一样轻松，愉快，有节奏感，让你的动作很有范儿！",
							"description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
							"category": "控球类",
							"level": 0,
							"gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif",
							"video_url": "http://public.ktfootball.com/download/still/双脚靠球.mp4",
							"resources": {
									"skill_id": 1,
									"cartoon": {
											"url": "http://public.ktfootball.com/download/px/03/双脚靠球教学漫画.zip",
											"fsize": 1391
									},
									"story": {
											"url": "http://public.ktfootball.com/download/px/03/双脚靠球漫画故事.zip",
											"fsize": 537
									},
									"video": [
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球初级难度.zip",
													"fsize": 4606,
													"speed": 1,
													"count": 60
											},
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球中级难度.zip",
													"fsize": 4606,
													"speed": 0.6,
													"count": 60
											},
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球高级难度.zip",
													"fsize": 4606,
													"speed": 0.3,
													"count": 60
											}
									]
							}
					},
					"video": "",
					"created_at": "2017-08-01 14:51:01 +0800"
			},
			{
					"id": 160,
					"count": 3,
					"skill": {
							"id": 1,
							"name": "双脚靠球",
							"sub_title": " 翩翩起舞",
							"intro": "双脚交替跳动触球，锻炼了的控球技术，提升球感\r\n像跳舞一样轻松，愉快，有节奏感，让你的动作很有范儿！",
							"description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
							"category": "控球类",
							"level": 0,
							"gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif",
							"video_url": "http://public.ktfootball.com/download/still/双脚靠球.mp4",
							"resources": {
									"skill_id": 1,
									"cartoon": {
											"url": "http://public.ktfootball.com/download/px/03/双脚靠球教学漫画.zip",
											"fsize": 1391
									},
									"story": {
											"url": "http://public.ktfootball.com/download/px/03/双脚靠球漫画故事.zip",
											"fsize": 537
									},
									"video": [
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球初级难度.zip",
													"fsize": 4606,
													"speed": 1,
													"count": 60
											},
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球中级难度.zip",
													"fsize": 4606,
													"speed": 0.6,
													"count": 60
											},
											{
													"url": "http://public.ktfootball.com/download/px/03/双脚靠球高级难度.zip",
													"fsize": 4606,
													"speed": 0.3,
													"count": 60
											}
									]
							}
					},
					"video": "",
					"created_at": "2017-08-01 14:51:01 +0800"
			}
	]
}
```

## 查询校园所有的大课间记录

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/recess_records"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/recess_records`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID



> 返回内容

```json

{
    "data": [
			{
            "id": 3,
            "classroom": {
                "id": 9,
                "school": 3,
                "grade": "2",
                "cls": "精英班"
            },
            "recess": {
                "id": 1,
                "name": "幼儿园大课间"
            },
            "video_key": null,
            "video": null
        },
        {
            "id": 4,
            "classroom": {
                "id": 10,
                "school": 3,
                "grade": "2",
                "cls": "一班"
            },
            "recess": {
                "id": 1,
                "name": "幼儿园大课间"
            },
            "video_key": null,
            "video": null
        },
        {
            "id": 5,
            "classroom": {
                "id": 9,
                "school": 3,
                "grade": "2",
                "cls": "精英班"
            },
            "recess": {
                "id": 1,
                "name": "幼儿园大课间"
            },
            "video_key": null,
            "video": null
        }
	]
}
```

## 查询校园所有比赛的记录

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/rounds"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/rounds`

### Url Parameters
Parameter | Description
--------- | -----------
SID|学校ID

### Query Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
type|1、2、3、其他数字|true|比赛类型(1v1, 2v2, 3v3, 其他)

> 返回内容

```json

{
    "data": [
			{
            "id": 565,
            "type": "Round1v1",
            "game_id": 109,
            "game": {
                "id": 109,
                "name": "123456",
                "address": "虹源盛世国际文化城",
                "start_at": "2017-08-02 00:00:00 +0800",
                "end_at": "2017-08-03 00:00:00 +0800",
                "lat": 31.197181,
                "lng": 121.312189,
                "image_key": null,
                "image_keys": null,
                "image": null,
                "images": [],
                "host": {
                    "id": 3,
                    "name": "测试",
                    "address": "虹桥万科中心",
                    "ecard": 9774,
                    "users": 150,
                    "games": 5,
                    "participants": 34,
                    "rounds": 12
                }
            },
            "cross": "2,1",
            "goal": "1,1",
            "foul": "1,2",
            "side_a": [
                {
                    "id": 1551,
                    "user_id": 2274,
                    "profile": {
                        "id": 273,
                        "user_id": 2274,
                        "school_id": 3,
                        "user": {
                            "id": 2274,
                            "username": "k3t00150",
                            "ce": 1000
                        },
                        "realname": null,
                        "gender": 1,
                        "point": 0,
                        "ce": 1256,
                        "avatar": null,
                        "birthday": null,
                        "classroom": {
                            "id": 20,
                            "school": 3,
                            "grade": "1",
                            "cls": "ads班"
                        }
                    },
                    "kt": true
                }
            ],
            "side_b": [
                {
                    "id": 1552,
                    "user_id": 2275,
                    "profile": {
                        "id": 274,
                        "user_id": 2275,
                        "school_id": 3,
                        "user": {
                            "id": 2275,
                            "username": "k3t00151",
                            "ce": 1000
                        },
                        "realname": null,
                        "gender": 1,
                        "point": 0,
                        "ce": 552,
                        "avatar": null,
                        "birthday": "2017-08-02",
                        "classroom": null
                    },
                    "kt": false
                }
            ],
            "image_keys": null,
            "video_key": "llQHw_0v770TBmmHFh9YYiDIsRml",
            "duration": 24,
            "scores": "4,3",
            "video_url": "http://oqe9ssuil.bkt.clouddn.com/llQHw_0v770TBmmHFh9YYiDIsRml-zip?e=1501735886&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:SlG9tAUVNKz_1y4vXVIfGO8KEgs=",
            "images_url": [],
            "created_at": "2017-08-02 16:10:49 +0800"
        },
        {
            "id": 564,
            "type": "Round1v1",
            "game_id": 109,
            "game": {
                "id": 109,
                "name": "123456",
                "address": "虹源盛世国际文化城",
                "start_at": "2017-08-02 00:00:00 +0800",
                "end_at": "2017-08-03 00:00:00 +0800",
                "lat": 31.197181,
                "lng": 121.312189,
                "image_key": null,
                "image_keys": null,
                "image": null,
                "images": [],
                "host": {
                    "id": 3,
                    "name": "测试",
                    "address": "虹桥万科中心",
                    "ecard": 9774,
                    "users": 150,
                    "games": 5,
                    "participants": 34,
                    "rounds": 12
                }
            },
            "cross": "1,0",
            "goal": "0,0",
            "foul": "0,0",
            "side_a": [
                {
                    "id": 1549,
                    "user_id": 2274,
                    "profile": {
                        "id": 273,
                        "user_id": 2274,
                        "school_id": 3,
                        "user": {
                            "id": 2274,
                            "username": "k3t00150",
                            "ce": 1000
                        },
                        "realname": null,
                        "gender": 1,
                        "point": 0,
                        "ce": 1256,
                        "avatar": null,
                        "birthday": null,
                        "classroom": {
                            "id": 20,
                            "school": 3,
                            "grade": "1",
                            "cls": "ads班"
                        }
                    },
                    "kt": true
                }
            ],
            "side_b": [
                {
                    "id": 1550,
                    "user_id": 2275,
                    "profile": {
                        "id": 274,
                        "user_id": 2275,
                        "school_id": 3,
                        "user": {
                            "id": 2275,
                            "username": "k3t00151",
                            "ce": 1000
                        },
                        "realname": null,
                        "gender": 1,
                        "point": 0,
                        "ce": 552,
                        "avatar": null,
                        "birthday": "2017-08-02",
                        "classroom": null
                    },
                    "kt": false
                }
            ],
            "image_keys": null,
            "video_key": "FuSVRgrd9Zfja_ai1g4W7a1wZ1Pm",
            "duration": 14,
            "scores": "1,0",
            "video_url": "http://oqe9ssuil.bkt.clouddn.com/FuSVRgrd9Zfja_ai1g4W7a1wZ1Pm-zip?e=1501735887&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:DOU05uExOiUbcIhA4y4LkoTtUT8=",
            "images_url": [],
            "created_at": "2017-08-02 14:19:40 +0800"
        }
	]
}
```



## 查询校园所有老师

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/teachers"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/teachers`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校ID



> 返回内容

```json

{
    "data": [
        {
            "id": 3,
            "user": {
                "username": "18565352164"
            },
            "school": {
                "id": 3,
                "name": "测试",
                "address": "虹桥万科中心",
                "ecard": 9773,
                "users": 151,
                "games": 5,
                "participants": 34,
                "rounds": 12
            },
            "contribution": 0
        },
        {
            "id": 5,
            "user": {
                "username": "18301964301"
            },
            "school": {
                "id": 3,
                "name": "测试",
                "address": "虹桥万科中心",
                "ecard": 9773,
                "users": 151,
                "games": 5,
                "participants": 34,
                "rounds": 12
            },
            "contribution": 0
        }
    ]
}
```

## 创建操作记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skill_excerises"
```

### HTTP Request

`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skill_excerises`


### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
sid|1|true|用户ID
uid|1|true|技能ID
duration|90|true|时长

> 返回内容

```json
{
    "data": {
        "id": 2,
        "user_id": 1,
        "user": {
            "id": 1,
            "username": "ufozhengli@163.com",
            "ce": 1000
        },
        "skill_id": 1,
        "skill": {
            "id": 1,
            "name": "双脚靠球",
            "category": "控球类",
            "level": 0
        }
    }
}
```

## 测评排行榜

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks/assessments/skills/<SID>"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks/assessments/skills/<SID>`


### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
SID|1|true|技能ID


> 返回内容

```json
{
    "data": [
        {
            "id": 269,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 2455
        },
        {
            "id": 166,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 215,
                "user_id": 2203,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2203,
                    "uid": 2203,
                    "username": "k3t00092",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k3t00092",
                "gender": 2,
                "point": 0,
                "ce": 1000,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fh6LD6eZUbP3mPzUrHRxYsG6OdM2?e=1503563417&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:TVxdIwG9l1JXffzin7wHbCNHvyU=",
                "birthday": "2003-09-30",
                "classroom": {
                    "id": 11,
                    "school": 3,
                    "grade": "2",
                    "cls": "二班"
                }
            },
            "count": 999
        },
        {
            "id": 293,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 888
        },
        {
            "id": 132,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2001,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2001,
                    "uid": 2001,
                    "username": "k3t00003",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 666
        },
        {
            "id": 215,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 123
        },
        {
            "id": 236,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 329,
                "user_id": 2288,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2288,
                    "uid": 2288,
                    "username": "oys4MwQNkm3Uy5bjVhG5g7bq6bfU",
                    "source_name": "轩",
                    "source_avatar": "http://wx.qlogo.cn/mmopen/6tdM4FTia18YlaftR6CXkyVStf221WuGWln82Xicxicc7iaZankT4Oywpvak3qCUichk5IbIT9joJglQXMtYYWaVCnpX7zxBmwIXib/0",
                    "ce": 1064
                },
                "realname": "小花",
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-24",
                "classroom": {
                    "id": 51,
                    "school": 3,
                    "grade": "15",
                    "cls": "1班"
                }
            },
            "count": 120
        },
        {
            "id": 281,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 100
        },
        {
            "id": 239,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2000,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2000,
                    "uid": 2000,
                    "username": "k3t00002",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 99
        },
        {
            "id": 177,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 99
        },
        {
            "id": 273,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2136,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2136,
                    "uid": 2136,
                    "username": "k3t00049",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 99
        },
        {
            "id": 156,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 195,
                "user_id": 2159,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2159,
                    "uid": 2159,
                    "username": "k3t00072",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 91
        },
        {
            "id": 279,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 90
        },
        {
            "id": 153,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 194,
                "user_id": 2158,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2158,
                    "uid": 2158,
                    "username": "k3t00071",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 90
        },
        {
            "id": 167,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 90
        },
        {
            "id": 181,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 139,
                "user_id": 2020,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2020,
                    "uid": 2020,
                    "username": "k3t00016",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "这就对了",
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fn6cqJ23LhsdUf8ID77oKcU8NBlG?e=1503563418&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:q1F7Yt6lIX0Gq4atSR8C6OLNRsA=",
                "birthday": null,
                "classroom": {
                    "id": 21,
                    "school": 3,
                    "grade": "15",
                    "cls": "35班"
                }
            },
            "count": 89
        },
        {
            "id": 72,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 131,
                "user_id": 2006,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2006,
                    "uid": 2006,
                    "username": "k3t00008",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 848,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 88
        },
        {
            "id": 73,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 132,
                "user_id": 2007,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2007,
                    "uid": 2007,
                    "username": "k3t00009",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "没有名字",
                "gender": 2,
                "point": 0,
                "ce": 824,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 18,
                    "school": 3,
                    "grade": "15",
                    "cls": "日天班"
                }
            },
            "count": 88
        },
        {
            "id": 76,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 131,
                "user_id": 2006,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2006,
                    "uid": 2006,
                    "username": "k3t00008",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 848,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 88
        },
        {
            "id": 77,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 132,
                "user_id": 2007,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2007,
                    "uid": 2007,
                    "username": "k3t00009",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "没有名字",
                "gender": 2,
                "point": 0,
                "ce": 824,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 18,
                    "school": 3,
                    "grade": "15",
                    "cls": "日天班"
                }
            },
            "count": 88
        },
        {
            "id": 176,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 88
        },
        {
            "id": 212,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 88
        },
        {
            "id": 74,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 129,
                "user_id": 2004,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2004,
                    "uid": 2004,
                    "username": "k3t00006",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k好好好",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 9,
                    "school": 3,
                    "grade": "2",
                    "cls": "精英班"
                }
            },
            "count": 85
        },
        {
            "id": 83,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 135,
                "user_id": 2010,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2010,
                    "uid": 2010,
                    "username": "k3t00012",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 920,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 85
        },
        {
            "id": 178,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 85
        },
        {
            "id": 187,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2000,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2000,
                    "uid": 2000,
                    "username": "k3t00002",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 80
        },
        {
            "id": 280,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 78
        },
        {
            "id": 297,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 77
        },
        {
            "id": 229,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 135,
                "user_id": 2010,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2010,
                    "uid": 2010,
                    "username": "k3t00012",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 920,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 69
        },
        {
            "id": 210,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 67
        },
        {
            "id": 71,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2005,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2005,
                    "uid": 2005,
                    "username": "k3t00007",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 66
        },
        {
            "id": 75,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2005,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2005,
                    "uid": 2005,
                    "username": "k3t00007",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 66
        },
        {
            "id": 81,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 134,
                "user_id": 2009,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2009,
                    "uid": 2009,
                    "username": "k3t00011",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "张",
                "gender": 2,
                "point": 0,
                "ce": 984,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/FvpkKL6eEu736vaUFHBJ01zgFjye?e=1503563419&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:VLCUpqmxwi8-uk3Oh3G0oqwv340=",
                "birthday": null,
                "classroom": {
                    "id": 18,
                    "school": 3,
                    "grade": "15",
                    "cls": "日天班"
                }
            },
            "count": 66
        },
        {
            "id": 175,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 66
        },
        {
            "id": 296,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 66
        },
        {
            "id": 232,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 165,
                "user_id": 2127,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2127,
                    "uid": 2127,
                    "username": "k3t00042",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 65
        },
        {
            "id": 233,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 166,
                "user_id": 2130,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2130,
                    "uid": 2130,
                    "username": "k3t00043",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 65
        },
        {
            "id": 228,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 128,
                "user_id": 2003,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2003,
                    "uid": 2003,
                    "username": "k3t00005",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 952
                },
                "realname": "于大大",
                "gender": 1,
                "point": 0,
                "ce": -248,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fs1uqQe5meoPGg8V5xVk-oxOxiJT?e=1503563420&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:rj3m7uHrp5hNGpwEouOLRtxKf9A=",
                "birthday": "2017-08-04",
                "classroom": {
                    "id": 117,
                    "school": 3,
                    "grade": "12",
                    "cls": "日天班"
                }
            },
            "count": 65
        },
        {
            "id": 158,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 179,
                "user_id": 2143,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2143,
                    "uid": 2143,
                    "username": "k3t00056",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 920,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 65
        },
        {
            "id": 171,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 65
        },
        {
            "id": 70,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 129,
                "user_id": 2004,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2004,
                    "uid": 2004,
                    "username": "k3t00006",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k好好好",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 9,
                    "school": 3,
                    "grade": "2",
                    "cls": "精英班"
                }
            },
            "count": 55
        },
        {
            "id": 78,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 128,
                "user_id": 2003,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2003,
                    "uid": 2003,
                    "username": "k3t00005",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 952
                },
                "realname": "于大大",
                "gender": 1,
                "point": 0,
                "ce": -248,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fs1uqQe5meoPGg8V5xVk-oxOxiJT?e=1503563420&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:rj3m7uHrp5hNGpwEouOLRtxKf9A=",
                "birthday": "2017-08-04",
                "classroom": {
                    "id": 117,
                    "school": 3,
                    "grade": "12",
                    "cls": "日天班"
                }
            },
            "count": 55
        },
        {
            "id": 79,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2001,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2001,
                    "uid": 2001,
                    "username": "k3t00003",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 55
        },
        {
            "id": 91,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2000,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2000,
                    "uid": 2000,
                    "username": "k3t00002",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 55
        },
        {
            "id": 295,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 55
        },
        {
            "id": 137,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 194,
                "user_id": 2158,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2158,
                    "uid": 2158,
                    "username": "k3t00071",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 55
        },
        {
            "id": 294,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 55
        },
        {
            "id": 180,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 55
        },
        {
            "id": 201,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 55
        },
        {
            "id": 284,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 50
        },
        {
            "id": 155,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 167,
                "user_id": 2131,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2131,
                    "uid": 2131,
                    "username": "k3t00044",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "hahaha",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 21,
                    "school": 3,
                    "grade": "15",
                    "cls": "35班"
                }
            },
            "count": 45
        },
        {
            "id": 209,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 45
        },
        {
            "id": 222,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 124,
                "user_id": 1999,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 1999,
                    "uid": 1999,
                    "username": "k3t00001",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 588
                },
                "realname": "很健康",
                "gender": 1,
                "point": 0,
                "ce": 1516,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/FsHXBRWSZa3mSULwH-our7aYpe79?e=1503563421&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:qP9jzJokYoZeT2o3tlit9vnvfI8=",
                "birthday": null,
                "classroom": {
                    "id": 14,
                    "school": 3,
                    "grade": "4",
                    "cls": "四班"
                }
            },
            "count": 38
        },
        {
            "id": 230,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 161,
                "user_id": 2083,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2083,
                    "uid": 2083,
                    "username": "k3t00038",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "乔羽",
                "gender": 1,
                "point": 0,
                "ce": 968,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 13,
                    "school": 3,
                    "grade": "3",
                    "cls": "四班"
                }
            },
            "count": 36
        },
        {
            "id": 116,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2000,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2000,
                    "uid": 2000,
                    "username": "k3t00002",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 36
        },
        {
            "id": 195,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 36
        },
        {
            "id": 197,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 36
        },
        {
            "id": 169,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 35
        },
        {
            "id": 292,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 33
        },
        {
            "id": 179,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 33
        },
        {
            "id": 211,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 33
        },
        {
            "id": 90,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 128,
                "user_id": 2003,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2003,
                    "uid": 2003,
                    "username": "k3t00005",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 952
                },
                "realname": "于大大",
                "gender": 1,
                "point": 0,
                "ce": -248,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fs1uqQe5meoPGg8V5xVk-oxOxiJT?e=1503563421&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:XmhuIsOZzsMu-OZiNfNiKt1PfhU=",
                "birthday": "2017-08-04",
                "classroom": {
                    "id": 117,
                    "school": 3,
                    "grade": "12",
                    "cls": "日天班"
                }
            },
            "count": 32
        },
        {
            "id": 282,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 30
        },
        {
            "id": 202,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 284,
                "user_id": 2285,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2285,
                    "uid": 2285,
                    "username": "k3t00161",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "2017-08-30",
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 30
        },
        {
            "id": 214,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 26
        },
        {
            "id": 248,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2081,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2081,
                    "uid": 2081,
                    "username": "k3t00036",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 25
        },
        {
            "id": 134,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 138,
                "user_id": 2019,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2019,
                    "uid": 2019,
                    "username": "k3t00015",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k3t00015",
                "gender": 1,
                "point": 0,
                "ce": 840,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fo81j8t1v9aE8M6xjC7mwHsTZ-rs?e=1503563422&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:Ykrd0fF7ZGahx04Oyez81HAnXa4=",
                "birthday": null,
                "classroom": {
                    "id": 18,
                    "school": 3,
                    "grade": "15",
                    "cls": "日天班"
                }
            },
            "count": 25
        },
        {
            "id": 301,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 215,
                "user_id": 2203,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2203,
                    "uid": 2203,
                    "username": "k3t00092",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k3t00092",
                "gender": 2,
                "point": 0,
                "ce": 1000,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fh6LD6eZUbP3mPzUrHRxYsG6OdM2?e=1503563422&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:1WMtM5rYaFMXoU3vtTEWuNG6sso=",
                "birthday": "2003-09-30",
                "classroom": {
                    "id": 11,
                    "school": 3,
                    "grade": "2",
                    "cls": "二班"
                }
            },
            "count": 25
        },
        {
            "id": 219,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 25
        },
        {
            "id": 172,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 25
        },
        {
            "id": 196,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 25
        },
        {
            "id": 199,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 25
        },
        {
            "id": 206,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 25
        },
        {
            "id": 300,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 129,
                "user_id": 2004,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2004,
                    "uid": 2004,
                    "username": "k3t00006",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k好好好",
                "gender": 1,
                "point": 0,
                "ce": 1064,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 9,
                    "school": 3,
                    "grade": "2",
                    "cls": "精英班"
                }
            },
            "count": 23
        },
        {
            "id": 198,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 23
        },
        {
            "id": 80,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2001,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2001,
                    "uid": 2001,
                    "username": "k3t00003",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 22
        },
        {
            "id": 82,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2008,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2008,
                    "uid": 2008,
                    "username": "k3t00010",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 22
        },
        {
            "id": 247,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2136,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2136,
                    "uid": 2136,
                    "username": "k3t00049",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 22
        },
        {
            "id": 213,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 277,
                "user_id": 2278,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2278,
                    "uid": 2278,
                    "username": "k3t00154",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 22
        },
        {
            "id": 217,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2005,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2005,
                    "uid": 2005,
                    "username": "k3t00007",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 20
        },
        {
            "id": 185,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 20
        },
        {
            "id": 204,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 273,
                "user_id": 2274,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2274,
                    "uid": 2274,
                    "username": "k3t00150",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1256,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 18
        },
        {
            "id": 208,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 156,
                "user_id": 2078,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2078,
                    "uid": 2078,
                    "username": "k3t00033",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "dasdadsss",
                "gender": 1,
                "point": 0,
                "ce": 696,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 17
        },
        {
            "id": 130,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2049,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2049,
                    "uid": 2049,
                    "username": "k3t00019",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 16
        },
        {
            "id": 146,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2160,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2160,
                    "uid": 2160,
                    "username": "k3t00073",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 16
        },
        {
            "id": 205,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2077,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2077,
                    "uid": 2077,
                    "username": "k3t00032",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 16
        },
        {
            "id": 223,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 235,
                "user_id": 2223,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2223,
                    "uid": 2223,
                    "username": "k3t00112",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "k3t00112",
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 10,
                    "school": 3,
                    "grade": "2",
                    "cls": "一班"
                }
            },
            "count": 15
        },
        {
            "id": 143,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 128,
                "user_id": 2003,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2003,
                    "uid": 2003,
                    "username": "k3t00005",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 952
                },
                "realname": "于大大",
                "gender": 1,
                "point": 0,
                "ce": -248,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fs1uqQe5meoPGg8V5xVk-oxOxiJT?e=1503563423&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:MAqUOgPbg9o66sJ_HxdRUke2Jz4=",
                "birthday": "2017-08-04",
                "classroom": {
                    "id": 117,
                    "school": 3,
                    "grade": "12",
                    "cls": "日天班"
                }
            },
            "count": 15
        },
        {
            "id": 144,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 194,
                "user_id": 2158,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2158,
                    "uid": 2158,
                    "username": "k3t00071",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 15
        },
        {
            "id": 145,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 195,
                "user_id": 2159,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2159,
                    "uid": 2159,
                    "username": "k3t00072",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 15
        },
        {
            "id": 224,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 15
        },
        {
            "id": 203,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 152,
                "user_id": 2074,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2074,
                    "uid": 2074,
                    "username": "k3t00029",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "asdad",
                "gender": 0,
                "point": 0,
                "ce": 264,
                "avatar": null,
                "birthday": null,
                "classroom": {
                    "id": 20,
                    "school": 3,
                    "grade": "1",
                    "cls": "ads班"
                }
            },
            "count": 15
        },
        {
            "id": 216,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2005,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2005,
                    "uid": 2005,
                    "username": "k3t00007",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 15
        },
        {
            "id": 141,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2049,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2049,
                    "uid": 2049,
                    "username": "k3t00019",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 13
        },
        {
            "id": 142,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": 128,
                "user_id": 2003,
                "school_id": 3,
                "school": {
                    "id": 3,
                    "name": "测试"
                },
                "user": {
                    "id": 2003,
                    "uid": 2003,
                    "username": "k3t00005",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 952
                },
                "realname": "于大大",
                "gender": 1,
                "point": 0,
                "ce": -248,
                "avatar": "http://oqurrrspm.bkt.clouddn.com/Fs1uqQe5meoPGg8V5xVk-oxOxiJT?e=1503563423&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:MAqUOgPbg9o66sJ_HxdRUke2Jz4=",
                "birthday": "2017-08-04",
                "classroom": {
                    "id": 117,
                    "school": 3,
                    "grade": "12",
                    "cls": "日天班"
                }
            },
            "count": 12
        },
        {
            "id": 147,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        },
        {
            "id": 149,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        },
        {
            "id": 151,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        },
        {
            "id": 152,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2049,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2049,
                    "uid": 2049,
                    "username": "k3t00019",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        },
        {
            "id": 200,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        },
        {
            "id": 207,
            "skill": {
                "id": 1,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0
            },
            "profile": {
                "id": null,
                "user_id": 2050,
                "school_id": null,
                "school": null,
                "user": {
                    "id": 2050,
                    "uid": 2050,
                    "username": "k3t00020",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": null,
                "gender": null,
                "point": null,
                "ce": null,
                "avatar": null,
                "birthday": null,
                "classroom": null
            },
            "count": 12
        }
    ]
}
```

## 测评排行榜详情

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks/assessments/<ID>"
```

### HTTP Request

`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks/assessments/<ID>`


### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ID|1|true|测评ID


> 返回内容

```json
{
    "data": {
        "id": 1,
        "count": 20,
        "profile": {
            "id": 2,
            "user_id": 1,
            "school_id": 1,
            "school": {
                "id": 1,
                "name": "ttttsfsfddd"
            },
            "user": {
                "id": 1,
                "uid": 1,
                "username": "ufozhengli@163.com",
                "source_name": null,
                "source_avatar": null,
                "ce": 1000
            },
            "realname": "布拿拿",
            "gender": 1,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": "1992-07-28",
            "classroom": {
                "id": 2,
                "school": 1,
                "grade": "2",
                "cls": "一班"
            }
        },
        "skill": {
            "id": 23,
            "name": "外脚背停球变向",
            "category": "控球类",
            "level": 1
        },
        "video_key": null,
        "video": null,
        "created_at": "2017-06-14 11:33:45 +0800"
    },
    "extra": {
        "country": {
            "id": 1,
            "count": 20,
            "profile": {
                "id": 2,
                "user_id": 1,
                "school_id": 1,
                "school": {
                    "id": 1,
                    "name": "ttttsfsfddd"
                },
                "user": {
                    "id": 1,
                    "uid": 1,
                    "username": "ufozhengli@163.com",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "布拿拿",
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "1992-07-28",
                "classroom": {
                    "id": 2,
                    "school": 1,
                    "grade": "2",
                    "cls": "一班"
                }
            },
            "skill": {
                "id": 23,
                "name": "外脚背停球变向",
                "category": "控球类",
                "level": 1
            },
            "video_key": null,
            "video": null,
            "created_at": "2017-06-14 11:33:45 +0800"
        },
        "school": {
            "id": 1,
            "count": 20,
            "profile": {
                "id": 2,
                "user_id": 1,
                "school_id": 1,
                "school": {
                    "id": 1,
                    "name": "ttttsfsfddd"
                },
                "user": {
                    "id": 1,
                    "uid": 1,
                    "username": "ufozhengli@163.com",
                    "source_name": null,
                    "source_avatar": null,
                    "ce": 1000
                },
                "realname": "布拿拿",
                "gender": 1,
                "point": 0,
                "ce": 1000,
                "avatar": null,
                "birthday": "1992-07-28",
                "classroom": {
                    "id": 2,
                    "school": 1,
                    "grade": "2",
                    "cls": "一班"
                }
            },
            "skill": {
                "id": 23,
                "name": "外脚背停球变向",
                "category": "控球类",
                "level": 1
            },
            "video_key": null,
            "video": null,
            "created_at": "2017-06-14 11:33:45 +0800"
        }
    }
}
```

## 批量创建班级

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/schools/<ID>/batch"
```

### HTTP Request

`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/schools/<ID>/batch`


### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ID|1|true|学校ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
grades|0,1,2|true|多个年级（逗号隔开）
counts|5,5,5|true|年级对应的班级数量（逗号隔开）