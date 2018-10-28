# Xcode-tips
play with Xcode

- [Xcode展示自定义warnings](https://jerrychu.github.io/2018/08/05/Xcode-warnings/)
- [Xcode重复代码检测](https://jerrychu.github.io/2018/08/05/Xcode-cpd/)
- 低版本Xcode调试高系统版本设备
  ```
  # 以Xcode10 beta5 / iOS12 beta5为例
  ln -s /Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport/12.0\ \(16A5339e\)      /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport
  ```
- 断点调试命令（debugger command）
  ```
  // 修改变量值
  expression i = 1
  
  // 直接return
  thread return
  
  // 跳过1行/跳到指定行
  thread jump -b 1 
  thread jump 111
  ```

- scheme跳转
  ```
  xcrun simctl openurl booted myapp://
  ```
  
