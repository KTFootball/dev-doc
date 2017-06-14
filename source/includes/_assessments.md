# 测评

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

## 创建测评记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessmetns -d "skid=<SID>&uids=1,2,3&counts=10,20,30""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uids|1,2,3|true|用户ID用逗号隔开
counts|10|true|技能数量用逗号隔开
skid|1|true|技能ID


> 返回内容

```json
{
  "data": "success"
}
```