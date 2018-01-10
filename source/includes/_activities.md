# 球赞

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

## 创建活动队长

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/activities"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/activities`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|act-1|true|赛事内容 默认act-1
uid|1929|true|用户ID

> 返回内容

```json
```

## 获取用户相关的活动信息

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/activities"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/activities`

### Query Parameters

Parameter | Description
--------- | -----------
name|活动名称 默认 act-1
uid|用户ID

> 返回内容
