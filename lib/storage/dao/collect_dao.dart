import '../app_storage.dart';
import '../po/collect_po.dart';

//  static const String sql_create_collect = """
// CREATE TABLE IF NOT EXISTS collect(
//     id INTEGER PRIMARY KEY AUTOINCREMENT,
//     name VARCHAR(64) NOT NULL,
//     color VARCHAR(9) DEFAULT '#FF2196F3',
//     info VARCHAR(256) DEFAULT '这里什么都没有...',
//     created DATETIME NOT NULL,
//     updated DATETIME NOT NULL,
//     priority INTEGER DEFAULT 0,
//     image VARCHAR(128) NULL image DEFAULT ''
//     );""";

class CollectDao {
  final AppStorage storage;

  CollectDao(this.storage);

  Future<int> insert(CollectPo widget) async {
    var exist = await existByName(widget.name);
    if (exist) return -1; //已存在返回 -1
    //插入方法
    final db = await storage.db;
    String addSql = //插入数据
        "INSERT INTO "
        "collect(name,color,info,priority,image,created,updated) "
        "VALUES (?,?,?,?,?,?,?);";
    return await db.transaction((tran) async => await tran.rawInsert(addSql, [
          widget.name,
          widget.color,
          widget.info,
          widget.priority,
          widget.image,
          widget.created.toIso8601String(),
          widget.updated.toIso8601String(),
        ]));
  }

  Future<bool> existByName(String name) async {
    final db = await storage.db;
    String sql = //插入数据
        "SELECT COUNT(name) as count FROM collect "
        "WHERE name = ?";
    var rawData = await db.rawQuery(sql, [name]);
    if (rawData.length > 0) {
      return rawData[0]['count'] > 0;
    }
    return false;
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    //插入方法
    final db = await storage.db;
    return await db.rawQuery("SELECT * "
        "FROM collect ORDER BY priority DESC,created DESC");
  }

  Future<void> deleteCollect(int id) async {
    //插入方法
    final db = await storage.db;
    return await db.execute(
        "DELETE FROM collect "
        "WHERE id = ?",
        [id]);
  }

  Future<int> addWidget(int collectId, int widgetId) async {
    //插入方法
    final db = await storage.db;
    String addSql = //插入数据
        "INSERT INTO "
        "collect_widget(widgetId,collectId) "
        "VALUES (?,?);";
    return await db.transaction((tran) async => await tran.rawInsert(addSql, [
          widgetId,
          collectId,
        ]));
  }

  Future<int> removeWidget(int collectId, int widgetId) async {
    //插入方法
    final db = await storage.db;
    String deleteSql = //插入数据
        "DELETE FROM "
        "collect_widget WHERE collectId = ? AND widgetId = ? ";
    return await db
        .transaction((tran) async => await tran.rawInsert(deleteSql, [
              collectId,
              widgetId,
            ]));
  }

  Future<bool> existWidgetInCollect(int collectId, int widgetId) async {
    final db = await storage.db;
    String sql = //插入数据
        "SELECT COUNT(id) as count FROM collect_widget "
        "WHERE collectId = ? AND widgetId = ?";
    var rawData = await db.rawQuery(sql, [collectId, widgetId]);
    if (rawData.length > 0) {
      return rawData[0]['count'] > 0;
    }
    return false;
  }

  Future<void> toggleCollect(int collectId, int widgetId) async {
    if (await existWidgetInCollect(collectId, widgetId)) {
      //已存在: 移除
      await removeWidget(collectId, widgetId);
    } else {
      await addWidget(collectId, widgetId);
    }
  }

  Future<void> toggleCollectDefault(int widgetId) async {
    await toggleCollect(1, widgetId);
  }

  Future<List<Map<String, dynamic>>> loadCollectWidgets(int collectId) async{
    String querySql = //插入数据
        "SELECT * FROM widget "
        "WHERE id IN (SELECT widgetId FROM collect_widget WHERE collectId = ?)";

    final db = await storage.db;
    return await db.rawQuery(querySql,[collectId]);

  }
}
