
import 'dart:convert';

import 'package:flutter/services.dart';

import '../../widget_repository.dart';
import '../memory_data/flutter_unit_data.dart';
import '../model/enums.dart';
import '../model/po/node_po.dart';
import '../model/po/widget_po.dart';
import '../model/widget_filter.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com
/// 说明 : Widget数据仓库

class MemoryWidgetRepository implements WidgetRepository {


  MemoryWidgetRepository();

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
  Future<List<WidgetModel>> searchWidgets(WidgetFilter args) async {
    print(args);
    var widgets = widgetData.map((e) => WidgetPo.fromJson(e)).toList();
    var result = widgets
        .map(WidgetModel.fromPo)
        .where((element) => element.name.toLowerCase().contains(args.name.toLowerCase()) || element.nameCN.toLowerCase().contains(args.name.toLowerCase()))
        .toList();
    result.sort((a, b) => b.lever.compareTo(a.lever));
    return result;
  }

  @override
  Future<List<NodeModel>> loadNode(WidgetModel widgetModel) async {
    var str = await rootBundle.loadString('assets/data/node.json');
    var data = json.decode(str) as List;
    List<NodeModel> nodes = data.map((e) => NodePo.fromJson(e)).toList()
        .where((element) => element.widgetId == widgetModel.id)
        .map<NodeModel>(NodeModel.fromPo).toList();
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
