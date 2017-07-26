# 足球游戏 足球技能

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

## 技能列表获取

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skills?category=运球游戏"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skills`

### Query Parameters
Parameter | Description
--------- | -----------


### Url Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
category|无|false|技能类型（控球类，传球类，素质教育）

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "双脚靠球",
            "sub_title": " 翩翩起舞",
            "intro": "双脚交替跳动触球，锻炼了的控球技术，提升球感\r\n像跳舞一样轻松，愉快，有节奏感，让你的动作很有范儿！",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif",
            "video_url": "http://public.ktfootball.com/download/still/双脚靠球.mp4",
            "resources": {
                "skill_id": 1,
                "cartoon": "http://public.ktfootball.com/download/px/03/双脚靠球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/03/双脚靠球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/03/双脚靠球初级难度.zip",
                    "http://public.ktfootball.com/download/px/03/双脚靠球中级难度.zip",
                    "http://public.ktfootball.com/download/px/03/双脚靠球高级难度.zip"
                ]
            }
        },
        {
            "id": 3,
            "name": "脚背外侧运球",
            "sub_title": "行云流水",
            "intro": "外脚背带球节奏显快，最具有观赏性，而且传球隐蔽，利于各方向传球、斜线带球、控制球护球、假动作和过人。\r\n不要低头看球，注意速度的变化，不断变换方向和速度的曲线带球才是足球比赛中最重要的技能！",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/footlesson/脚背外侧运球.gif",
            "video_url": "http://public.ktfootball.com/download/footlesson/脚背外侧运球.mp4",
            "resources": {
                "skill_id": 3,
                "cartoon": "http://public.ktfootball.com/download/px/05/外脚背带球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/05/外脚背带球教学漫画.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/05/外脚背带球初级难度.zip",
                    "http://public.ktfootball.com/download/px/05/外脚背带球中级难度.zip",
                    "http://public.ktfootball.com/download/px/05/外脚背带球高级难度.zip"
                ]
            }
        },
        {
            "id": 4,
            "name": "脚底踩球",
            "sub_title": "活蹦乱跳",
            "intro": "在练习中逐渐熟悉了球性，并且对球的感觉也有了提高，双脚左右交替踩球的动作技术可以将自身的协调性和平衡能力得到提高\r\n如果你可以熟练掌握，就不容易丢掉控球权。",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/脚底踩球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚底踩球.mp4",
            "resources": {
                "skill_id": 4,
                "cartoon": "http://public.ktfootball.com/download/px/01/脚底踩球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/01/脚底踩球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/01/脚底踩球初级难度.zip",
                    "http://public.ktfootball.com/download/px/01/脚底踩球中级难度.zip",
                    "http://public.ktfootball.com/download/px/01/脚底踩球高级难度.zip"
                ]
            }
        },
        {
            "id": 5,
            "name": "正脚背颠球",
            "sub_title": "无拘无束",
            "intro": "颠球是提高足球基本功的重要方法!要学好它,务必要苦练,全身放松,集中注意力,坚持,坚持,再坚持!\r\n颠球会培养你的球感，如果你变得很厉害，你就可以带球去任何地方",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/正脚背颠球.gif",
            "video_url": "http://public.ktfootball.com/download/still/正脚背颠球.mp4",
            "resources": {
                "skill_id": 5,
                "cartoon": "http://public.ktfootball.com/download/px/02/正脚背颠球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/02/正脚背颠球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/02/正脚背颠球初级难度.zip",
                    "http://public.ktfootball.com/download/px/02/正脚背颠球中级难度.zip",
                    "http://public.ktfootball.com/download/px/02/正脚背颠球高级难度.zip"
                ]
            }
        },
        {
            "id": 6,
            "name": "踩单车",
            "sub_title": "变幻莫测",
            "intro": "踩单车更强调于良好节奏感，其中又包括控奏与变奏，前者支持你做出连续的踏板动作，后者建立在前者之上，用于支持球场上的突发情况和多次使用。\r\n",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/踩单车.gif",
            "video_url": "http://public.ktfootball.com/download/still/踩单车.mp4",
            "resources": {
                "skill_id": 6,
                "cartoon": "http://public.ktfootball.com/download/px/06/踩单车教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/06/踩单车漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/06/踩单车初级难度.zip",
                    "http://public.ktfootball.com/download/px/06/踩单车中级难度.zip",
                    "http://public.ktfootball.com/download/px/06/踩单车高级难度.zip"
                ]
            }
        },
        {
            "id": 7,
            "name": "内晃外拨",
            "sub_title": "风云突变",
            "intro": "内晃外拨，动作可以迷惑对手，是你更好的带球过人。\r\n像雷一样进入，闪电一般改变方向！很快的突破变向有可能创造一个新的局面和机会",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/内晃外拨.gif",
            "video_url": "http://public.ktfootball.com/download/still/内晃外拨.mp4",
            "resources": {
                "skill_id": 7,
                "cartoon": "http://public.ktfootball.com/download/px/07/内晃外拨教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/07/内晃外拨漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/07/内晃外拨初级难度.zip",
                    "http://public.ktfootball.com/download/px/07/内晃外拨中级难度.zip",
                    "http://public.ktfootball.com/download/px/07/内晃外拨高级难度.zip"
                ]
            }
        },
        {
            "id": 8,
            "name": "脚内侧接球",
            "sub_title": "稳如泰山",
            "intro": "脚内侧接球是经常使用的非常重要的基本技术，一定要学习好，这会让你的团队配合更流畅\r\n停球脚在支撑脚侧面直接提起，看准触球点，大腿主动下压，脚从触球点向后下方切压球，达到缓冲阻拦球的目的",
            "description": "训练说明：\r\n找一个小伙伴，找一个空地，一起练习足球吧！\r\n",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧接球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚内侧接球.mp4",
            "resources": {
                "skill_id": 8,
                "cartoon": "http://public.ktfootball.com/download/px/08/脚内侧接球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/08/脚内侧接球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/08/脚内侧接球初级难度.zip",
                    "http://public.ktfootball.com/download/px/08/脚内侧接球中级难度.zip",
                    "http://public.ktfootball.com/download/px/08/脚内侧接球高级难度.zip"
                ]
            }
        },
        {
            "id": 10,
            "name": "脚内侧颠球",
            "sub_title": "超然自得",
            "intro": "颠球是足球的基本功，熟练控制球的关键在与信心，精力集中和正确的技术动作\r\n如果掌握这个技术，你就会很潇洒，只需要一个足球可以非常健康的生活，而且也会非常开心",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧颠球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚内侧颠球.mp4",
            "resources": {
                "skill_id": 10,
                "cartoon": "http://public.ktfootball.com/download/px/18/脚内侧颠球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/18/脚内侧颠球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/18/脚内侧颠球初级难度.zip",
                    "http://public.ktfootball.com/download/px/18/脚内侧颠球中级难度.zip",
                    "http://public.ktfootball.com/download/px/18/脚内侧颠球高级难度.zip"
                ]
            }
        },
        {
            "id": 11,
            "name": "大腿颠球",
            "sub_title": "步步高升",
            "intro": "颠球是提高足球基本功的重要方法!要学好它,务必要苦练,全身放松,集中注意力,坚持,坚持,再坚持!\r\n颠球会培养你的球感，如果你变得很厉害，你就可以带球去任何地方",
            "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/大腿颠球.gif",
            "video_url": "http://public.ktfootball.com/download/still/大腿颠球.mp4",
            "resources": {
                "skill_id": 11,
                "cartoon": "http://public.ktfootball.com/download/px/09/大腿颠球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/09/大腿颠球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/09/大腿颠球初级难度.zip",
                    "http://public.ktfootball.com/download/px/09/大腿颠球中级难度.zip",
                    "http://public.ktfootball.com/download/px/09/大腿颠球高级难度.zip"
                ]
            }
        },
        {
            "id": 13,
            "name": "内跨外拨",
            "sub_title": "出其不意",
            "intro": "带球过人的绝佳动作，骗过对手的假动作，是带球动作中不可替代的动作之一",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/内跨外拨.gif",
            "video_url": "http://public.ktfootball.com/download/still/内跨外拨.mp4",
            "resources": {
                "skill_id": 13,
                "cartoon": "http://public.ktfootball.com/download/px/12/内跨外拨教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/12/内跨外拨漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/12/内跨外拨初级难度.zip",
                    "http://public.ktfootball.com/download/px/12/内跨外拨中级难度.zip",
                    "http://public.ktfootball.com/download/px/12/内跨外拨高级难度.zip"
                ]
            }
        },
        {
            "id": 14,
            "name": "踩球变向",
            "sub_title": "一反常态",
            "intro": "学会了这个动作，你就可以更好的晃过你的对手，突出重围\r\n①向一侧运球；②踩球停住并越过球，重心移向运球一侧；③180度转身，外脚背快速启动",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球变向.gif",
            "video_url": "http://public.ktfootball.com/download/still/踩球变向.mp4",
            "resources": {
                "skill_id": 14,
                "cartoon": "http://public.ktfootball.com/download/px/13/踩球变向教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/13/踩球变向漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/13/踩球变向初级难度.zip",
                    "http://public.ktfootball.com/download/px/13/踩球变向中级难度.zip",
                    "http://public.ktfootball.com/download/px/13/踩球变向高级难度.zip"
                ]
            }
        },
        {
            "id": 17,
            "name": "脚内侧身后扣球",
            "sub_title": "翻天覆地",
            "intro": "这个动作可以让你更好地摆脱对手的防守，骗过对手的眼睛",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧身后扣球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚内侧身后扣球.mp4",
            "resources": {
                "skill_id": 17,
                "cartoon": "http://public.ktfootball.com/download/px/16/脚内侧身后扣球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/16/脚内侧身后扣球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/16/脚内侧身后扣球初级难度.zip",
                    "http://public.ktfootball.com/download/px/16/脚内侧身后扣球中级难度.zip",
                    "http://public.ktfootball.com/download/px/16/脚内侧身后扣球高级难度.zip"
                ]
            }
        },
        {
            "id": 18,
            "name": "靠球过人",
            "sub_title": "惊天动地",
            "intro": "本动作可以更好地训练带球的灵活性，让你在场地上更加的如鱼得水",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/靠球过人.gif",
            "video_url": "http://public.ktfootball.com/download/still/靠球过人.mp4",
            "resources": {
                "skill_id": 18,
                "cartoon": "http://public.ktfootball.com/download/px/17/靠球过人教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/17/靠球过人漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/17/靠球过人初级难度.zip",
                    "http://public.ktfootball.com/download/px/17/靠球过人中级难度.zip",
                    "http://public.ktfootball.com/download/px/17/靠球过人高级难度.zip"
                ]
            }
        },
        {
            "id": 19,
            "name": "起球",
            "sub_title": "无事生非",
            "intro": "本动作加强了对球的掌控，对球的花式训练，可以给对手制造出其不意的麻烦",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/起球.gif",
            "video_url": "http://public.ktfootball.com/download/still/起球.mp4",
            "resources": {
                "skill_id": 19,
                "cartoon": "http://public.ktfootball.com/download/px/19/起球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/19/起球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/19/起球初级难度.zip",
                    "http://public.ktfootball.com/download/px/19/起球中级难度.zip",
                    "http://public.ktfootball.com/download/px/19/起球高级难度.zip"
                ]
            }
        },
        {
            "id": 20,
            "name": "脚内侧扣球",
            "sub_title": "斗转星移",
            "intro": "本动作可以让你加速摆脱防守队员，是带球过人动作中不可或缺的一个",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧扣球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚内侧扣球.mp4",
            "resources": {
                "skill_id": 20,
                "cartoon": "http://public.ktfootball.com/download/px/20/脚内侧扣球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/20/脚内侧扣球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/20/脚内侧扣球初级难度.zip",
                    "http://public.ktfootball.com/download/px/20/脚内侧扣球中级难度.zip",
                    "http://public.ktfootball.com/download/px/20/脚内侧扣球高级难度.zip"
                ]
            }
        },
        {
            "id": 23,
            "name": "外脚背停球变向",
            "sub_title": "大起大落",
            "intro": "场上应用时，可以让你的对手像找自己尾巴的狗一样茫然无措，带球过人的升阶动作",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/外脚背停球变向.gif",
            "video_url": "http://public.ktfootball.com/download/still/外脚背停球变向.mp4",
            "resources": {
                "skill_id": 23,
                "cartoon": "http://public.ktfootball.com/download/px/23/外脚背停球变向教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/23/外脚背停球变向漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/23/外脚背停球变向初级难度.zip",
                    "http://public.ktfootball.com/download/px/23/外脚背停球变向中级难度.zip",
                    "http://public.ktfootball.com/download/px/23/外脚背停球变向高级难度.zip"
                ]
            }
        },
        {
            "id": 24,
            "name": "头颠球",
            "sub_title": "聚精会神",
            "intro": "头颠球可以更好地锻炼你的注意力，让你更容易聚精会神，同时也是控球动作中不可或缺的一部分",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/头颠球.gif",
            "video_url": "http://public.ktfootball.com/download/still/头颠球.mp4",
            "resources": {
                "skill_id": 24,
                "cartoon": "http://public.ktfootball.com/download/px/24/头颠球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/24/头颠球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/24/头颠球初级难度.zip",
                    "http://public.ktfootball.com/download/px/24/头颠球中级难度.zip",
                    "http://public.ktfootball.com/download/px/24/头颠球高级难度.zip"
                ]
            }
        },
        {
            "id": 25,
            "name": "假踢过人",
            "sub_title": "声东击西",
            "intro": "用假动作带球过人，用自身动作骗过对手的眼睛",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/假踢过人.gif",
            "video_url": "http://public.ktfootball.com/download/still/假踢过人.mp4",
            "resources": {
                "skill_id": 25,
                "cartoon": "http://public.ktfootball.com/download/px/25/假踢过人教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/25/假踢过人漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/25/假踢过人初级难度.zip",
                    "http://public.ktfootball.com/download/px/25/假踢过人中级难度.zip",
                    "http://public.ktfootball.com/download/px/25/假踢过人高级难度.zip"
                ]
            }
        },
        {
            "id": 27,
            "name": "拉球摆脱",
            "sub_title": "迷途知返",
            "intro": "控球是为了在遇到对手时可以更好的摆脱对方。如果你在学习和比赛中遇到问题，试着改变一下方向",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/拉球摆脱.gif",
            "video_url": "http://public.ktfootball.com/download/still/拉球摆脱.mp4",
            "resources": {
                "skill_id": 27,
                "cartoon": "http://public.ktfootball.com/download/px/27/拉球摆脱教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/27/拉球摆脱漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/27/拉球摆脱初级难度.zip",
                    "http://public.ktfootball.com/download/px/27/拉球摆脱中级难度.zip",
                    "http://public.ktfootball.com/download/px/27/拉球摆脱高级难度.zip"
                ]
            }
        },
        {
            "id": 28,
            "name": "踩球过人",
            "sub_title": "脱颖而出",
            "intro": "基础的假动作之一，如果你能掌握很多假动作招式，你的对手就会很难防守你",
            "description": "训练说明： 在训练前，请准备一个足球，以及一块3*2m的小场地，以保证能够完成动作练习",
            "category": "控球类",
            "level": 0,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif",
            "video_url": "http://public.ktfootball.com/download/still/踩球过人.mp4",
            "resources": {
                "skill_id": 28,
                "cartoon": "http://public.ktfootball.com/download/px/28/踩球过人教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/28/踩球过人漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/28/踩球过人初级难度.zip",
                    "http://public.ktfootball.com/download/px/28/踩球过人中级难度.zip",
                    "http://public.ktfootball.com/download/px/28/踩球过人高级难度.zip"
                ]
            }
        }
    ]
}
```

## 获取技能详情

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skills/<ID>"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skills/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|技能ID

> 返回内容

```json
{
    "data": {
        "id": 1,
        "name": "双脚靠球",
        "sub_title": " 翩翩起舞",
        "intro": "双脚交替跳动触球，锻炼了的控球技术，提升球感\r\n像跳舞一样轻松，愉快，有节奏感，让你的动作很有范儿！",
        "description": "训练说明：\r\n在训练前，请准备一个足球，以及一块2*2m的小场地，以保证能够完成动作练习",
        "category": "控球类",
        "level": 0,
        "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif",
        "video_url": "http://public.ktfootball.com/download/still/双脚靠球.mp4",
        "resources": {
            "skill_id": 1,
            "cartoon": "http://public.ktfootball.com/download/px/03/双脚靠球教学漫画.zip",
            "story": "http://public.ktfootball.com/download/px/03/双脚靠球漫画故事.zip",
            "video": [
                "http://public.ktfootball.com/download/px/03/双脚靠球初级难度.zip",
                "http://public.ktfootball.com/download/px/03/双脚靠球中级难度.zip",
                "http://public.ktfootball.com/download/px/03/双脚靠球高级难度.zip"
            ]
        }
    }
}
```

## 获取游戏（动作）列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions?category=幼儿游戏"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions`

