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
app|null|true|app种类（校园版：0，个人版：1，俱乐部：2）
phone|null|true|手机系统种类（IOS：0，Android：1）

> 返回内容

```json
{
  data: [{
          display:0,
          downloadUrl:"http://resource-image.ktfootball.com/o_1bj76pgr81c61g30cmi133ns6o9.png?e=1498115676&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:VYf85A4gpQrA8JlSc7ZnqKqTE8o=",
          key:"o_1bj76pgr81c61g30cmi133ns6o9.png",
          kind:0
          }...]
}
```