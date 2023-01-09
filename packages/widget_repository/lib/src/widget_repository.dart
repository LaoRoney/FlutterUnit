import 'model/enums.dart';
import 'model/model.dart';
import 'model/widget_filter.dart';

/// create by 张风捷特烈 on 2020-03-03
/// contact me by email 1981462002@qq.com

abstract class WidgetRepository {

  Future<List<WidgetModel>> loadWidgets(WidgetFamily family);

  Future<List<WidgetModel>> loadWidget(List<int> ids);

  Future<List<WidgetModel>> searchWidgets(WidgetFilter args);
  Future<List<NodeModel>> loadNode(WidgetModel widgetModel);

  Future<void> toggleCollect(int id);

  Future<List<WidgetModel>> loadCollectWidgets();

  Future<bool> collected(int id);
}