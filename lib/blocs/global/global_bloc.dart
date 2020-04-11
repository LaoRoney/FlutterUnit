import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/res/cons.dart';
import 'package:flutter_unit/app/res/sp.dart';
import 'package:flutter_unit/app/utils/color_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global_event.dart';
import 'global_state.dart';

/// create by 张风捷特烈 on 2020-03-22
/// contact me by email 1981462002@qq.com
/// 说明: 全局信息的bloc

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  @override
  GlobalState get initialState => GlobalState();

  SharedPreferences _sp;

  Future<SharedPreferences> get sp async {
    _sp = _sp ?? await SharedPreferences.getInstance();
    return _sp;
  }

  @override
  Stream<GlobalState> mapEventToState(GlobalEvent event) async* {
    if (event is EventInitApp) {
      yield* _initGlobalState();
    }
    if (event is EventSwitchHomeColor) {
      yield state.copyWith(color: event.color);
    }
    if (event is UpdateAppBarHeight) {
      yield state.copyWith(height: event.height);
    }

    if (event is EventSwitchFontFamily) {
      var familyIndex = Cons.fontFamilySupport.indexOf(event.family);
      await sp
        ..setInt(SP.fontFamily, familyIndex); //固化数据
      yield state.copyWith(fontFamily: event.family);
    }

    if (event is EventSwitchThemeColor) {
      var themeIndex =
          Cons.themeColorSupport.keys.toList().indexOf(event.color);
      await sp
        ..setInt(SP.themeColorIndex, themeIndex); //固化数据
      yield state.copyWith(themeColor: event.color);
    }

    if (event is EventSwitchShowBg) {
      await sp
        ..setBool(SP.showBackground, event.show); //固化数据
      yield state.copyWith(showBackGround: event.show);
    }

    if (event is EventSwitchCoderTheme) {
      await sp..setInt(SP.themeColorIndex, event.codeStyleIndex); //固化数据
      yield state.copyWith(codeStyleIndex: event.codeStyleIndex);
    }
    if (event is EventChangeItemStyle) {
      await sp..setInt(SP.itemStyleIndex, event.index); //固化数据
      yield state.copyWith(itemStyleIndex: event.index);
    }
  }

  // 初始化 App 固化的配置数据
  Stream<GlobalState> _initGlobalState() async* {
    var prefs = await sp;
    var showBg = prefs.getBool(SP.showBackground) ?? true;
    var themeIndex = prefs.getInt(SP.themeColorIndex) ?? 4;
    var fontIndex = prefs.getInt(SP.fontFamily) ?? 1;
    var codeIndex = prefs.getInt(SP.codeStyleIndex) ?? 0;
    var itemStyleIndex = prefs.getInt(SP.itemStyleIndex) ?? 0;

    yield GlobalState(
        showBackGround: showBg,
        themeColor: Cons.themeColorSupport.keys.toList()[themeIndex],
        fontFamily: Cons.fontFamilySupport[fontIndex],
        height: kToolbarHeight * 2 - 20,
        color: Color(Cons.tabColors[0]),
        itemStyleIndex: itemStyleIndex,
        codeStyleIndex: codeIndex);
  }
}
