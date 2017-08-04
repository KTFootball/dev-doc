# 反馈和一些信息

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

## 反馈列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks`

> 返回内容

```json

```

## 创建反馈

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
content|blah blah|true|反馈内容
image_keys|qiniu_key,qiniu_key|false|七牛key用英文逗号隔开

> 返回内容

```json

```

## 获取一些支持的视频

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks/videos"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/feedbacks/videos`

> 返回内容

```json
{
    "data": [
        {
            "name": "检漏修补",
            "url": "http://public.ktfootball.com/download/videocenter/检漏修补.mp4"
        },
        {
            "name": "活塞慢跑气修复",
            "url": "http://public.ktfootball.com/download/videocenter/活塞慢跑气修复.mp4"
        },
        {
            "name": "气场充放",
            "url": "http://public.ktfootball.com/download/videocenter/气场充放.mp4"
        },
        {
            "name": "执裁培训",
            "url": "http://public.ktfootball.com/download/videocenter/执裁培训.mp4"
        }
    ]
}
```

## 获取用户的分享信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares/users/<UID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares/users/<UID>`

> 返回内容

```json
{
    "data": {
        "daily": 0,
        "daily_done": 0,
        "video": 0,
        "friend": 0
    }
}
```

## 分享成功提交此接口

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
category|daily|true|分类(daily, daily_done, video, friend)

> 返回内容

```json
{
    "data": "success"
}
···

## 领取奖励

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares/awards"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/shares/awards`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1|true|用户ID
category|daily|true|分类(daily, daily_done, video, friend)

> 返回内容

```json
{
    "data": "success"
}
```
