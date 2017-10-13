# 淘汰赛

## 服务简介

SERVICE_NAME:  
 
`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 获取淘汰赛列表

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v2/games/<ID>/knockouts`

### Url Parameters

Parameter | Description
--------- | -----------
ID|赛事ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
group|16|true|16，8，4，2（1/16, 1/8, 1/4, 1/2）

> 返回内容

```json
```

## 获取淘汰赛详情

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|淘汰赛ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
```

## 创建单个淘汰赛

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
gid
side_a
side_b
group

> 返回内容

```json
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|淘汰赛ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------


> 返回内容

```json
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|赛事ID

> 返回内容

```json
```