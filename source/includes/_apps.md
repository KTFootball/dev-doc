# App模块

## 服务简介

SERVICE_NAME:  

`kt-app` prod模式使用的服务  
`kt-app-stg` stg模式使用的服务  

所有的API请求通过`http://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>?app_key=APPKEY"
```

## 查询app启动页面

```shell
curl -X GET "https://watchman.ktfootball.com/<SERVICE_NAME>/screens/<KIND>"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/<SERVICE_NAME>/screens/<KIND>`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
kind|null|true|app种类以及手机系统

> 返回内容

```json
{
  "data": [{"_id":"5940e9579672e626c4d63658","key":"o_1biiouvdki6s138f1bcavhmru5o.png","kind":0,"display":0,"__v":0}]
}
```