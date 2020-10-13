# flutter_plugin_douyin_open

A new Flutter plugin.

## Getting Started

接入步骤

android端
1,manifest 添加权限
     <uses-permission android:name="android.permission.INTERNET" />
     <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
     <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />



2,添加抖音授权成功回调界面activity


  <activity
            android:theme="@style/Transparent"
            android:launchMode="singleTask"
            android:taskAffinity="com.douyinopen.flutter_plugin_douyin_open_example"
            android:name="com.douyinopen.flutter_plugin_douyin_open.douyinapi.DouYinEntryActivity"
            android:exported="true">



3,添加style

 <style name="Transparent">
        <item name="android:windowBackground">@color/transparent</item>
        <item name="android:windowNoTitle">true</item>
        <item name="android:windowIsTranslucent">true</item>
        <item name="android:windowAnimationStyle">@android:style/Animation.Translucent</item>
    </style>



4, 添加color

  <color name="transparent">#0000</color>





5,在资源文件添加xml文件夹然后添加 network_security_config.xml文件


文件内容

<?xml version="1.0" encoding="utf-8"?>
<network-security-config>
    <base-config cleartextTrafficPermitted="true">

        <trust-anchors>
            <certificates
                overridePins="true"
                src="system" />
            <certificates
                overridePins="true"
                src="user" />
        </trust-anchors>

    </base-config>
</network-security-config>



6, 在清单文件 application标签下添加

         android:networkSecurityConfig="@xml/network_security_config"
         android:name="com.douyinopen.flutter_plugin_douyin_open.DouYinOpenSdkApplication"



7,在抖音插件的DouYinOpenSdkApplication 的oncreate()方法 填写 clientkey参数




ios集成



步骤1,参考 image文件夹截图
配置info.list


<key>LSApplicationQueriesSchemes</key>
<array>
<string>douyinopensdk</string>
<string>douyinsharesdk</string>
<string>snssdk1128</string>
</array>



步骤2 参考 image文件夹截图







ios遇到问题

若是 pod install   pod update 都失败 就进入到ios项目目录的podfile文件夹
ios项目集成注意注释掉这个
    #  use_frameworks!







ios 第一次运行
  需要
    pod install

   若是无法下载pod 执行
    pod update







