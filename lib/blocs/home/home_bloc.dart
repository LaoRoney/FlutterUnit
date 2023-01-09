import 'dart:async';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget_repository/widget_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com
/// 说明:

class WidgetsBloc extends Bloc<HomeEvent, WidgetsState> {
  final WidgetRepository repository;

  WidgetsBloc({required this.repository}) : super(const WidgetsLoading()){
    on<EventTabTap>(_onLoadWidget);
  }

  @override
  Stream<WidgetsState> mapEventToState(HomeEvent event) async* {
    if (event is EventTabTap) {
      yield* _mapLoadWidgetToState(event.family);
    }
  }

  Stream<WidgetsState> _mapLoadWidgetToState(WidgetFamily family) async* {

  }

  FutureOr<void> _onLoadWidget(EventTabTap event, Emitter<WidgetsState> emit) async{
    try {
      final widgets = await this.repository.loadWidgets(event.family);
      emit( WidgetsLoaded(widgets: widgets));
    } catch (err) {
      print(err);
      emit( WidgetsLoadFailed(error: err.toString()));
    }
  }
}
