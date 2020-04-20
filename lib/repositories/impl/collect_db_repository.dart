import 'package:flutter_unit/model/collect_model.dart';
import 'package:flutter_unit/storage/app_storage.dart';
import 'package:flutter_unit/app/enums.dart';
import 'package:flutter_unit/storage/dao/collect_dao.dart';
import 'package:flutter_unit/storage/dao/node_dao.dart';
import 'package:flutter_unit/storage/po/collect_po.dart';
import 'package:flutter_unit/storage/po/widget_po.dart';
import 'package:flutter_unit/storage/dao/widget_dao.dart';
import 'package:flutter_unit/model/node_model.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/repositories/itf/widget_repository.dart';

import '../itf/collect_repository.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com
/// 说明 : Widget数据仓库

class CollectDbRepository implements CollectRepository {
  final AppStorage storage;

  CollectDao _collectDao;

  CollectDbRepository(this.storage) {
    _collectDao = CollectDao(storage);
  }

  @override
  Future<void> toggleCollect(
    int id,
  ) {
    return _collectDao.toggleCollectDefault(id);
  }

  @override
  Future<List<CollectModel>> loadCollects() async {
    var data = await _collectDao.queryAll();
    var collects = data.map((e) => CollectPo.fromJson(e)).toList();
    return collects.map(CollectModel.fromPo).toList();
  }

  @override
  Future<bool> addCollect(CollectPo collectPo) async {
    var success = await _collectDao.insert(collectPo);
    return success != -1;
  }

  @override
  Future<void> deleteCollect(int id) async {
    await _collectDao.deleteCollect(id);
  }

  @override
  Future<List<WidgetModel>> loadCollectWidgets({int collectId = 0}) async {
    var rawData = await _collectDao.loadCollectWidgets(1);
    var widgets = rawData.map((e) => WidgetPo.fromJson(e)).toList();
    return widgets.map(WidgetModel.fromPo).toList();
  }

  @override
  Future<bool> checkCollected(int collectId, int widgetId) async {
    return await _collectDao.existWidgetInCollect(collectId, widgetId);
  }
}
