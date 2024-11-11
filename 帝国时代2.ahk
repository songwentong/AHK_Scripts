#Persistent
SetTimer, CheckGameRunning, 1000  ; 每秒检查游戏是否运行
return

CheckGameRunning:
    ; 检查《帝国时代2：决定版》是否在运行
    if WinExist("ahk_exe AoE2DE_s.exe")  ; 将此处的进程名替换为正确的进程名
    {
        SetTimer, CheckCapsLock, 100  ; 游戏运行时启动定时器，每100毫秒检查 Caps Lock
    }
    else
    {
        SetTimer, CheckCapsLock, Off  ; 游戏未运行时停止定时器
    }
return

CheckCapsLock:
    ; 确保只有在游戏窗口激活时才检查 Caps Lock
    if WinActive("ahk_exe AoE2DE_s.exe")
    {
        if !GetKeyState("CapsLock", "T")  ; 如果 Caps Lock 被解锁
        {
            Send, {CapsLock}  ; 强制重新锁定
        }
    }
return
