# 俱乐部队列

## 服务简介

SERVICE_NAME:  

`kt-club` prod模式使用的服务  
`kt-club-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=APPKEY"
```

## 排队列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/queues"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/clubs/<ID>/queues`

### Query Parameters
Parameter | Description
--------- | -----------
ID|俱乐部ID

> 返回内容

```json
{
  "data": [
      {
          "id": 1,
          "user": {
              "id": 1,
              "uid": 1,
              "username": "ufozhengli@163.com"
          },
          "club": {
              "id": 2,
              "name": "测试",
              "address": "虹桥万科中心",
              "ecard": 716,
              "users": 373,
              "games": 4,
              "participants": 2,
              "rounds": 1
          }
      }
  ]
}
```

## 排队

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/queues/<CID>"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/queues/<CID>`

### Query Parameters
Parameter | Description
--------- | -----------
CID|俱乐部ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|542|true|用户ID
cbid|2|true|畅玩卡ID

> 返回内容

```json
{
  "data": "success"
}
```

## 列表使用

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/queues/<CID>"
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/queues/<CID>`

### Query Parameters
Parameter | Description
--------- | -----------
CID|俱乐部ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|542|true|用户ID

> 返回内容

```json
{
  "data": "success"
}
```