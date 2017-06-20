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
kind|null|true|kind=app种类*2+手机系统种类（校园版：0，个人版：1，俱乐部：2，IOS：0，Android：1）

> 返回内容

```json
{
  data: [{_id: "5940e9579672e626c4d63658", key: "o_1biiouvdki6s138f1bcavhmru5o.png", kind: 0, display: 0}...]
}
```