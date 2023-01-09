import 'package:app_config/model/global_state.dart';
import 'package:app_config/model/app_style.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/cons/cons.dart';
import '../app/cons/sp.dart';

class AppStateRepository{
  late SharedPreferences prefs;

  Future<AppState> initApp() async{
    prefs = await SharedPreferences.getInstance();

    bool showBg = prefs.getBool(SpKey.showBackground) ?? true;
    bool showTool = prefs.getBool(SpKey.showTool) ?? true;
    int themeIndex = prefs.getInt(SpKey.themeColorIndex) ?? 4;
    int fontIndex = prefs.getInt(SpKey.fontFamily) ?? 1;
    int codeIndex = prefs.getInt(SpKey.codeStyleIndex) ?? 0;
    int itemStyleIndex = prefs.getInt(SpKey.itemStyleIndex) ?? 0;
    int appStyleIndex = prefs.getInt(SpKey.appStyleIndex) ?? 0;

    return AppState(
        showBackGround: showBg,
        themeColor: Cons.kThemeColorSupport.keys.toList()[themeIndex],
        fontFamily: Cons.kFontFamilySupport[fontIndex],
        itemStyleIndex: itemStyleIndex,
        appStyle: Cons.kAppStyleStringMap.keys.toList()[appStyleIndex],
        showOverlayTool: showTool,
        codeStyleIndex: codeIndex);
  }

  Future<void> saveFontFamily(String family) async {
    int familyIndex = Cons.kFontFamilySupport.indexOf(family);
    await prefs.setInt(SpKey.fontFamily, familyIndex);
  }

  Future<void> saveThemeColor(MaterialColor color) async {
    int themeIndex = Cons.kThemeColorSupport.keys.toList().indexOf(color);
    await prefs.setInt(SpKey.themeColorIndex, themeIndex);
  }

  Future<void> saveShowBg(bool show) async {
    await prefs.setBool(SpKey.showBackground, show);
  }

  Future<void> saveCoderTheme(int index) async {
    await prefs.setInt(SpKey.codeStyleIndex, index);
  }

  Future<void> saveItemStyle(int index) async {
    await prefs.setInt(SpKey.itemStyleIndex, index);
  }

  Future<void> saveChangeAppStyle(AppStyle style) async {
    await prefs.setInt(SpKey.appStyleIndex, style.index);
  }

  Future<void> saveShowTool(bool show) async {
    await prefs.setBool(SpKey.showTool, show);
  }
}