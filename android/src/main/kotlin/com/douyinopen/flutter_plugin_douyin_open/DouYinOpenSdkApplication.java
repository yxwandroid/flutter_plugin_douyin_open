package com.douyinopen.flutter_plugin_douyin_open;

import android.app.Application;

import com.bytedance.sdk.open.douyin.DouYinOpenApiFactory;
import com.bytedance.sdk.open.douyin.DouYinOpenConfig;

import io.flutter.app.FlutterApplication;


/**
 * 主要功能：自定义{@link Application}
 * since: 2018/12/25
 */
public class DouYinOpenSdkApplication extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();

        String clientkey = "awsxdh3k1fiojgnu"; // 需要到开发者网站申请并替换
        DouYinOpenApiFactory.init(new DouYinOpenConfig(clientkey));
    }
}
