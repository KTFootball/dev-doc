# 大课间

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

## 获取大课间列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses`

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "幼儿园大课间",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/幼儿园大课间.zip",
            "duration": 113,
            "strength": "中强度"
        },
        {
            "id": 2,
            "name": "大课间第一套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第一套.zip",
            "duration": 122,
            "strength": "中强度"
        },
        {
            "id": 3,
            "name": "大课间第二套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第二套.zip",
            "duration": 127,
            "strength": "中强度"
        },
        {
            "id": 4,
            "name": "大课间第三套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第三套.zip",
            "duration": 113,
            "strength": "中强度"
        },
        {
            "id": 5,
            "name": "大课间第四套",
            "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
            "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
            "duration": 119,
            "strength": "中强度"
        }
    ]
}
```

## 创建大课间包

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|大课间第四套|true|大课间时间
requirements|整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.|true|大课间要求
video_url|http://public.ktfootball.com/download/recess/大课间第四套.zip|true|视频下载zip地址
duration|119|true|持续时间
strength|中强度|true|大课间强度


> 返回内容

```json
{
    "data":  {
        "id": 5,
        "name": "大课间第四套",
        "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
        "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
        "duration": 119,
        "strength": "中强度"
    }
}
```

## 更新大课间

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>"
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/recesses/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|大课间第四套|false|大课间时间
requirements|整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.|false|大课间要求
video_url|http://public.ktfootball.com/download/recess/大课间第四套.zip|false|视频下载zip地址
duration|119|false|持续时间
strength|中强度|false|大课间强度

```json
{
    "data":  {
        "id": 5,
        "name": "大课间第四套",
        "requirements": "整齐,统一,学生1-2排横列,左右前后间隔2-3米,老师在前面示范.",
        "video_url": "http://public.ktfootball.com/download/recess/大课间第四套.zip",
        "duration": 119,
        "strength": "中强度"
    }
}
```

## 删除大课间

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>"
```

### HTTP Request

  `DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`


> 返回内容

```json
{
    "data": "success"
}
```