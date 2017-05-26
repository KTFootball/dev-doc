# 用户

## 服务简介

SERVICE_NAME:  

`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务  

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上app_key拼接在url中
</aside>

```shell
curl "https://watchman.ktfootball.com/bucky-stg/api/v1?a
···

## 使用用户名登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "username=USERNAME&password=PASSWORD"

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
username|apple|true|用户名
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`

> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```

## 使用手机号登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "mobile=MOBILE&password=PASSWORD"

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
mobile|18651206017|true|邮箱
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`


> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```

## 使用邮箱登录

```shell
curl -X POST "https://watchman.ktfootball.com/bucky/api/v1/users/signin" -d "email=EMAIL&password=PASSWORD"

### FormData
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
email|apple@apple.com|true|邮箱
password|apple|true|密码

### HTTP Request

	`POST https://watchman.ktfootball.com/bucky-stg/api/v1/users/signin`

> 返回内容

```json
{
  "data": {
    "uid": 10,
    "tk": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJrdGZvb3RiYWxsIiwic3ViIjoxMCwiZXhwIjoxNDk1Nzk2NDIwLCJhdWQiOjEwfQ.aAr2SB0qLgxvNYz506VESiZYAwMhrBiYEHJQ6llwrAo"
  }
}
```