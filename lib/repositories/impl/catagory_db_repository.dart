import 'package:flutter_unit/model/category_model.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/repositories/itf/category_repository.dart';
import 'package:flutter_unit/storage/app_storage.dart';
import 'package:flutter_unit/storage/dao/category_dao.dart';
import 'package:flutter_unit/storage/po/category_po.dart';
import 'package:flutter_unit/storage/po/widget_po.dart';

/// create by 张风捷特烈 on 2020-04-21
/// contact me by email 1981462002@qq.com
/// 说明:

class CategoryDbRepository implements CategoryRepository {
  final AppStorage storage;

  CategoryDao _collectDao;

  CategoryDbRepository(this.storage) {
    _collectDao = CategoryDao(storage);
  }

  @override
  Future<bool> addCategory(CategoryPo categoryPo) async {
    var success = await _collectDao.insert(categoryPo);
    return success != -1;
  }

  @override
  Future<bool> check(int categoryId, int widgetId) async {
    return await _collectDao.existWidgetInCollect(categoryId, widgetId);
  }

  @override
  Future<void> deleteCategory(int id) async {
    await _collectDao.deleteCollect(id);
  }

  @override
  Future<List<CategoryModel>> loadCategories() async {
    var data = await _collectDao.queryAll();
    var collects = data.map((e) => CategoryPo.fromJson(e)).toList();
    return collects.map(CategoryModel.fromPo).toList();
  }

  @override
  Future<List<WidgetModel>> loadCategoryWidgets({int categoryId = 0}) async {
    var rawData = await _collectDao.loadCollectWidgets(categoryId);
    var widgets = rawData.map((e) => WidgetPo.fromJson(e)).toList();
    return widgets.map(WidgetModel.fromPo).toList();
  }

  @override
  Future<void> toggleCategory(int categoryId, int widgetId) async {
    return await _collectDao.toggleCollect( categoryId,  widgetId);
  }

  @override
  Future<List<int>> getCategoryByWidget(int widgetId) async {
    return await _collectDao.categoryWidgetIds(widgetId);
  }

//
//  @override
//  Future<List<WidgetModel>> loadCollectWidgets({int collectId = 0}) async {
//
//
//
//  }
//
//  @override
//  Future<bool> checkCollected(int collectId, int widgetId) async {
//
//  }
}
