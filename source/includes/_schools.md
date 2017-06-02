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
cls|blah blah|true|班级

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
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<ID>/classrooms -d "grade=1&cls=1""
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