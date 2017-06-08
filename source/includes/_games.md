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
sid|1|true|学校ID
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

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/games"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/schools/<SID>/games`

### Query Parameters
Parameter | Description
--------- | -----------
SID|学校

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
            "lng": 121.3146636935
        },
        {
            "id": 9,
            "name": "测试名",
            "address": "虹桥万科中心",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 31.1972083123,
            "lng": 121.3146636935
        },
        {
            "id": 8,
            "name": "测试名",
            "address": "上海国际展览中心",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 31.2028366437,
            "lng": 121.404022186
        },
        {
            "id": 10,
            "name": "测试名",
            "address": "测试地址",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 120.01,
            "lng": 38.39
        },
        {
            "id": 11,
            "name": "测试名",
            "address": "测试地址",
            "start_at": "2017-06-06 00:00:00 +0800",
            "end_at": "2017-06-07 00:00:00 +0800",
            "lat": 120.01,
            "lng": 38.39
        }
    ]
}
```

## 提交比赛结果

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds"
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
type|1|true|赛事类型 0，1，2对应1v1,2v2,3v3
gid|7|true|Game ID
cross|1,2|true|穿裆左右总数用英文逗号隔开
foul|0,0|true|犯规左右总数用英文逗号隔开
goal|2,3|true|进球左右总数用英文逗号隔开
side_a|1,2|true|左右两边的用户ID用英文逗号隔开
side_b|1,2|true|左右两边的用户ID用英文逗号隔开
duration|30|false|赛事持续时间，单位秒
image_keys|fxbx,fdes,fegst|false|赛事图片的image keys 七牛上传返回
kt|1|false|KT用户的ID


> 返回内容

```json
{
  "data": {
    "id": 8,
    "type": "Round2v2",
    "game_id": 7,
    "cross": "1,2",
    "goal": "2,3",
    "foul": "0,0",
    "side_a": [
      {
        "id": 27,
        "user_id": 1,
        "kt": false
      },
      {
        "id": 28,
        "user_id": 3,
        "kt": false
      }
    ],
    "side_b": [
      {
        "id": 29,
        "user_id": 2,
        "kt": false
      },
      {
        "id": 30,
        "user_id": 4,
        "kt": false
      }
    ],
    "image_keys": null,
    "video_key": "lnJ7uPnve2-PkslliGinskv9mogi",
    "duration": null,
    "scores": {
      "side_a": 5,
      "side_b": 8
    },
    "video_url": "http://oqe9ssuil.bkt.clouddn.com/lnJ7uPnve2-PkslliGinskv9mogi?e=1496828309&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:OeFZIaj8q5Off3d9piV9np6g-fw=",
    "images_url": null
  }
}
```

## 获取单个比赛详情

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID>"
```

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|单个比赛的ID

> 返回内容

```json
{
  "data": {
    "id": 8,
    "type": "Round2v2",
    "game_id": 7,
    "cross": "1,2",
    "goal": "2,3",
    "foul": "0,0",
    "side_a": [
      {
        "id": 27,
        "user_id": 1,
        "kt": false
      },
      {
        "id": 28,
        "user_id": 3,
        "kt": false
      }
    ],
    "side_b": [
      {
        "id": 29,
        "user_id": 2,
        "kt": false
      },
      {
        "id": 30,
        "user_id": 4,
        "kt": false
      }
    ],
    "image_keys": null,
    "video_key": "lnJ7uPnve2-PkslliGinskv9mogi",
    "duration": null,
    "scores": {
      "side_a": 5,
      "side_b": 8
    },
    "video_url": "http://oqe9ssuil.bkt.clouddn.com/lnJ7uPnve2-PkslliGinskv9mogi?e=1496828309&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:OeFZIaj8q5Off3d9piV9np6g-fw=",
    "images_url": null
  }
}
```

## 更新上传的视频

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID> -d "video_key=xxxx""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|单个比赛ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
video_key|xxxx|true|视频key，七牛上传后返回

> 返回内容

```json
{
  "data": {
    "id": 8,
    "type": "Round2v2",
    "game_id": 7,
    "cross": "1,2",
    "goal": "2,3",
    "foul": "0,0",
    "side_a": [
      {
        "id": 27,
        "user_id": 1,
        "kt": false
      },
      {
        "id": 28,
        "user_id": 3,
        "kt": false
      }
    ],
    "side_b": [
      {
        "id": 29,
        "user_id": 2,
        "kt": false
      },
      {
        "id": 30,
        "user_id": 4,
        "kt": false
      }
    ],
    "image_keys": null,
    "video_key": "lnJ7uPnve2-PkslliGinskv9mogi",
    "duration": null,
    "scores": {
      "side_a": 5,
      "side_b": 8
    },
    "video_url": "http://oqe9ssuil.bkt.clouddn.com/lnJ7uPnve2-PkslliGinskv9mogi?e=1496828309&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:OeFZIaj8q5Off3d9piV9np6g-fw=",
    "images_url": null
  }
}
```

## 删除单个比赛

```shell
curl -X DELETE "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID>"
```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/rounds/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|单场比赛ID

> 返回内容

```json
{
  "data": "success"
}
```

## 创建赛事排名

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks -d "gid=1&uid=1""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/ranks`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
gid|1|true|赛事ID
uid|1|true|用户ID

> 返回内容

```json
{
  "data": {
    "id": 1,
    "user": {
      "id": 1,
      "username": "ufozhengli@163.com"
    },
    "game": {
      "id": 7,
      "name": "测试名",
      "address": "测试地址",
      "start_at": "2017-06-06 00:00:00 +0800",
      "end_at": "2017-06-07 00:00:00 +0800",
      "lat": 31.1972083123,
      "lng": 121.3146636935
    },
    "ce": 1000
  }
}
```