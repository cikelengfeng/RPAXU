# Refresh Plugins After Xcode Upgrading
每当Xcode升级之后，都会导致原有的Xcode插件不能使用，这是因为每个插件的Info.plist中记录了该插件兼容的Xcode版本的DVTPlugInCompatibilityUUID，而每个版本的Xcode的DVTPlugInCompatibilityUUID都是不同的。如果想让原来的插件继续工作，我们就得将新版Xcode的DVTPlugInCompatibilityUUID加入到每一个插件的Info文件中，手动添加的话比较费时间还可能出错，所以我写了一个脚本来做这件事。

# Installation
直接将refreshPluginsAfterXcodeUpgrading.sh文件下载，
然后运行 './refreshPluginsAfterXcodeUpgrading.sh' 即可

#Notice
该脚本依赖[defaults](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/defaults.1.html)命令行工具