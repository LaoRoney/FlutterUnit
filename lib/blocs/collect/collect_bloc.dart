import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/repositories/itf/collect_repository.dart';
import 'package:flutter_unit/storage/dao/widget_dao.dart';
import 'package:flutter_unit/repositories/itf/widget_repository.dart';
import 'package:flutter_unit/storage/po/collect_po.dart';

import 'collect_event.dart';
import 'collect_state.dart';

/// create by 张风捷特烈 on 2020-04-07
/// contact me by email 1981462002@qq.com
/// 说明:

class CollectBloc extends Bloc<CollectEvent, CollectState> {
  final CollectRepository repository;

  CollectBloc({@required this.repository});

  @override
  CollectState get initialState => LoadCollectSuccess(collects: []); //初始状态

  @override
  Stream<CollectState> mapEventToState(
    CollectEvent event,
  ) async* {
    if (event is ToggleCollectEvent) {
      await repository.toggleCollect(event.id);
      var collected= await repository.checkCollected(1, event.id);
      yield ToggleCollectSuccess(collected);
    }
    if (event is CheckCollectEvent) {
      var collected = await repository.checkCollected(1, event.id);
      yield CheckCollectSuccess(collected);
    }

    if (event is EventSetCollectData) {
      await repository.loadCollectWidgets();
//      final widgets = await repository.loadCollectWidgets();
      final collect = await repository.loadCollects();
//      print(collect);
      yield LoadCollectSuccess(collects: collect);
    }
    if (event is EventAddCollect) {
      var collectPo = CollectPo(
          name: event.name,
          color: event.color ?? '#FF2196F3',
          info: event.info ?? '这里什么都没有...',
          created: DateTime.now(),
          updated: DateTime.now());

      final success = await repository.addCollect(collectPo);

      if (success) {
        yield AddCollectSuccess();
        final collect = await repository.loadCollects();
        yield LoadCollectSuccess(collects: collect);
      }
    }
    if (event is EventDeleteCollect) {
      await repository.deleteCollect(event.id);
      final collect = await repository.loadCollects();
      yield LoadCollectSuccess(collects: collect);
    }
  }
}
