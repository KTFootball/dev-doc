# 运营Banner

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

## 首页banner

### HTTP Request

  `GET https://watchman.ktfootball.com/bucky/api/v2/bannerss`

### Query Parameters
Parameter | Description
--------- | -----------
ID|用户ID

> 返回内容

```json

```

## 首页banner(单个)

### HTTP Request

  `GET https://watchman.ktfootball.com/bucky/api/v2/banners/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|BannerID

> 返回内容

```json

```

## 删除首页banner(单个)

### HTTP Request

  `DELETE https://watchman.ktfootball.com/bucky/api/v2/banners/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|BannerID

> 返回内容

```json
{
  "data": "success"
}
```

## 创建首页banner(单个)

### HTTP Request

  `POST https://watchman.ktfootball.com/bucky/api/v2/banners`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
url|www.baidu.com|×|跳转的链接
title|这里是标题|√|显示的标题
content|这里是具体内容|×|显示的具体内容
cover|img url|√|封面图
platform|平台|√|Android,iOS,Web等等
version|版本|√|1.0

> 返回内容

```json

```
