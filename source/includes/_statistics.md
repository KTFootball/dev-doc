# 校园统计

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

## 获取技能等级统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/levels"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/levels`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
{
    "users": 1,
    "assessments": 1,
    "ranks": {
        "low": 0,
        "medium": 1,
        "high": 0
    }
}
```

## 获取大课间统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/recesses"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/recesses`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
{
    "data": [
        {
            "time": "2017-07",
            "count": 118
        },
        {
            "time": "2017-06",
            "count": 0
        },
        {
            "time": "2017-05",
            "count": 0
        },
        {
            "time": "2017-04",
            "count": 0
        },
        {
            "time": "2017-03",
            "count": 0
        },
        {
            "time": "2017-02",
            "count": 0
        }
    ]
}
```

## 获取测评统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/assessments"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/assessments`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
{
    "data": [
        {
            "time": "2017-07",
            "count": 128
        },
        {
            "time": "2017-06",
            "count": 1
        },
        {
            "time": "2017-05",
            "count": 0
        },
        {
            "time": "2017-04",
            "count": 0
        },
        {
            "time": "2017-03",
            "count": 0
        },
        {
            "time": "2017-02",
            "count": 0
        }
    ]
}
```

## 获取赛事统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/rounds"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/rounds`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
{
    "data": {
        "total": 0,
        "1v1": 0,
        "2v2": 0,
        "3v3": 0
    }
}
```