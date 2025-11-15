leftDown := false

; 侧键4：切换左键按住/松开
XButton1:: {
    global leftDown
    if (!leftDown) {
        Send "{LButton down}"
        leftDown := true
    } else {
        Send "{LButton up}"
        leftDown := false
    }
}
