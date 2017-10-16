# 淘汰赛

## 服务简介

SERVICE_NAME:  
 
`kt-school` prod模式使用的服务  
`kt-school-stg` stg模式使用的服务

所有的API请求通过`https://watchman.ktfootball.com/<SERVICE_NAME>`访问。

<aside class="success">
所有请求请带上 app_key 可以拼接在url中，或者HEAD中
</aside>

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1?app_key=<APPKEY>"
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1" -H 'APP_KEY: <APPKEY>'”
```

## 获取淘汰赛列表

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v2/games/<ID>/knockouts`

### Url Parameters

Parameter | Description
--------- | -----------
ID|赛事ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
group|16|true|16，8，4，2（1/16, 1/8, 1/4, 1/2）

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "group": 4,
            "side_a": [
                {
                    "profile": {
                        "id": 440,
                        "user_id": 1959,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 1959,
                            "uid": 1959,
                            "username": "oys4MwXx3aw3RsDci33WgUElFHtI",
                            "source_name": "Joey",
                            "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eonlL4X4g9QLJQO65LPbicEAFUxWQpx0IA5az3zwrLZgbKa9SqUyPvkh7Qx8Po0WAROgCIHBv8FyOA/0",
                            "ce": 1060
                        },
                        "realname": "Joey",
                        "gender": 1,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "side_b": [
                {
                    "profile": {
                        "id": 441,
                        "user_id": 3004,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3004,
                            "uid": 3004,
                            "username": "k10t00001",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小一",
                        "gender": 0,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": "2017-09-25",
                        "classroom": null
                    }
                }
            ],
            "winner": null,
            "round": null,
            "game": {
                "id": 209,
                "name": "哇咔咔",
                "address": "玉兰园",
                "start_at": "2017-09-15 00:00:00 +0800",
                "end_at": "2017-09-16 00:00:00 +0800",
                "lat": null,
                "lng": null,
                "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:_yrA_DlqAU_njdaesrpxSyHpXHg=",
                "images": [
                    "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kQLZBjUeUZnNnT4mWrOGZOaVpGQ=",
                    "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:Vh291u6NBFpVKxwplfBh8S9g24Y=",
                    "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:5MNxn9MfaIXDbQ2ZEsRuwaRMvEg=",
                    "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:_yrA_DlqAU_njdaesrpxSyHpXHg="
                ],
                "users": 2,
                "host": {
                    "id": 10,
                    "name": "复旦大学闵行校区",
                    "address": "虹桥火车站",
                    "ecard": 0,
                    "users": 102,
                    "games": 3,
                    "participants": 2,
                    "rounds": 9,
                    "portable": false,
                    "expired_at": null
                },
                "category": "knockout",
                "type": null,
                "group": null
            }
        },
        {
            "id": 2,
            "group": 4,
            "side_a": [
                {
                    "profile": {
                        "id": 442,
                        "user_id": 3005,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3005,
                            "uid": 3005,
                            "username": "k10t00002",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小二",
                        "gender": 1,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "side_b": [
                {
                    "profile": {
                        "id": 443,
                        "user_id": 3006,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3006,
                            "uid": 3006,
                            "username": "k10t00003",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小三",
                        "gender": null,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "winner": null,
            "round": null,
            "game": {
                "id": 209,
                "name": "哇咔咔",
                "address": "玉兰园",
                "start_at": "2017-09-15 00:00:00 +0800",
                "end_at": "2017-09-16 00:00:00 +0800",
                "lat": null,
                "lng": null,
                "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:_yrA_DlqAU_njdaesrpxSyHpXHg=",
                "images": [
                    "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kQLZBjUeUZnNnT4mWrOGZOaVpGQ=",
                    "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:Vh291u6NBFpVKxwplfBh8S9g24Y=",
                    "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:5MNxn9MfaIXDbQ2ZEsRuwaRMvEg=",
                    "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121186&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:_yrA_DlqAU_njdaesrpxSyHpXHg="
                ],
                "users": 2,
                "host": {
                    "id": 10,
                    "name": "复旦大学闵行校区",
                    "address": "虹桥火车站",
                    "ecard": 0,
                    "users": 102,
                    "games": 3,
                    "participants": 2,
                    "rounds": 9,
                    "portable": false,
                    "expired_at": null
                },
                "category": "knockout",
                "type": null,
                "group": null
            }
        },
        {
            "id": 3,
            "group": 4,
            "side_a": [
                {
                    "profile": {
                        "id": 444,
                        "user_id": 3007,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3007,
                            "uid": 3007,
                            "username": "k10t00004",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小四",
                        "gender": null,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "side_b": [
                {
                    "profile": {
                        "id": 445,
                        "user_id": 3008,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3008,
                            "uid": 3008,
                            "username": "k10t00005",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小五",
                        "gender": null,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "winner": null,
            "round": null,
            "game": {
                "id": 209,
                "name": "哇咔咔",
                "address": "玉兰园",
                "start_at": "2017-09-15 00:00:00 +0800",
                "end_at": "2017-09-16 00:00:00 +0800",
                "lat": null,
                "lng": null,
                "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kaWRjM_QZbvkCNPqPhAN4CeuL5g=",
                "images": [
                    "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:Ejtw3uxcRAv_ZH7FdhAwCz3971o=",
                    "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:vhfbdZc5pUiASijB8gjbfN-N7X8=",
                    "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:bJuQxFoAj8P4P8kVeiUvTFuHn3Q=",
                    "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kaWRjM_QZbvkCNPqPhAN4CeuL5g="
                ],
                "users": 2,
                "host": {
                    "id": 10,
                    "name": "复旦大学闵行校区",
                    "address": "虹桥火车站",
                    "ecard": 0,
                    "users": 102,
                    "games": 3,
                    "participants": 2,
                    "rounds": 9,
                    "portable": false,
                    "expired_at": null
                },
                "category": "knockout",
                "type": null,
                "group": null
            }
        },
        {
            "id": 4,
            "group": 4,
            "side_a": [
                {
                    "profile": {
                        "id": 446,
                        "user_id": 3009,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3009,
                            "uid": 3009,
                            "username": "k10t00006",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小六",
                        "gender": null,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "side_b": [
                {
                    "profile": {
                        "id": 447,
                        "user_id": 3010,
                        "school_id": 10,
                        "school": {
                            "id": 10,
                            "name": "复旦大学闵行校区",
                            "expired_at": null
                        },
                        "user": {
                            "id": 3010,
                            "uid": 3010,
                            "username": "k10t00007",
                            "source_name": null,
                            "source_avatar": null,
                            "ce": 1000
                        },
                        "realname": "小七",
                        "gender": 1,
                        "point": 0,
                        "ce": 1000,
                        "avatar": null,
                        "birthday": null,
                        "classroom": null
                    }
                }
            ],
            "winner": null,
            "round": null,
            "game": {
                "id": 209,
                "name": "哇咔咔",
                "address": "玉兰园",
                "start_at": "2017-09-15 00:00:00 +0800",
                "end_at": "2017-09-16 00:00:00 +0800",
                "lat": null,
                "lng": null,
                "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
                "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kaWRjM_QZbvkCNPqPhAN4CeuL5g=",
                "images": [
                    "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:Ejtw3uxcRAv_ZH7FdhAwCz3971o=",
                    "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:vhfbdZc5pUiASijB8gjbfN-N7X8=",
                    "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:bJuQxFoAj8P4P8kVeiUvTFuHn3Q=",
                    "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121187&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:kaWRjM_QZbvkCNPqPhAN4CeuL5g="
                ],
                "users": 2,
                "host": {
                    "id": 10,
                    "name": "复旦大学闵行校区",
                    "address": "虹桥火车站",
                    "ecard": 0,
                    "users": 102,
                    "games": 3,
                    "participants": 2,
                    "rounds": 9,
                    "portable": false,
                    "expired_at": null
                },
                "category": "knockout",
                "type": null,
                "group": null
            }
        }
    ],
    "count": 4
}
```

## 获取淘汰赛详情

### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|淘汰赛ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------

> 返回内容

```json
{
    "data": {
        "id": 4,
        "group": 4,
        "side_a": [
            {
                "profile": {
                    "id": 446,
                    "user_id": 3009,
                    "school_id": 10,
                    "school": {
                        "id": 10,
                        "name": "复旦大学闵行校区",
                        "expired_at": null
                    },
                    "user": {
                        "id": 3009,
                        "uid": 3009,
                        "username": "k10t00006",
                        "source_name": null,
                        "source_avatar": null,
                        "ce": 1000
                    },
                    "realname": "小六",
                    "gender": null,
                    "point": 0,
                    "ce": 1000,
                    "avatar": null,
                    "birthday": null,
                    "classroom": null
                }
            }
        ],
        "side_b": [
            {
                "profile": {
                    "id": 447,
                    "user_id": 3010,
                    "school_id": 10,
                    "school": {
                        "id": 10,
                        "name": "复旦大学闵行校区",
                        "expired_at": null
                    },
                    "user": {
                        "id": 3010,
                        "uid": 3010,
                        "username": "k10t00007",
                        "source_name": null,
                        "source_avatar": null,
                        "ce": 1000
                    },
                    "realname": "小七",
                    "gender": 1,
                    "point": 0,
                    "ce": 1000,
                    "avatar": null,
                    "birthday": null,
                    "classroom": null
                }
            }
        ],
        "winner": null,
        "round": null,
        "game": {
            "id": 209,
            "name": "哇咔咔",
            "address": "玉兰园",
            "start_at": "2017-09-15 00:00:00 +0800",
            "end_at": "2017-09-16 00:00:00 +0800",
            "lat": null,
            "lng": null,
            "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
            "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
            "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:4YUqQhk91Gp4uQWWKAl1GMr0-xs=",
            "images": [
                "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:37OkKSw_XBSsm5tbfmhdufSryjU=",
                "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:6XTKIXRJchD2QNGZe615JuipGxI=",
                "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:jgeYs6CcpJ6mBN83hgWzBGmhGbc=",
                "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:4YUqQhk91Gp4uQWWKAl1GMr0-xs="
            ],
            "users": 2,
            "host": {
                "id": 10,
                "name": "复旦大学闵行校区",
                "address": "虹桥火车站",
                "ecard": 0,
                "users": 102,
                "games": 3,
                "participants": 2,
                "rounds": 9,
                "portable": false,
                "expired_at": null
            },
            "category": "knockout",
            "type": null,
            "group": null
        }
    }
}
```

## 创建单个淘汰赛

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
gid|1|true|赛事的ID
side_a|1,2|true|side a
side_b|3,4|true|side b
group|2|true|2,4,8,16中选择一个，当前小组赛中所属的类型半决赛，决赛等

> 返回内容

```json
{
    "data": {
        "id": 4,
        "group": 4,
        "side_a": [
            {
                "profile": {
                    "id": 446,
                    "user_id": 3009,
                    "school_id": 10,
                    "school": {
                        "id": 10,
                        "name": "复旦大学闵行校区",
                        "expired_at": null
                    },
                    "user": {
                        "id": 3009,
                        "uid": 3009,
                        "username": "k10t00006",
                        "source_name": null,
                        "source_avatar": null,
                        "ce": 1000
                    },
                    "realname": "小六",
                    "gender": null,
                    "point": 0,
                    "ce": 1000,
                    "avatar": null,
                    "birthday": null,
                    "classroom": null
                }
            }
        ],
        "side_b": [
            {
                "profile": {
                    "id": 447,
                    "user_id": 3010,
                    "school_id": 10,
                    "school": {
                        "id": 10,
                        "name": "复旦大学闵行校区",
                        "expired_at": null
                    },
                    "user": {
                        "id": 3010,
                        "uid": 3010,
                        "username": "k10t00007",
                        "source_name": null,
                        "source_avatar": null,
                        "ce": 1000
                    },
                    "realname": "小七",
                    "gender": 1,
                    "point": 0,
                    "ce": 1000,
                    "avatar": null,
                    "birthday": null,
                    "classroom": null
                }
            }
        ],
        "winner": null,
        "round": null,
        "game": {
            "id": 209,
            "name": "哇咔咔",
            "address": "玉兰园",
            "start_at": "2017-09-15 00:00:00 +0800",
            "end_at": "2017-09-16 00:00:00 +0800",
            "lat": null,
            "lng": null,
            "image_key": "FgZitQ8lcLkoo3YczkP_rBgY6EH9",
            "image_keys": "FtQ9GBB8CszPnExNfoZajNOYNUz0,FhQYUHuWs9RC2QhjV9-Nm_f2ti_A,Fo144idorw9nspGX9xqDADBthPWC,FgZitQ8lcLkoo3YczkP_rBgY6EH9",
            "image": "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:4YUqQhk91Gp4uQWWKAl1GMr0-xs=",
            "images": [
                "http://oqurrrspm.bkt.clouddn.com/FtQ9GBB8CszPnExNfoZajNOYNUz0?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:37OkKSw_XBSsm5tbfmhdufSryjU=",
                "http://oqurrrspm.bkt.clouddn.com/FhQYUHuWs9RC2QhjV9-Nm_f2ti_A?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:6XTKIXRJchD2QNGZe615JuipGxI=",
                "http://oqurrrspm.bkt.clouddn.com/Fo144idorw9nspGX9xqDADBthPWC?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:jgeYs6CcpJ6mBN83hgWzBGmhGbc=",
                "http://oqurrrspm.bkt.clouddn.com/FgZitQ8lcLkoo3YczkP_rBgY6EH9?e=1508121315&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:4YUqQhk91Gp4uQWWKAl1GMr0-xs="
            ],
            "users": 2,
            "host": {
                "id": 10,
                "name": "复旦大学闵行校区",
                "address": "虹桥火车站",
                "ecard": 0,
                "users": 102,
                "games": 3,
                "participants": 2,
                "rounds": 9,
                "portable": false,
                "expired_at": null
            },
            "category": "knockout",
            "type": null,
            "group": null
        }
    }
}
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|淘汰赛ID

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
rid|1|true赛事回合ID
winner|side_a|true|胜利的队伍，side_a或者side_b

> 返回内容

```json

```

### HTTP Request

  `DELETE https://watchman.ktfootball.com/<SERVICE>/api/v2/knockouts/<ID>`

### Url Parameters

Parameter | Description
--------- | -----------
ID|赛事ID

> 返回内容

```json
{
  "data": "success"
}
```