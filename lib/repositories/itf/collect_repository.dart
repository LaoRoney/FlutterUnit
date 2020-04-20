import 'package:flutter_unit/model/collect_model.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/storage/po/collect_po.dart';

/// create by 张风捷特烈 on 2020-04-20
/// contact me by email 1981462002@qq.com
/// 说明: 

abstract class CollectRepository {

//  Future<List<WidgetModel>> loadWidgets(WidgetFamily family);
//
//  Future<List<WidgetModel>> loadWidget(List<int> ids);
//
//
//  Future<List<WidgetModel>> searchWidgets(SearchArgs args);
//  Future<List<NodeModel>> loadNode(WidgetModel widgetModel);
//
  Future<void> toggleCollect(int id);

  Future<bool> checkCollected(int collectId,int widgetId);

  Future<List<WidgetModel>> loadCollectWidgets({int collectId = 0});


  Future<List<CollectModel>> loadCollects();

  Future<bool> addCollect(CollectPo collectPo);

  Future<void> deleteCollect(int id);

}