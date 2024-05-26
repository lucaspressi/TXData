-- Place any of your custom animations in here and keep a backup of this file for future updates.
return {
    Walks = {},
    Scenarios = {},
    Expressions = {},
    Emotes = {
        ["uncuff"] = {
            dict = "mp_arresting",
            anim = "a_uncuff",
            label = "Uncuff",
            AnimationOptions = {
                EmoteLoop = true,
                EmoteMoving = true
            }
        }
    },
    PropEmotes = {
        ["shootup"] = {
            dict = "rcmpaparazzo1ig_4",
            anim = "miranda_shooting_up",
            label = "Shoot Up",
            AnimationOptions = {
                EmoteLoop = true,
                EmoteMoving = true,
                Prop = 'prop_syringe_01',
                PropBone = 18905,
                PropPlacement = {0.11, 0.03, 0.0, -124.0, 0.0, 0.0}
            }
        }
    },
    ConsumableEmotes = {
        ["edible"] = {
            dict = "mp_player_inteat@burger",
            anim = "mp_player_int_eat_burger",
            label = "Edible",
            AnimationOptions = {
                EmoteLoop = false,
                EmoteMoving = true
            }
        }
    },
    DanceEmotes = {},
    SynchronizedEmotes = {},
    AnimalEmotes = {}
}
