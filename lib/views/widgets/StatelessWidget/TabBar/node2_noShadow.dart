import 'package:flutter/material.dart';
import 'package:flutter_unit/components/flutter/no_shadow_tab_bar.dart';

/// create by 张风捷特烈 on 2020/4/27
/// contact me by email 1981462002@qq.com
/// 说明: 

//    {
//      "widgetId": 58,
//      "name": '通过修改源码可实现无水波纹',
//      "priority": 1,
//      "subtitle":
//          "详见:components/flutter/no_shadow_tab_bar.dart",
//    }
class NoShadowTabBarDemo extends StatefulWidget {
  @override
  _NSTabBarState createState() => _NSTabBarState();
}

class _NSTabBarState extends State<NoShadowTabBarDemo>
    with SingleTickerProviderStateMixin {
  final tabs = ['风画庭', '雨韵舍', '雷鸣殿', '电疾堂', '霜寒阁', '雪月楼'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NoShadowTabBar(
      onTap: (tab) {
        print(tab);
      },
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontSize: 16),
      isScrollable: true,
      controller: _tabController,
      labelColor: Colors.blue,
      indicatorWeight: 3,
      indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.orangeAccent,
      tabs: tabs.map((e) => Tab(text: e)).toList(),
    );
  }
}