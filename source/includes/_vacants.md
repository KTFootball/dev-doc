# 俱乐部无人赛相关接口

## 服务简介

SERVICE_NAME:  

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

## 获取单个无人赛队伍详情

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|队伍ID

> 返回内容

```json
```

## 创建无人赛队伍

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams -d "gid=<GID>&leader=<LEADER>&type=<TYPE>""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
gid|1|true|赛事ID
leader|1|true|发起创建用户ID
type|1v1|true|队伍的类型，可选1v1 2v2 3v3

> 返回内容

```json
```

## 加入无人赛队伍

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams/<ID>/join/side_a`
  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams/<ID>/join/side_b`

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ID|1|true|该无人赛队伍ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uid|1929|true|发起创建用户ID

> 返回内容

```json
```

## 更新无人赛队伍状态

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/vacant_teams/<ID>`

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ID|1|true|该无人赛队伍ID

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ready|0|true|0 还没好 1 准备好了

> 返回内容

```json
```

## 获取赛事下无人赛的队伍

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/games/<ID>vacant_teams`

### Url Parameters
Parameter | Description
--------- | -----------
ID|赛事ID

### Query Parametes

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ready|0|true|0 还没好 1 准备好了
page|0|true|第几页
limit|10|true|每页返回数量
type|1v1|1|队伍的类型，可选0 (3v3) 1(1v1 2v2)

> 返回内容

```json
```

## 获取个人在本场赛事下的队伍

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v2/users/<ID>/vacant_teams/<GID>`

### Url Parameters
Parameter | Description
--------- | -----------
ID|用户ID
GID|赛事ID

> 返回内容

```json
```

