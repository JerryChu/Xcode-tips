# Xcode-tips
play with Xcode

[TOC]

## 代码提示与检测
- [Xcode展示自定义warnings](https://jerrychu.github.io/2018/08/05/Xcode-warnings/)
- [Xcode重复代码检测](https://jerrychu.github.io/2018/08/05/Xcode-cpd/)

## 命令行工具
- scheme跳转
  ```shell
  xcrun simctl openurl booted myapp://
  ```
  
- 清理DeriveData
  ```shell
  alias makeXcodeGreatAgain='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
  ```

- 命令行快速打开Xcode工程
  ```shell
  xed .
  ```
## 调试

- 低版本Xcode调试高系统版本设备
  ```shell
  # 以Xcode10 beta5 / iOS12 beta5为例
  ln -s /Applications/Xcode-beta.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport/12.0\ \(16A5339e\)      /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/DeviceSupport
  ```
- 断点调试命令（debugger command）
  ```shell
  # 修改变量值
  expression i = 1
  
  # 直接return
  thread return
  
  # 跳过1行/跳到指定行
  thread jump -b 1 
  thread jump 111
  ```

## 快捷键

- 在左侧的Project Navigator中定位当前文件（Reveal in Project Navigator）

`Command+Shift+J`

- 切换.m/.h文件

`Control+Command+⬆️⬇️`

## 单元测试

- 命令行执行单元测试
  ```shell
  # 使用xcodeproj
  xcodebuild test -project Demo/Demo.xcodeproj -scheme Demo -destination 'platform=iOS Simulator,name=iPhone 11' -resultBundlePath test.xcresult

  # 使用xcworkspace
  xcodebuild test -workspace Demo/Demo.xcworkspace -scheme Demo -destination 'platform=iOS Simulator,name=iPhone 11' -resultBundlePath test.xcresult
  ```

- 解析单元测试覆盖率
  ```
  xcrun xccov view --report --json test.xcresult > result.json
  ```

- Xcode展示代码是否被单元测试覆盖  
  红色表示该行未被单元测试覆盖，数字表示执行次数
 
  <img src="Resource/xcode_cov.png" alt="Xcode代码覆盖" style="width:200px;"/>
