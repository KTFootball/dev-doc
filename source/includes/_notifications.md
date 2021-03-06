# 消息

## 服务简介

SERVICE_NAME:  

`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=APPKEY"
```

## 获取用户所有消息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/users/<UID>"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/users/<UID>`

### Query Parameters
Parameter | Description
--------- | -----------
UID|用户ID

### Url Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
page|0|true|第几页
limit|10|true|每页返回数量

> 返回内容

```json
{
    "data": [
        {
            "id": 402,
            "user": {
                "uid": 2005,
                "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoyMDA1LCJleHAiOjE1MDE3MzQzMjQsImF1ZCI6MjAwNX0.f8rpf5JFIOhxYrkng8k4QNTylbNSMUwhHDD9OjK7Rnw",
                "username": "k3t00007",
                "mobile": null,
                "mobile_verified": false,
                "kt_coin": 0,
                "source_name": null,
                "source_avatar": null,
                "sign_in_count": 0,
                "ce": 1000
            },
            "category": "round",
            "content": "您的对战视频已经上传",
            "read": false,
            "created_at": "2017-08-03 09:35:54 +0800",
            "updated_at": null
        },
        {
            "id": 63,
            "user": {
                "uid": 2005,
                "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoyMDA1LCJleHAiOjE1MDE3MzQzMjQsImF1ZCI6MjAwNX0.f8rpf5JFIOhxYrkng8k4QNTylbNSMUwhHDD9OjK7Rnw",
                "username": "k3t00007",
                "mobile": null,
                "mobile_verified": false,
                "kt_coin": 0,
                "source_name": null,
                "source_avatar": null,
                "sign_in_count": 0,
                "ce": 1000
            },
            "category": "round",
            "content": "您的对战视频已经上传",
            "read": false,
            "created_at": "2017-08-03 09:35:25 +0800",
            "updated_at": null
        }
    ]
}
```

## 获取用户所有消息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/users/<UID>"
```

### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/users/<UID>`

### Query Parameters
Parameter | Description
--------- | -----------
UID|用户ID

### Url Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
page|0|true|第几页
limit|10|true|每页返回数量
read|1|true|已读消息

> 返回内容

```json
{
    "data": [
        {
            "id": 402,
            "user": {
                "uid": 2005,
                "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoyMDA1LCJleHAiOjE1MDE3MzQzMjQsImF1ZCI6MjAwNX0.f8rpf5JFIOhxYrkng8k4QNTylbNSMUwhHDD9OjK7Rnw",
                "username": "k3t00007",
                "mobile": null,
                "mobile_verified": false,
                "kt_coin": 0,
                "source_name": null,
                "source_avatar": null,
                "sign_in_count": 0,
                "ce": 1000
            },
            "category": "round",
            "content": "您的对战视频已经上传",
            "read": false,
            "created_at": "2017-08-03 09:35:54 +0800",
            "updated_at": null
        },
        {
            "id": 63,
            "user": {
                "uid": 2005,
                "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoyMDA1LCJleHAiOjE1MDE3MzQzMjQsImF1ZCI6MjAwNX0.f8rpf5JFIOhxYrkng8k4QNTylbNSMUwhHDD9OjK7Rnw",
                "username": "k3t00007",
                "mobile": null,
                "mobile_verified": false,
                "kt_coin": 0,
                "source_name": null,
                "source_avatar": null,
                "sign_in_count": 0,
                "ce": 1000
            },
            "category": "round",
            "content": "您的对战视频已经上传",
            "read": false,
            "created_at": "2017-08-03 09:35:25 +0800",
            "updated_at": null
        }
    ]
}
```

## 把消息从未读更新为已读

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/<NID>"
```

### HTTP Request

	`PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/notifications/<NID>`

### Query Parameters
Parameter | Description
--------- | -----------
NID|消息ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
read|1|true|消息状态

> 返回内容

```json
{
    "data": "success"
}

```
