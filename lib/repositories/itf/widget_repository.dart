

import 'package:flutter_unit_mac/app/enums.dart';
import 'package:flutter_unit_mac/storage/dao/widget_dao.dart';
import 'package:flutter_unit_mac/model/node_model.dart';
import 'package:flutter_unit_mac/model/widget_model.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com

abstract class WidgetRepository {

  Future<List<WidgetModel>> loadWidgets(WidgetFamily family);

  Future<List<WidgetModel>> loadWidget(List<int> ids);

  Future<List<WidgetModel>> searchWidgets(SearchArgs args);
  Future<List<NodeModel>> loadNode(WidgetModel widgetModel);

  Future<void> toggleCollect(int id);

  Future<List<WidgetModel>> loadCollectWidgets();

  Future<bool> collected(int id);
}