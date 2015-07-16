# Refresh Plugins After Xcode Upgrading
每当Xcode升级之后，都会导致原有的Xcode插件不能使用，这是因为每个插件的Info.plist中记录了该插件兼容的Xcode版本的DVTPlugInCompatibilityUUID，而每个版本的Xcode的DVTPlugInCompatibilityUUID都是不同的。如果想让原来的插件继续工作，我们就得将新版Xcode的DVTPlugInCompatibilityUUID加入到每一个插件的Info文件中，手动添加的话比较费时间还可能出错，所以我写了一个脚本来做这件事。

# 如何使用
1. 下载refreshPluginsAfterXcodeUpgrading.sh
2. 运行 './refreshPluginsAfterXcodeUpgrading.sh' 
3. 重启Xcode


# 注意
1. Xcode 6.4之后会要求用户确认是否加载非苹果官方插件，对话框如下![dialog image](https://cloud.githubusercontent.com/assets/1871108/7218140/a761e32c-e629-11e4-8f97-dc452ebcef16.png)
  点击Load Bundles即可
2. 该脚本依赖[PlistBuddy](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man8/PlistBuddy.8.html)命令行工具