### Query Parameters
Parameter | Description
--------- | -----------


### Url Parameters
Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
category|无|false|技能类型（幼儿游戏，小学游戏）

> 返回内容

```json
{
    "data": [
        {
            "id": 83,
            "name": "会跳的足球",
            "intro": "尝试用多种方法让小足球跳动起来，体验玩球的乐趣。",
            "requirements": "教师可以根据幼儿的能力适当提供帮助，引导幼儿体验足球的跳动。",
            "motion_effect": null,
            "organization_format": "足球、网兜若干\r\n幼儿人手一球，自主探索玩球。尝试用多种方法让小足球跳动，玩法多者获胜。",
            "gif_url": "http://public.ktfootball.com/download/game/会跳的足球.gif",
            "video_url": "http://public.ktfootball.com/download/game/02会跳的足球.mp4",
            "duration": 5
        },
        {
            "id": 84,
            "name": "和足球宝宝赛跑",
            "intro": "在跑动中感受球的滚动，体验球滚动带来的乐趣。",
            "requirements": "感受足球的速度，引导幼儿尽量跑到足球前面，",
            "motion_effect": null,
            "organization_format": "足球若干。\r\n幼儿持球进入场地，用身体的任意部位触碰足球，让足球滚动。球往哪个方向滚，幼儿就朝哪个方向追球，和足球比赛谁跑得快。",
            "gif_url": "http://public.ktfootball.com/download/game/和足球宝宝赛跑.gif",
            "video_url": "http://public.ktfootball.com/download/game/01和足球宝宝赛跑.mp4",
            "duration": 5
        },
        {
            "id": 85,
            "name": "木头人",
            "intro": "①在传统的儿歌情境中，按指令带球行进和停止。\r\n②遵守游戏规则，感受游戏的乐趣。",
            "requirements": "鼓励幼儿听到儿歌结束时必须停止踩球。",
            "motion_effect": null,
            "organization_format": "足球人手一只。\r\n老师、幼儿持球自由地在场地运球行进，念儿歌：“山山山，山上有个木头人，不会说话不会动，动动就成小蜜蜂。”当儿歌念完时，幼儿要马上踩球保持一个姿势不动，等听到指令后再开始新一轮游戏。",
            "gif_url": "http://public.ktfootball.com/download/game/木头人.gif",
            "video_url": "http://public.ktfootball.com/download/game/3木头人.mp4",
            "duration": 5
        },
        {
            "id": 86,
            "name": "炒黄豆",
            "intro": "①通过游戏，学习原地双脚靠球，发展腿部协调能力。\r\n②体验双脚靠球的快乐。",
            "requirements": "尽量把足球控制在两腿之间，不要让球滚走。",
            "motion_effect": null,
            "organization_format": "足球、熟念儿歌\r\n幼儿将球放在两腿之间，教师念儿歌：“炒黄豆，炒黄豆，炒完黄豆翻跟头。”幼儿双脚靠球。当念到“炒完黄豆翻跟头”时，幼儿绕足球走一圈后继续“炒黄豆”。最后看看哪组幼儿炒“黄豆”时间最长。",
            "gif_url": "http://public.ktfootball.com/download/game/炒黄豆.gif",
            "video_url": "http://public.ktfootball.com/download/game/炒黄豆.mp4",
            "duration": 5
        }
    ]
}
```

