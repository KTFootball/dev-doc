# 俱乐部淘汰赛

## 服务简介

`kt-club` prod模式使用的服务  
`kt-club-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 获取赛事下面参赛队伍

### HTTP Request

  `GET https://watchman.ktfootball.com/<bucky>/api/v2/teams`

### Query Parameters

Parameter | Description
--------- | -----------
page|第几页
limit|每页返回个数

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```
```

## 获取赛事下面申请队伍

### HTTP Request

  `GET https://watchman.ktfootball.com/<bucky>/api/v2/applicants`

### Query Parameters

Parameter | Description
--------- | -----------
page|第几页
limit|每页返回个数
status|返回状态 0，1，2 默认，同意，拒绝

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------


> 返回内容

```
```

## 获取赛事下面淘汰赛


### HTTP Request

  `GET https://watchman.ktfootball.com/<bucky>/api/v2/knockouts`

### Query Parameters

Parameter | Description
--------- | -----------
group|组 0，1，2，4，8，16 

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------


> 返回内容

```
```

## 添加俱乐部会员并自动报名参赛

## 获取单个参赛队伍信息

## 创建参赛队伍

## 加入一个参赛队伍

## 删除一个参赛队伍

## 获取单个申请列表详情

## 申请报名参赛

## 批量同意、拒绝报名列表

## 同意或者拒绝一个队伍

## 删除单个报名