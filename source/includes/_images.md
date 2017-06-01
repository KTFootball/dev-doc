# 图片 qiniu

## 服务简介

SERVICE_NAME:  

`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1?app_key=APPKEY"
```

## 获取上传凭证 uptoken

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1/images/uptoken"
```

### HTTP Request

	`GET https://watchman.ktfootball.com/bucky-stg/api/v1/images/uptoken`

> 返回内容

```json
{
  "data": {
    "uptoken": "2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:FUEG0LOXWtD34hkvFINjmFKbNAM=:eyJzY29wZSI6Imt0LXZpZGVvLXN0ZyIsImNhbGxiYWNrVXJsIjoiaHR0cDovL2J1Y2t5LXN0Zy5rdGZvb3RiYWxsLmNvbS9hcGkvdjEvdmlkZW9zIiwiY2FsbGJhY2tCb2R5Ijoia2V5PSQoa2V5KSZleHQ9JChleHQpJmluZm89JChhdmluZm8pJnVpZD0kKHg6dWlkKSIsImRlYWRsaW5lIjoxNDk1NjM5ODg5fQ=="
  }
}
```

## 视频上传

### SDK Request

获取到以上的上传凭证，使用七牛SDK上传。

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
x:uid|1|true|上传的用户的uid

## 获取视频信息

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1/images/<KEY>"
  
```

### HTTP Request

	`GET https://watchman.ktfootball.com/bucky-stg/api/v1/images/Fq7pK9hSKRvpkWNSOFV7QnVOMWRk`

### Query Parameters
Parameter | Description
--------- | -----------
KEY|图片key

> 返回内容

```json
{
  "data": {
    "url": "http://oqurrrspm.bkt.clouddn.com/Fq7pK9hSKRvpkWNSOFV7QnVOMWRk?e=1495618095&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:ZOALZZf0Gh3qnnCmBPLiXaJmbgE="
  }
}
```