## 获取游戏（动作）详情

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/<ID>"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|游戏（动作）ID

### Url Parameters

> 返回内容

```json
{
    "data": {
        "id": 1,
        "name": "运球游戏",
        "intro": "每人一球，听教练口令。\r\n教练先做示范动作，\r\n小朋友们跟着一起练习。",
        "requirements": "",
        "motion_effect": "\r\n1.反应\r\n2.球感\r\n3.身体协调性",
        "organization_format": "教练喊口令小朋友做动作：\r\n脚 — 脚踩球；\r\n膝盖 — 膝盖碰球；\r\n手 — 双手抱球；\r\n头 — 蹲下头碰球。\r\n没有限制怎么碰都可以，但是要把球控制住。\r\n适当的给做的最标准和完成速度最快的同学一些鼓励。",
        "gif_url": "http://public.ktfootball.com/download/footlesson/运球游戏.gif",
        "video_url": "http://public.ktfootball.com/download/footlesson/运球游戏.mp4",
        "duration": 10
    }
}
```


## 获取足球课列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/sets"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/sets`

> 返回内容

```json
{
    "data": [
        {
            "id": 1,
            "name": "第一课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 2,
            "name": "第二课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 3,
            "name": "第三课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 4,
            "name": "第四课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 5,
            "name": "第五课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 6,
            "name": "第六课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 7,
            "name": "第七课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 8,
            "name": "第八课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 9,
            "name": "第九课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 10,
            "name": "第十课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 11,
            "name": "第十一课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 12,
            "name": "第十二课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 13,
            "name": "第十三课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 14,
            "name": "第十四课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 15,
            "name": "第十五课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 16,
            "name": "第十六课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 17,
            "name": "第十七课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 18,
            "name": "第十八课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 19,
            "name": "第十九课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 20,
            "name": "第二十课",
            "semester": "小学一年级第一学期"
        },
        {
            "id": 21,
            "name": "第一课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 22,
            "name": "第二课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 23,
            "name": "第三课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 24,
            "name": "第四课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 25,
            "name": "第五课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 26,
            "name": "第六课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 27,
            "name": "第七课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 28,
            "name": "第九课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 29,
            "name": "第十课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 30,
            "name": "第十一课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 31,
            "name": "第十二课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 32,
            "name": "第十三课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 33,
            "name": "第十四课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 34,
            "name": "第十五课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 35,
            "name": "第十六课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 36,
            "name": "第十七课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 37,
            "name": "第十八课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 38,
            "name": "第十九课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 39,
            "name": "第二十课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 40,
            "name": "第八课",
            "semester": "小学一年级第二学期"
        },
        {
            "id": 41,
            "name": "第一课",
            "semester": "幼儿园小班"
        },
        {
            "id": 42,
            "name": "第二课",
            "semester": "幼儿园小班"
        },
        {
            "id": 43,
            "name": "第一课",
            "semester": "幼儿园中班"
        },
        {
            "id": 44,
            "name": "第一课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 45,
            "name": "第二课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 46,
            "name": "第三课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 47,
            "name": "第四课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 48,
            "name": "第一课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 49,
            "name": "第一课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 50,
            "name": "第一课",
            "semester": "幼儿园大班"
        },
        {
            "id": 51,
            "name": "第一课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 52,
            "name": "第一课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 53,
            "name": "第二课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 54,
            "name": "第二课",
            "semester": "幼儿园中班"
        },
        {
            "id": 55,
            "name": "第二课",
            "semester": "幼儿园大班"
        },
        {
            "id": 56,
            "name": "第三课",
            "semester": "幼儿园大班"
        },
        {
            "id": 57,
            "name": "第三课",
            "semester": "幼儿园小班"
        },
        {
            "id": 58,
            "name": "第四课",
            "semester": "幼儿园小班"
        },
        {
            "id": 59,
            "name": "第三课",
            "semester": "幼儿园中班"
        },
        {
            "id": 60,
            "name": "第四课",
            "semester": "幼儿园中班"
        },
        {
            "id": 61,
            "name": "第四课",
            "semester": "幼儿园大班"
        },
        {
            "id": 62,
            "name": "第二课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 63,
            "name": "第三课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 64,
            "name": "第四课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 65,
            "name": "第三课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 66,
            "name": "第二课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 67,
            "name": "第三课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 68,
            "name": "第二课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 69,
            "name": "第三课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 70,
            "name": "第五课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 71,
            "name": "第六课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 72,
            "name": "第七课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 73,
            "name": "第八课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 74,
            "name": "第四课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 75,
            "name": "第五课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 76,
            "name": "第四课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 77,
            "name": "第五课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 78,
            "name": "第六课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 79,
            "name": "第七课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 80,
            "name": "第五课",
            "semester": "幼儿园大班"
        },
        {
            "id": 81,
            "name": "第六课",
            "semester": "幼儿园大班"
        },
        {
            "id": 82,
            "name": "第七课",
            "semester": "幼儿园大班"
        },
        {
            "id": 83,
            "name": "第八课",
            "semester": "幼儿园大班"
        },
        {
            "id": 84,
            "name": "第九课",
            "semester": "幼儿园大班"
        },
        {
            "id": 85,
            "name": "第十课",
            "semester": "幼儿园大班"
        },
        {
            "id": 86,
            "name": "第十一课",
            "semester": "幼儿园大班"
        },
        {
            "id": 87,
            "name": "第五课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 88,
            "name": "第六课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 89,
            "name": "第七课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 90,
            "name": "第八课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 91,
            "name": "第九课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 92,
            "name": "第十课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 93,
            "name": "第五课",
            "semester": "幼儿园小班"
        },
        {
            "id": 94,
            "name": "第六课",
            "semester": "幼儿园小班"
        },
        {
            "id": 95,
            "name": "第七课",
            "semester": "幼儿园小班"
        },
        {
            "id": 96,
            "name": "第五课",
            "semester": "幼儿园中班"
        },
        {
            "id": 97,
            "name": "第六课",
            "semester": "幼儿园中班"
        },
        {
            "id": 98,
            "name": "第七课",
            "semester": "幼儿园中班"
        },
        {
            "id": 99,
            "name": "第十二课",
            "semester": "幼儿园大班"
        },
        {
            "id": 100,
            "name": "第十一课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 101,
            "name": "第四课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 102,
            "name": "第五课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 103,
            "name": "第六课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 104,
            "name": "第八课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 105,
            "name": "第九课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 106,
            "name": "第十课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 107,
            "name": "第十一课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 108,
            "name": "第十二课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 109,
            "name": "第十三课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 110,
            "name": "第十四课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 111,
            "name": "第十五课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 112,
            "name": "第一课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 113,
            "name": "第二课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 114,
            "name": "第三课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 115,
            "name": "第四课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 116,
            "name": "第五课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 117,
            "name": "第六课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 118,
            "name": "第十六课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 119,
            "name": "第七课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 120,
            "name": "第九课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 121,
            "name": "第十课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 122,
            "name": "第十一课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 123,
            "name": "第十二课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 124,
            "name": "第十三课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 125,
            "name": "第十四课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 126,
            "name": "第八课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 127,
            "name": "第九课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 128,
            "name": "第十课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 129,
            "name": "第十一课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 130,
            "name": "第一课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 131,
            "name": "第二课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 132,
            "name": "第十五课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 133,
            "name": "第十六课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 134,
            "name": "第三课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 135,
            "name": "第四课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 136,
            "name": "第五课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 137,
            "name": "第六课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 138,
            "name": "第七课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 139,
            "name": "第八课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 140,
            "name": "第九课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 141,
            "name": "第十课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 142,
            "name": "第十一课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 143,
            "name": "第十二课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 144,
            "name": "第十二课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 145,
            "name": "第十三课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 146,
            "name": "第十四课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 147,
            "name": "第十五课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 148,
            "name": "第十六课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 149,
            "name": "第十七课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 150,
            "name": "第十八课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 151,
            "name": "第十九课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 152,
            "name": "第二十课",
            "semester": "小学二年级第二学期"
        },
        {
            "id": 153,
            "name": "第十三课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 154,
            "name": "第十四课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 155,
            "name": "第十五课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 156,
            "name": "第十六课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 157,
            "name": "第十七课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 158,
            "name": "第十八课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 159,
            "name": "第十九课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 160,
            "name": "第二十课",
            "semester": "小学三年级第二学期"
        },
        {
            "id": 161,
            "name": "第七课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 162,
            "name": "第八课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 163,
            "name": "第九课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 164,
            "name": "第十课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 165,
            "name": "第十一课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 166,
            "name": "第十二课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 167,
            "name": "第十三课",
            "semester": "幼儿园大班"
        },
        {
            "id": 168,
            "name": "第十四课",
            "semester": "幼儿园大班"
        },
        {
            "id": 169,
            "name": "第十五课",
            "semester": "幼儿园大班"
        },
        {
            "id": 170,
            "name": "第八课",
            "semester": "幼儿园中班"
        },
        {
            "id": 171,
            "name": "第九课",
            "semester": "幼儿园中班"
        },
        {
            "id": 172,
            "name": "第十课",
            "semester": "幼儿园中班"
        },
        {
            "id": 173,
            "name": "第十一课",
            "semester": "幼儿园中班"
        },
        {
            "id": 174,
            "name": "第十二课",
            "semester": "幼儿园中班"
        },
        {
            "id": 175,
            "name": "第十三课",
            "semester": "幼儿园中班"
        },
        {
            "id": 176,
            "name": "第八课",
            "semester": "幼儿园小班"
        },
        {
            "id": 177,
            "name": "第九课",
            "semester": "幼儿园小班"
        },
        {
            "id": 178,
            "name": "第十课",
            "semester": "幼儿园小班"
        },
        {
            "id": 179,
            "name": "第十四课",
            "semester": "幼儿园中班"
        },
        {
            "id": 180,
            "name": "第十六课",
            "semester": "幼儿园大班"
        },
        {
            "id": 181,
            "name": "第十七课",
            "semester": "幼儿园大班"
        },
        {
            "id": 182,
            "name": "第十八课",
            "semester": "幼儿园大班"
        },
        {
            "id": 183,
            "name": "第十五课",
            "semester": "幼儿园中班"
        },
        {
            "id": 184,
            "name": "第十六课",
            "semester": "幼儿园中班"
        },
        {
            "id": 185,
            "name": "第十七课",
            "semester": "幼儿园中班"
        },
        {
            "id": 186,
            "name": "第十八课",
            "semester": "幼儿园中班"
        },
        {
            "id": 187,
            "name": "第十九课",
            "semester": "幼儿园大班"
        },
        {
            "id": 188,
            "name": "第二十课",
            "semester": "幼儿园大班"
        },
        {
            "id": 189,
            "name": "第二十一课",
            "semester": "幼儿园大班"
        },
        {
            "id": 190,
            "name": "第二十二课",
            "semester": "幼儿园大班"
        },
        {
            "id": 191,
            "name": "第二十三课",
            "semester": "幼儿园大班"
        },
        {
            "id": 192,
            "name": "第二十四课",
            "semester": "幼儿园大班"
        },
        {
            "id": 193,
            "name": "第二十五课",
            "semester": "幼儿园大班"
        },
        {
            "id": 194,
            "name": "第二十六课",
            "semester": "幼儿园大班"
        },
        {
            "id": 195,
            "name": "第二十七课",
            "semester": "幼儿园大班"
        },
        {
            "id": 196,
            "name": "第二十八课",
            "semester": "幼儿园大班"
        },
        {
            "id": 197,
            "name": "第二十九课",
            "semester": "幼儿园大班"
        },
        {
            "id": 198,
            "name": "第三十课",
            "semester": "幼儿园大班"
        },
        {
            "id": 199,
            "name": "第三十一课",
            "semester": "幼儿园大班"
        },
        {
            "id": 200,
            "name": "第三十二课",
            "semester": "幼儿园大班"
        },
        {
            "id": 201,
            "name": "第三十三课",
            "semester": "幼儿园大班"
        },
        {
            "id": 202,
            "name": "第三十四课",
            "semester": "幼儿园大班"
        },
        {
            "id": 203,
            "name": "第三十五课",
            "semester": "幼儿园大班"
        },
        {
            "id": 204,
            "name": "第三十六课",
            "semester": "幼儿园大班"
        },
        {
            "id": 205,
            "name": "第十七课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 206,
            "name": "第十八课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 207,
            "name": "第十九课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 208,
            "name": "第二十课",
            "semester": "小学二年级第一学期"
        },
        {
            "id": 209,
            "name": "第十八课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 210,
            "name": "第十五课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 211,
            "name": "第十六课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 212,
            "name": "第十七课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 213,
            "name": "第五课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 214,
            "name": "第六课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 215,
            "name": "第七课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 216,
            "name": "第八课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 217,
            "name": "第九课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 218,
            "name": "第十课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 219,
            "name": "第十一课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 220,
            "name": "第十二课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 221,
            "name": "第十三课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 222,
            "name": "第十七课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 223,
            "name": "第十八课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 224,
            "name": "第十九课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 225,
            "name": "第二十课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 226,
            "name": "第四课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 227,
            "name": "第五课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 228,
            "name": "第十四课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 229,
            "name": "第十九课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 230,
            "name": "第二十课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 231,
            "name": "第十五课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 232,
            "name": "第十七课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 233,
            "name": "第十八课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 234,
            "name": "第十九课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 235,
            "name": "第二十课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 236,
            "name": "第十二课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 237,
            "name": "第十三课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 238,
            "name": "第十四课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 239,
            "name": "第十八课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 240,
            "name": "第十九课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 241,
            "name": "第二十课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 242,
            "name": "第八课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 243,
            "name": "第九课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 244,
            "name": "第十六课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 245,
            "name": "第十九课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 246,
            "name": "第二十课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 247,
            "name": "第十四课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 248,
            "name": "第十五课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 249,
            "name": "第十六课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 250,
            "name": "第十七课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 251,
            "name": "第十七课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 252,
            "name": "第十八课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 253,
            "name": "第十七课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 254,
            "name": "第十八课",
            "semester": "小学五年级第一学期"
        },
        {
            "id": 255,
            "name": "第六课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 256,
            "name": "第七课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 257,
            "name": "第十课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 258,
            "name": "第十一课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 259,
            "name": "第十二课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 260,
            "name": "第十三课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 261,
            "name": "第六课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 262,
            "name": "第七课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 263,
            "name": "第八课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 264,
            "name": "第九课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 265,
            "name": "第十课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 266,
            "name": "第十一课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 267,
            "name": "第十二课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 268,
            "name": "第十三课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 269,
            "name": "第十四课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 270,
            "name": "第十五课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 271,
            "name": "第十六课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 272,
            "name": "第十七课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 273,
            "name": "第十九课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 274,
            "name": "第二十课",
            "semester": "小学三年级第一学期"
        },
        {
            "id": 275,
            "name": "第十三课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 276,
            "name": "第十四课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 277,
            "name": "第十八课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 278,
            "name": "第十九课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 279,
            "name": "第二十课",
            "semester": "小学四年级第一学期"
        },
        {
            "id": 280,
            "name": "第一课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 281,
            "name": "第二课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 282,
            "name": "第三课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 283,
            "name": "第四课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 284,
            "name": "第十四课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 285,
            "name": "第十五课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 286,
            "name": "第十六课",
            "semester": "小学四年级第二学期"
        },
        {
            "id": 287,
            "name": "第一课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 288,
            "name": "第二课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 289,
            "name": "第三课",
            "semester": "小学五年级第二学期"
        },
        {
            "id": 290,
            "name": "第九课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 291,
            "name": "第十课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 292,
            "name": "第十一课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 293,
            "name": "第十二课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 294,
            "name": "第十三课",
            "semester": "小学六年级第一学期"
        },
        {
            "id": 295,
            "name": "第一课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 296,
            "name": "第二课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 297,
            "name": "第三课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 298,
            "name": "第四课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 299,
            "name": "第五课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 300,
            "name": "第六课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 301,
            "name": "第七课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 302,
            "name": "第八课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 303,
            "name": "第十五课",
            "semester": "小学六年级第二学期"
        },
        {
            "id": 304,
            "name": "第十六课",
            "semester": "小学六年级第二学期"
        }
    ]
}
```


