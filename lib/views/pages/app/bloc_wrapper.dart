import 'package:app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/blocs/bloc_exp.dart';
import 'package:widget_repository/widget_repository.dart';

/// create by 张风捷特烈 on 2020/4/28
/// contact me by email 1981462002@qq.com
/// 说明:

class BlocWrapper extends StatelessWidget {
  final Widget child;

  BlocWrapper({required this.child});

  final WidgetRepository repository = MemoryWidgetRepository();
  final AppStateRepository appStateRepository = AppStateRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(//使用MultiBlocProvider包裹
        providers: [
      //Bloc提供器
      BlocProvider<AppBloc>(
          create: (_) => AppBloc(appStateRepository)..initApp()),
      BlocProvider<WidgetsBloc>(
          create: (_) => WidgetsBloc(repository: repository)
            ..add(EventTabTap(WidgetFamily.statelessWidget))),
      BlocProvider<WidgetDetailBloc>(
          create: (_) => WidgetDetailBloc(repository: repository)),
    ], child: child);
  }
}
