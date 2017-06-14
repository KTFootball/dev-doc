# 测评

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

## 获取技能列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/skills"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/skills`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
category|控球类|false|技能类型（控球类，传球类两种）

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/脚底踩球.gif"
        },
        {
            "id": 2,
            "category": "控球类",
            "level": 6,
            "gif_url": "http://public.ktfootball.com/download/still/正脚背颠球.gif"
        },
        {
            "id": 3,
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
        },
        {
            "id": 4,
            "category": "控球类",
            "level": 5,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧踢球.gif"
        },
        {
            "id": 5,
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/外脚背运球.gif"
        },
        {
            "id": 6,
            "category": "控球类",
            "level": 4,
            "gif_url": "http://public.ktfootball.com/download/still/踩单车.gif"
        },
        {
            "id": 7,
            "category": "控球类",
            "level": 4,
            "gif_url": "http://public.ktfootball.com/download/still/内晃外拨.gif"
        },
        {
            "id": 8,
            "category": "控球类",
            "level": 6,
            "gif_url": "http://public.ktfootball.com/download/still/大腿颠球.gif"
        },
        {
            "id": 9,
            "category": "传球类",
            "level": 5,
            "gif_url": "http://public.ktfootball.com/download/still/正脚背踢球.gif"
        },
        {
            "id": 10,
            "category": "控球类",
            "level": 4,
            "gif_url": "http://public.ktfootball.com/download/still/内跨外拨.gif"
        },
        {
            "id": 11,
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/踩球变向.gif"
        },
        {
            "id": 12,
            "category": "控球类",
            "level": 5,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧身后扣球.gif"
        },
        {
            "id": 13,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/靠球过人.gif"
        },
        {
            "id": 14,
            "category": "控球类",
            "level": 7,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧颠球.gif"
        },
        {
            "id": 15,
            "category": "传球类",
            "level": 6,
            "gif_url": "http://public.ktfootball.com/download/still/起球.gif"
        },
        {
            "id": 16,
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧扣球.gif"
        },
        {
            "id": 17,
            "category": "传球类",
            "level": 7,
            "gif_url": "http://public.ktfootball.com/download/still/脚背内侧传球.gif"
        },
        {
            "id": 18,
            "category": "传球类",
            "level": 7,
            "gif_url": "http://public.ktfootball.com/download/still/脚背外侧传球.gif"
        },
        {
            "id": 19,
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/外脚背停球变向.gif"
        },
        {
            "id": 20,
            "category": "控球类",
            "level": 7,
            "gif_url": "http://public.ktfootball.com/download/still/头颠球.gif"
        },
        {
            "id": 21,
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/假踢过人.gif"
        },
        {
            "id": 22,
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/拉球摆脱.gif"
        },
        {
            "id": 23,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif"
        }
    ]
}
```

## 创建测评记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments -d "skid=<SID>&uids=1,2,3&counts=10,20,30""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uids|1,2,3|true|用户ID用逗号隔开
counts|10|true|技能数量用逗号隔开
skid|1|true|技能ID
video_key|xxxxx|false|视频Key


> 返回内容

```json
{
  "data": "success"
}
```

## 更新测评记录个数

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID> -d "count=10""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
count|10|true|技能数量


> 返回内容

```json
{
    "data": {
        "id": 1,
        "count": 20,
        "skill": {
            "id": 23,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif"
        },
        "video": "",
        "created_at": "2017-06-14 11:33:45 +0800"
    }
}
```

## 更新测评视频key

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID> -d "key=<KEY>""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
key|xxxx|true|七牛上传视频Key


> 返回内容

```json
{
    "data": {
        "id": 1,
        "count": 20,
        "skill": {
            "id": 23,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif"
        },
        "video": "",
        "created_at": "2017-06-14 11:33:45 +0800"
    }
}
```