## 获取足球课详情

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/sets/<ID>"
```
### HTTP Request

  `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/motions/sets/<ID>`

### Query Parameters
Parameter | Description
--------- | -----------
ID|足球课ID

### Url Parameters

> 返回内容

```json
{
    "data": {
        "id": 1,
        "name": "第一课",
        "semester": "小学一年级第一学期",
        "index": 1,
        "goal": "参与足球游戏和比赛，接触足球，培养球感；\r\n学习脚底踩球技能动作；",
        "equipment": "足球：若干（每人一个）          \r\n KT足球气场：1个（可用小球门2个替代）",
        "sets": [
            {
                "name": "足球游戏",
                "items": [
                    {
                        "id": 1,
                        "name": "运球游戏",
                        "intro": "每人一球，听教练口令。\r\n教练先做示范动作，\r\n小朋友们跟着一起练习。",
                        "requirements": "",
                        "motion_effect": "\r\n1.反应\r\n2.球感\r\n3.身体协调性",
                        "organization_format": "教练喊口令小朋友做动作：\r\n脚 — 脚踩球；\r\n膝盖 — 膝盖碰球；\r\n手 — 双手抱球；\r\n头 — 蹲下头碰球。\r\n没有限制怎么碰都可以，但是要把球控制住。\r\n适当的给做的最标准和完成速度最快的同学一些鼓励。",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/运球游戏.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/运球游戏.mp4",
                        "duration": 10,
                        "step": 2
                    }
                ]
            },
            {
                "name": "足球比赛",
                "items": [
                    {
                        "id": 20,
                        "name": "KT足球比赛 2vs2 ",
                        "intro": "",
                        "requirements": "在气场中央开球，每个队防守一个球门，同时要试图攻入对方的球门得分。\r\n交换控球权出现在防守者抢到球、球出界或射门得分后。",
                        "motion_effect": "\r\n发展在2对2情况下个队员和队员之间一起进攻和防守战术的使用能力，提高传球、配合的技战术能力",
                        "organization_format": "KT足球气场 两人一队；\r\n猜拳决定球权，并进行比赛；\r\n每局3分钟。\r\n如若没有KT足球气场，可用标志桶围出8m*10m的区域，在两端放置小球门替代。",
                        "gif_url": "",
                        "video_url": "",
                        "duration": 15,
                        "step": 4
                    }
                ]
            },
            {
                "name": "足球技能",
                "items": [
                    {
                        "id": 44,
                        "name": "脚底踩球",
                        "intro": "前脚掌触球，然后要有弹性的双脚交替跳动踩球。",
                        "requirements": "双脚协调，踩球用力均匀；\r\n重心向上，不要屁股向下坐；",
                        "motion_effect": "\r\n前脚掌触球，然后要有弹性的双脚交替跳动踩球",
                        "organization_format": "1人1球，用标志桶圈出一个20米×30米的长方形区域。\r\n所有球员都持球在区域内。\r\n球员间前后均空出1m左右的距离。\r\n一人一球进行脚底踩球练习，30秒一组。",
                        "gif_url": "http://public.ktfootball.com/download/still/脚底踩球.gif",
                        "video_url": "http://public.ktfootball.com/download/still/脚底踩球.mp4",
                        "duration": 10,
                        "step": 3
                    }
                ]
            },
            {
                "name": "放松活动",
                "items": [
                    {
                        "id": 75,
                        "name": "头部运动",
                        "intro": "头部韧带伸拉 共四个方向 左后右前 每个动作停留4秒钟",
                        "requirements": "前后左右拉伸保持4秒",
                        "motion_effect": null,
                        "organization_format": "",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/头部运动.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/头部运动.mp4",
                        "duration": 5,
                        "step": 6
                    },
                    {
                        "id": 76,
                        "name": "扩胸运动",
                        "intro": "以胸部内侧的肌肉为中心展开的放松训练。",
                        "requirements": "保持扩胸动作幅度",
                        "motion_effect": null,
                        "organization_format": "",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/扩胸运动.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/扩胸运动.mp4",
                        "duration": 5,
                        "step": 6
                    },
                    {
                        "id": 77,
                        "name": "弓步压腿",
                        "intro": "左右各5次 双手扶着膝关节，后退伸直。",
                        "requirements": "保持90度弯曲。",
                        "motion_effect": null,
                        "organization_format": "",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/弓步压腿.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/弓步压腿.mp4",
                        "duration": 5,
                        "step": 6
                    },
                    {
                        "id": 78,
                        "name": "侧压腿",
                        "intro": "压到底侧压腿：左右各5次 （一只手摸到脚尖，另一只手保持平衡）。",
                        "requirements": "重心尽量压低。",
                        "motion_effect": null,
                        "organization_format": "",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/侧压腿.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/侧压腿.mp4",
                        "duration": 5,
                        "step": 6
                    },
                    {
                        "id": 79,
                        "name": "手、脚踝运动",
                        "intro": "脚腕、手腕    左右各转4次。",
                        "requirements": "保持放松缓慢旋转。",
                        "motion_effect": null,
                        "organization_format": "",
                        "gif_url": "http://public.ktfootball.com/download/footlesson/手、脚踝运动.gif",
                        "video_url": "http://public.ktfootball.com/download/footlesson/手、脚踝运动.mp4",
                        "duration": 5,
                        "step": 6
                    }
                ]
            }
        ]
    }
}
```