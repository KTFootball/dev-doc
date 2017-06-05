# 校园赛事

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

## 创建赛事

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games -d "sid=<SID>&address=xxxx&name=xxx&start_at=2017-06-06""
```

### HTTP Request

	`POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test name|true|赛事名字
address|blah blah|true|赛事地址
sid|1|true|学校地址
lat|31.0|false|纬度
lng|120.0|false|经度
start_at|2017-06-06|false|开始时间
end_at|2017-06-07|false|结束时间

> 返回内容

```json
{
  "data": {
    "id": 11,
    "name": "测试名",
    "address": "测试地址",
    "start_at": "2017-06-06 00:00:00 +0800",
    "end_at": "2017-06-07 00:00:00 +0800",
    "lat": 120.01,
    "lng": 38.39
  }
}
```

## 查询单个赛事

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID>"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|赛事ID

> 返回内容

```json
{
  "data": {
    "id": 7,
    "name": "测试名",
    "address": "测试地址",
    "start_at": "2017-06-06 00:00:00 +0800",
    "end_at": "2017-06-07 00:00:00 +0800",
    "lat": 31.1972083123,
    "lng": 121.3146636935
  }
}
```

## 修改赛事

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID> -d "name=xxxx&address=xxxx""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|赛事ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
name|test school|false|赛事名字
address|blah blah|false|赛事地址
start_at|2017-07-28|false|开始时间
end_at|2017-08-01|false|结束时间

> 返回内容

```json
{
    "data": {
        "id": 11,
        "name": "测试名",
        "address": "测试地址",
        "start_at": "2017-06-06 00:00:00 +0800",
        "end_at": "2017-06-07 00:00:00 +0800",
        "lat": 120.01,
        "lng": 38.39
    }
}
```

## 删除赛事

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID>"
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|赛事ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
sid|1|true|学校ID

> 返回内容

```json
{
  "data": "success"
}
```

## 附近的赛事

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/nearest/<LAT>/<LNG>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/games/nearest/<LAT>/<LNG>`

### Query Parameters
Parameter | Description
--------- | -----------
LAT|纬度
LNG|经度
> 返回内容

```json
{
    "data": [
        {
            "id": 7,
            "name": "测试名",
            "address": "测试地址",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 31.1972083123,
            "lng": 121.3146636935,
            "distance": 0
        },
        {
            "id": 9,
            "name": "测试名",
            "address": "虹桥万科中心",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 31.1972083123,
            "lng": 121.3146636935,
            "distance": 0
        },
        {
            "id": 8,
            "name": "测试名",
            "address": "上海国际展览中心",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 31.2028366437,
            "lng": 121.404022186,
            "distance": 8531.635484519893
        },
        {
            "id": 10,
            "name": "测试名",
            "address": "测试地址",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 120.01,
            "lng": 38.39,
            "distance": 7422920.872981764
        },
        {
            "id": 11,
            "name": "测试名",
            "address": "测试地址",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 120.01,
            "lng": 38.39,
            "distance": 7422920.872981764
        }
    ]
}
```

## 获取学校的赛事