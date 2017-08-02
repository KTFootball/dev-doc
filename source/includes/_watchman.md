# 守望者 watchman

## API节点

```shell
curl "https://watchman.ktfootball.com"
```
### HTTP Request

	`GET https://watchman.ktfootball.com`

> 返回内容

```json
{
  "data": "Watching from the darkness. Forever in darkness."
}
```

## 获取凭证

```shell
curl -X POST "https://watchman.ktfootball.com/services/signin" -d "username=USERNAME&password=PASSWORD"
```

### HTTP Request

	`POST "https://watchman.ktfootball.com/services/signin"`

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
username|apple|true|用户名
password|apple|true|密码

<aside class="info">
参数上传请构造一个FormData对象
</aside>

> 返回内容

```json
{
  "data": {
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTU2MTQ4Mzh9.L8XF5IQqKqTFJsX4JJ_nlsMQDUvgKRdCAZiynwAqUI0"
  }
}
```

## 获取所有服务

```shell
curl "https://watchman.ktfootball.com/services?auth_token=YOUR_AUTH_TOKEN"
```

### HTTP Request

	`GET "https://watchman.ktfootball.com/services"`

### Query Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
auth_token|YOUR_AUTH_TOKEN|true|获取凭证中返回的tk，有过期时间

> 返回内容

```json
{
  "data": [
    {
      "service_name": "www",
      "service_addr": "http://www.ktfootball.com",
      "status": "alive"
    },
    {
      "service_name": "wx",
      "service_addr": "http://wx.ktfootball.com",
      "status": "alive"
    },
    {
      "service_name": "api",
      "service_addr": "http://api.ktfootball.com",
      "status": "alive"
    }
  ]
}
```

## 获取指定服务

```shell
curl "https://watchman.ktfootball.com/services/www?auth_token=YOUR_AUTH_TOKEN"
```

### HTTP Request

	`GET "https://watchman.ktfootball.com/services/<SERVICE_NAME>"`

### Query Parameters
Parameter | Description
--------- | -----------
SERVICE_NAME|服务名称

### Url Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
auth_token|YOUR_AUTH_TOKEN|true|获取凭证中返回的tk，有过期时间

> 返回内容

```json
{
  "service_name": "www",
  "service_addr": "http://www.ktfootball.com",
  "status": "alive",
  "app_key": "9362d93a4278"
}
```

## 注册服务

```shell
curl -X POST "https://watchman.ktfootball.com/services/signin" -d "service_name=apple&service_addr=http://localhost:3000"
```

### HTTP Request

	`POST "https://watchman.ktfootball.com/services"`

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
service_name|apple|true|服务名称
service_addr|http://localhost:3000|true|可以访问的服务地址

<aside class="info">
参数上传请构造一个FormData对象
</aside>

> 返回内容

```json
{
  "data": {
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE0OTU2MTQ4Mzh9.L8XF5IQqKqTFJsX4JJ_nlsMQDUvgKRdCAZiynwAqUI0"
  }
}
```

## 删除服务

```shell
curl -X DELETE "https://watchman.ktfootball.com/services"
```

### HTTP Request

	`DELETE "https://watchman.ktfootball.com/services"`

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
service_name|apple|true|服务名称

<aside class="info">
参数上传请构造一个FormData对象
</aside>

> 返回内容

```json
{
	"data": "Service removed"
}
```

## 使用
