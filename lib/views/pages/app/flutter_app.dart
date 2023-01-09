import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/router.dart';

import 'splash/standard_unit_splash.dart';


/// create by 张风捷特烈 on 2020/4/28
/// contact me by email 1981462002@qq.com
/// 说明: 

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (_, state) {
      return MaterialApp(
          title: 'Flutter Unit',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: UnitRouters.generateRoute,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: state.themeColor,
            fontFamily: state.fontFamily,
          ),
          home: StandardUnitSplash());
    });
  }
}
