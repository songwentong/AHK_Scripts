#If WinActive("ahk_class Warcraft III")  ; 检查是否为魔兽争霸III窗口

; 定义卡尔的10个技能组合
skills := Object()
skills["F2"] := ["w", "w", "q", "r", "x"]  ; 强袭飓风 (F2: wwqr -> x)
skills["F3"] := ["w", "w", "e", "r", "c"]  ; 电磁脉冲 (F3: wwer -> c)
skills["F4"] := ["e", "e", "w", "r", "d"]  ; 混沌陨石 (F4: eewr -> d)
skills["F5"] := ["q", "w", "e", "r", "b"]  ; 超震声波 (F5: qwer -> b)
skills["F6"] := ["e", "e", "q", "r", "f"]  ; 熔炉精灵 (F6: eeqr -> f)
skills["F7"] := ["q", "q", "q", "r", "y"]  ; 急速冷却 (F7: qqqr -> y)
skills["F8"] := ["q", "q", "w", "r", "v"]  ; 幽灵漫步 (F8: qqwr -> v)
skills["F9"] := ["q", "q", "e", "r", "g"]  ; 寒冰之墙 (F9: qqer -> g)
skills["F10"] := ["w", "w", "w", "r", "z"] ; 灵动迅捷 (F10: wwwr -> z)
skills["F11"] := ["e", "e", "e", "r", "t"] ; 阳炎冲击 (F11: eeer -> t)

; 定义一个函数来执行技能
ExecuteSkill(skill) {
    for index, key in skill {
        Send, %key%
        if (index == skill.MaxIndex()) {
            Sleep, 300  ; 最后一个按键的延迟设置为300毫秒
        } else {
            Sleep, 100  ; 前面的按键延迟设置为100毫秒
        }
    }
}

; 绑定F2-F11到具体的技能
F2::ExecuteSkill(skills["F2"])  ; 强袭飓风
F3::ExecuteSkill(skills["F3"])  ; 电磁脉冲
F4::ExecuteSkill(skills["F4"])  ; 混沌陨石
F5::ExecuteSkill(skills["F5"])  ; 超震声波
F6::ExecuteSkill(skills["F6"])  ; 熔炉精灵
F7::ExecuteSkill(skills["F7"])  ; 急速冷却
F8::ExecuteSkill(skills["F8"])  ; 幽灵漫步
F9::ExecuteSkill(skills["F9"])  ; 寒冰之墙
F10::ExecuteSkill(skills["F10"]) ; 灵动迅捷
F11::ExecuteSkill(skills["F11"]) ; 阳炎冲击

#If  ; 结束条件检查
