# SNS组件

## 服务简介

SERVICE_NAME:  
 
`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 获取评论列表

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v1/comments/<TYPE>/<TID>`

### Query Parameters

Parameter | Description
--------- | -----------
TYPE|类型(rounds, assessments, promotions)
TID|Round,Assessment,Promotion ID

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
page|0|false|页数
limit|10|false|每页显示

> 返回内容

```json
{
    "data": [
        {
            "id": 8,
            "user_id": 1929,
            "user": {
                "uid": 1929,
                "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
                "mobile": "15962989115",
                "source_name": "Wei",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
                "sign_in_count": 6754,
                "vip": true,
                "vip_expire_at": "2023-08-17 17:57:02 +0800"
            },
            "content": "hello"
        },
        {
            "id": 7,
            "user_id": 1929,
            "user": {
                "uid": 1929,
                "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
                "mobile": "15962989115",
                "source_name": "Wei",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
                "sign_in_count": 6754,
                "vip": true,
                "vip_expire_at": "2023-08-17 17:57:02 +0800"
            },
            "content": "hello"
        },
        {
            "id": 6,
            "user_id": 1929,
            "user": {
                "uid": 1929,
                "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
                "mobile": "15962989115",
                "source_name": "Wei",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
                "sign_in_count": 6754,
                "vip": true,
                "vip_expire_at": "2023-08-17 17:57:02 +0800"
            },
            "content": "hello"
        }
    ],
    "count": 4
}
```

## 获取点赞数

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v1/likes/<TYPE>/<TID>`

### Query Parameters

Parameter | Description
--------- | -----------
TYPE|类型(rounds, assessments, promotions)
TID|Round,Assessment,Promotion ID

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
page|0|false|页数
limit|10|false|每页显示

> 返回内容

```json
{
    "data": [],
    "count": 1
}
```

## 评论

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE>/api/v1/comments`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
type|assessment|true|评论类型，可选assessment,round,promotion
tid|1|true|该类型所对应的ID
uid|1929|true|用户ID
content|blah blah|true|用户所提交内容

> 返回内容

```json
{
    "data": {
        "id": 9,
        "user_id": 1929,
        "user": {
            "uid": 1929,
            "username": "oys4MwYQ6pfOBw4vDUlyy0ixnDA8",
            "mobile": "15962989115",
            "source_name": "Wei",
            "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/nd7TwgqOEc49O16frRLmXj43AqWc7viaOFKic4hk9Y7gDJtznwiaNL24McNdjzIHbAgmtSWurkV9vzwM4VxXCvuBg/0",
            "sign_in_count": 6754,
            "vip": true,
            "vip_expire_at": "2023-08-17 17:57:02 +0800"
        },
        "content": "hello"
    }
}
```

## 点赞

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE>/api/v1/likes`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
type|assessment|true|评论类型，可选assessment,round,promotion
tid|1|true|该类型所对应的ID
uid|1929|true|用户ID

> 返回内容

```json
{
    "data": "success"
}
```
