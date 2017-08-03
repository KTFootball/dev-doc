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
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/levels"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/levels`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

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
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/recesses"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/recesses`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

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
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/assessments"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/assessments`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

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
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/rounds"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/rounds`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

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

## 获取大课间统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/recesses"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/recesses`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

> 返回内容

```json
{
    "data": {
        "recess_record_count": 86,
        "classroom_count": 23,
        "user_count": 34
    }
}
```

## 获取技能教学统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/skills"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/skills`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

> 返回内容

```json
{
    "data": {
        "assessment_count": 1,
        "assessment_total": 1,
        "assessment_totals_time": 1,
        "assessment_average": 20
    }
}
```


## 获取足球课统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/courses"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/courses`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

> 返回内容

```json
{
    "data": {
        "motion_set_count": 304,
        "kindergarten_count": 64,
        "primary_school_count": 240
    }
}
```

## 获取校园技能统计

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/assessments"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/statistics/<ID>/basic/assessments`

### Query Parameters

Parameter | Description
--------- | -----------
ID|学校ID

> 返回内容

```json
{
    "data": {
        "school_rank": 2,
        "assessment_average": 20,
        "assessment_count": 1
    }
}
```
