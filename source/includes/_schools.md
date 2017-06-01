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
    "name": "hello",
    "address": "lorem ispm",
    "ecard": 0
  }
}

```

## 创建学校

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools -d "name=xxxx&address=xxxx""
```

### HTTP Request

	`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools`

### FormData

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

### FormData

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