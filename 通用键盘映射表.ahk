/*
^ 代表 Ctrl
+ 代表 Shift
! 代表 Alt
# 代表 Win（Windows 徽标键）
*/
/*
全局----------------------------------------------------------------------------------------------------------------------
截屏和录屏
*/
PrintScreen::Send, ^+i  ; 将 PrintScreen 键重新映射为 Ctrl + Shift + I（截屏）
Pause::Send, ^+r  ; 将 Pause 键重新映射为 Ctrl + Shift + R（屏幕录制）
^F10::Send, {Volume_Down}  ; 按下 Ctrl+F10 键设置为音量减少
^F11::Send, {Volume_Up}    ; 按下 Ctrl+F11 键设置为音量增加
^F12::Send, {Volume_Mute}  ; 按下 Ctrl+F12 键设置为静音/解除静音
/*
Chrome-----------------------------------------------------------------------------------------------------------------
切换标签页
*/
#IfWinActive ahk_class Chrome_WidgetWin_1
F1::Send, ^+{Tab}   ; 切换到上一个标签页
F2::Send, ^{Tab}    ; 切换到下一个标签页
F3::
    Loop 5
    {
        Send ^+{Tab}  ; 发送 Ctrl+Shift+Tab 切换到前一个标签页
        Sleep 50      ; 可选，添加一个短暂的延迟，避免切换过快
    }
return
F4::
    Loop 5
    {
        Send ^{Tab}  ; 发送 Ctrl+Tab 切换到下一个标签页
        Sleep 50     ; 可选，添加一个短暂的延迟，避免切换过快
    }
return
F7::
    Send ^+{Tab}  ; 切换到上一个标签页
    Sleep 50      ; 可选，添加一个短暂的延迟，避免切换过快
    Send {F5}     ; 刷新当前标签页
return
F8::
    Send ^{Tab}  ; 切换到上一个标签页
    Sleep 50      ; 可选，添加一个短暂的延迟，避免切换过快
    Send {F5}     ; 刷新当前标签页
return
#IfWinActive
/*
魔兽争霸------------------------------------------------------------------------------------------------------------------
*/
#IfWinActive ahk_class Warcraft III  ; 仅在魔兽争霸3窗口激活时生效
XButton1::
    ; 当按下鼠标侧键4时，开始连点
    isClicking := true
    SetTimer, ClickMouse, 200  ; 设置一个定时器，每200毫秒点击一次
return

XButton1 Up::
    ; 当松开鼠标侧键4时，停止连点
    isClicking := false
return

ClickMouse:
    ; 如果正在点击，则点击鼠标左键
    if (isClicking)
    {
        Click
    }
return
#IfWinActive
