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

## 获取技能列表

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/skills"
```
### HTTP Request

    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/skills`
    `GET https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/skills`

### Query Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
category|控球类|false|技能类型（控球类，传球类两种）

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
            "id": 2,
            "name": "脚内侧踢球",
            "sub_title": "一击即中",
            "intro": "脚与球接触面积大，出球准确平衡，且易于撑握，主要是短距离的传球和射门的时候比较常用。\r\n",
            "description": "训练说明：\r\n在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
            "category": "传球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/脚内侧踢球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚内侧踢球.mp4",
            "resources": {
                "skill_id": 2,
                "cartoon": "http://public.ktfootball.com/download/px/04/脚内侧踢球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/04/脚内侧踢球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/04/脚内侧踢球初级难度.zip",
                    "http://public.ktfootball.com/download/px/04/脚内侧踢球中级难度.zip",
                    "http://public.ktfootball.com/download/px/04/脚内侧踢球高级难度.zip"
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
            "id": 12,
            "name": "正脚背踢球",
            "sub_title": "惊为天人",
            "intro": "正脚背踢球射门，是最有力量的踢球方式",
            "description": "训练说明： 在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
            "category": "传球类",
            "level": 2,
            "gif_url": "http://public.ktfootball.com/download/still/正脚背踢球.gif",
            "video_url": "http://public.ktfootball.com/download/still/正脚背踢球.mp4",
            "resources": {
                "skill_id": 12,
                "cartoon": "http://public.ktfootball.com/download/px/11/正脚背踢球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/11/正脚背踢球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/11/正脚背踢球初级难度.zip",
                    "http://public.ktfootball.com/download/px/11/正脚背踢球中级难度.zip",
                    "http://public.ktfootball.com/download/px/11/正脚背踢球高级难度.zip"
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
            "id": 21,
            "name": "脚背内侧传球",
            "sub_title": "一剑封喉",
            "intro": "团队配合是足球运动中不可缺少的一部分，而传球接球正是团队配合基础中的基础",
            "description": "训练说明： 在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
            "category": "传球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/脚背内侧传球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚背内侧传球.mp4",
            "resources": {
                "skill_id": 21,
                "cartoon": "http://public.ktfootball.com/download/px/21/脚背内侧传球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/21/脚背内侧传球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球初级难度.zip",
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球中级难度.zip",
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球高级难度.zip"
                ]
            }
        },
        {
            "id": 22,
            "name": "脚背外侧传球",
            "sub_title": "出神入化",
            "intro": "团队配合是足球运动中不可缺少的一部分，而传球接球正是团队配合基础中的基础",
            "description": "训练说明： 在训练前，请准备一个足球，一块可以反弹的墙壁，距离墙壁3米进行训练",
            "category": "传球类",
            "level": 3,
            "gif_url": "http://public.ktfootball.com/download/still/脚背外侧传球.gif",
            "video_url": "http://public.ktfootball.com/download/still/脚背外侧传球.mp4",
            "resources": {
                "skill_id": 22,
                "cartoon": "http://public.ktfootball.com/download/px/22/脚背外侧传球教学漫画.zip",
                "story": "http://public.ktfootball.com/download/px/22/脚背外侧传球漫画故事.zip",
                "video": [
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球初级难度.zip",
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球中级难度.zip",
                    "http://public.ktfootball.com/download/px/21/脚背内侧传球高级难度.zip"
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

## 创建测评记录

```shell
curl -X POST "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments -d "skid=<SID>&uids=1,2,3&counts=10,20,30""
```

### HTTP Request

  `POST https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
uids|1,2,3|true|用户ID用逗号隔开
counts|10|true|技能数量用逗号隔开
skid|1|true|技能ID
video_key|xxxxx|false|视频Key

> 返回内容

```json
{
  "data": [1,2,3]
}
```

## 批量更新测评记录视频

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/batch -d "ids=10&video_key=oxedxadhgesa_d235da""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/batch`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ids|oxedxadhgesa_d235da|true|技能ID
video_key|10|true|视频key

> 返回内容

```json
{
    "data": [
        {
            "id": 31,
            "count": 3,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284732&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:p6emrHV-6J5Tf8nAvhWJXONgWa4=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 32,
            "count": 3,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284732&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:p6emrHV-6J5Tf8nAvhWJXONgWa4=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 33,
            "count": 6,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284732&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:p6emrHV-6J5Tf8nAvhWJXONgWa4=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 34,
            "count": 5,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284732&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:p6emrHV-6J5Tf8nAvhWJXONgWa4=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 35,
            "count": 566,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284732&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:p6emrHV-6J5Tf8nAvhWJXONgWa4=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 36,
            "count": 336,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284733&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:IjQ8c93zSlSaP7xBBPVblMJxALs=",
            "created_at": "2017-07-17 16:43:10 +0800"
        },
        {
            "id": 37,
            "count": 566,
            "skill": {
                "id": 3,
                "name": "双脚靠球",
                "category": "控球类",
                "level": 0,
                "gif_url": "http://public.ktfootball.com/download/still/双脚靠球.gif"
            },
            "video": "http://oqe9ssuil.bkt.clouddn.com/Fq7EO2ZKZCNg67e_vb57pcWwRMpY?e=1500284733&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:IjQ8c93zSlSaP7xBBPVblMJxALs=",
            "created_at": "2017-07-17 16:43:10 +0800"
        }
    ]
}
```

## 更新测评记录个数

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID> -d "count=10""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
count|10|true|技能数量


> 返回内容

```json
{
    "data": {
        "id": 1,
        "count": 20,
        "skill": {
            "id": 23,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif"
        },
        "video": "",
        "created_at": "2017-06-14 11:33:45 +0800"
    }
}
```

## 更新测评视频key

```shell
curl -X PUT "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID> -d "key=<KEY>""
```

### HTTP Request

  `PUT https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`

### FormData(x-www-form-urlencoded)

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
key|xxxx|true|七牛上传视频Key


> 返回内容

```json
{
    "data": {
        "id": 1,
        "count": 20,
        "skill": {
            "id": 23,
            "category": "控球类",
            "level": 1,
            "gif_url": "http://public.ktfootball.com/download/still/踩球过人.gif"
        },
        "video": "",
        "created_at": "2017-06-14 11:33:45 +0800"
    }
}
```

## 获取技能排行榜

```shell
curl "https://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>"
```
### HTTP Request

    `GET hhttps://watchman.ktfootball.com/<SERVICE_NAME>/api/v1/assessments/<ID>`

### Url Parameters

Parameter | Default | Required | Description
--------- | ------- | ---------| -----------
ID|1|true|测评ID

```json
{
    "data": {
        "id": 1,
        "count": 66,
        "profile": {
            "id": 330,
            "user_id": 2512,
            "school_id": 3,
            "school": {
                "id": 3,
                "name": "测试"
            },
            "user": {
                "id": 2512,
                "uid": 2512,
                "username": "oys4MwbUc1d5AUi19pwoF36QaWCI",
                "source_name": "Joey",
                "source_avatar": "http://wx.qlogo.cn/mmopen/vi_32/3qvKhm752ZOk8w6nosDic2yRaAXJkLBxPDFZESrYOx4aPsGZuGibsYLhhFBI3811MWyDk2jGYATpVz0MB13buyVQ/0",
                "ce": 840
            },
            "realname": "QQ",
            "gender": 0,
            "point": 0,
            "ce": 1000,
            "avatar": null,
            "birthday": "2017-08-28",
            "classroom": {
                "id": 69,
                "school": 3,
                "grade": "1",
                "cls": "asd班"
            }
        },
        "skill": {
            "id": 18,
            "name": "靠球过人",
            "category": "控球类",
            "level": 0,
            "cartoon": null
        },
        "video_key": "lsp77UDRIE-yfXK4TZfF8dbqMLyx",
        "video": "http://oqe9ssuil.bkt.clouddn.com/lsp77UDRIE-yfXK4TZfF8dbqMLyx-zip?e=1504580022&token=2XprF4r3g5ksaGp6GQoWgeurBTB08DLr7HpUjKcp:xLU6cyJs9wronkXbQq1Y2FJ3vII=",
        "created_at": "2017-09-05 09:53:00 +0800",
        "rank": "S"
    }
}
```




