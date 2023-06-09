import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unit/views/pages/about/about_me_page.dart';
import 'package:flutter_unit/views/pages/about/about_app_page.dart';
import 'package:flutter_unit/views/pages/app/navigation/unit_desk_navigation.dart';

import 'package:flutter_unit/views/pages/setting/code_style_setting.dart';
import 'package:flutter_unit/views/pages/setting/font_setting.dart';

import 'package:flutter_unit/views/pages/setting/theme_color_setting.dart';
import 'package:flutter_unit/views/pages/unit_todo/attr_unit_page.dart';
import 'package:flutter_unit/views/pages/unit_todo/bug_unit_page.dart';

import 'package:flutter_unit/views/pages/unit_todo/layout_unit_page.dart';
import 'package:flutter_unit/views/pages/unit_todo/paint_unit_page.dart';
import 'package:flutter_unit/views/pages/setting/setting_page.dart';
import 'package:widget_repository/widget_repository.dart';

import '../views/pages/home/widget_detail/widget_detail_page.dart';

class UnitRouters {
  static const String detail = 'detail';
  static const String home = '/';
  static const String logo = 'logo';
  static const String search = 'search';
  static const String nav = 'nav';
  static const String widget_detail = 'widget_detail';
  static const String collect = 'CollectPage';

  static const String setting = 'SettingPage';
  static const String font_setting = 'FountSettingPage';
  static const String theme_color_setting = 'ThemeColorSettingPage';
  static const String code_style_setting = 'CodeStyleSettingPage';
  static const String item_style_setting = 'ItemStyleSettingPage';

  static const String category_show = 'CategoryShow';

  static const String attr = 'AttrUnitPage';
  static const String bug = 'BugUnitPage';
  static const String paint = 'PaintUnitPage';
  static const String layout = 'LayoutUnitPage';
  static const String about_me = 'AboutMePage';
  static const String about_app = 'AboutAppPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //根据名称跳转相应页面
      case widget_detail:
        return Right2LeftRouter(
            child: WidgetDetailPageScope(
          model: settings.arguments as WidgetModel,
        ));
      case search:
      // return Right2LeftRouter(child: SearchPage());
      case collect:
      // return Right2LeftRouter(child: CollectPage());
      case nav:
        return Left2RightRouter(child: UnitDeskNavigation());
      case setting:
        return Right2LeftRouter(child: SettingPage());
      case font_setting:
        return Right2LeftRouter(child: FontSettingPage());
      case theme_color_setting:
        return Right2LeftRouter(child: ThemeColorSettingPage());
      case code_style_setting:
        return Right2LeftRouter(child: CodeStyleSettingPage());
      case item_style_setting:
      // return Right2LeftRouter(child: ItemStyleSettingPage());

      case attr:
        return Right2LeftRouter(child: AttrUnitPage());
      case bug:
        return Right2LeftRouter(child: BugUnitPage());
      case paint:
        return Right2LeftRouter(child: PaintUnitPage());
      case layout:
        return Right2LeftRouter(child: LayoutUnitPage());
      case about_app:
        return Right2LeftRouter(child: AboutAppPage());
      case about_me:
        return Right2LeftRouter(child: AboutMePage());

      case category_show:
      // return Right2LeftRouter(child: CategoryShow(
      //   model: settings.arguments as CategoryModel,
      // ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
