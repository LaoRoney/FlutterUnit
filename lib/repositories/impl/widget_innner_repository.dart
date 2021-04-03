import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_unit/app/data/flutter_unit_data.dart';
import 'package:flutter_unit/storage/app_storage.dart';
import 'package:flutter_unit/app/enums.dart';
import 'package:flutter_unit/storage/dao/node_dao.dart';

import 'package:flutter_unit/storage/po/widget_po.dart';
import 'package:flutter_unit/storage/dao/widget_dao.dart';
import 'package:flutter_unit/model/node_model.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/repositories/itf/widget_repository.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com
/// 说明 : Widget数据仓库

class WidgetInnerRepository implements WidgetRepository {
  final AppStorage storage;

  WidgetInnerRepository(this.storage);

  @override
  Future<List<WidgetModel>> loadWidgets(WidgetFamily family) async {
    var widgets = widgetData.map((e) => WidgetPo.fromJson(e)).toList();
    var result = widgets
        .map(WidgetModel.fromPo)
        .where((element) => element.family == family)
        .toList();
    result.sort((a, b) => b.lever.compareTo(a.lever));
    return result;
  }

  @override
  Future<List<WidgetModel>> loadCollectWidgets() async {
//    var data = await _widgetDao.queryCollect();
//    var widgets = data.map((e) => WidgetPo.fromJson(e)).toList();
//    var list = widgets.map(WidgetModel.fromPo).toList();
    return [];
  }

  @override
  Future<List<WidgetModel>> searchWidgets(SearchArgs args) async {
    var widgets = widgetData.map((e) => WidgetPo.fromJson(e)).toList();
    var result = widgets
        .map(WidgetModel.fromPo)
        .where((element) => element.name.toLowerCase().contains(args.name.toLowerCase()) || element.nameCN.toLowerCase().contains(args.name.toLowerCase()))
        .where((element) => args.stars.contains(element.lever.round()))
        .toList();
    result.sort((a, b) => b.lever.compareTo(a.lever));
    return result;
  }

  @override
  Future<List<NodeModel>> loadNode(WidgetModel widgetModel) async {
    var nodes = AppStorage.nodes
        .where((element) => element.widgetId == widgetModel.id)
        .map(NodeModel.fromPo).toList();
    nodes.sort((a, b) => a.priority.compareTo(b.priority));
    return nodes;
  }

  @override
  Future<List<WidgetModel>> loadWidget(List<int> id) async {
    var widgetsPool = widgetData.map((e) => WidgetPo.fromJson(e)).toList();
    var data = widgetsPool.where((element) => id.contains(element.id));
    return data.map(WidgetModel.fromPo).toList();
  }

  @override
  Future<void> toggleCollect(
    int id,
  ) async{
    return ;
  }

  @override
  Future<bool> collected(int id) async {
    return true;
  }
}
