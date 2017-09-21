# 微信1.3

## 服务简介

SERVICE_NAME:  

`kt-club` prod模式使用的服务  
`kt-club-stg` stg模式使用的服务  
`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务  
`bucky` prod模式使用的服务  
`bucky-stg` stg模式使用的服务

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 首页banner

## 技能包列表

## 技能包详情

## 用户购买的技能包


