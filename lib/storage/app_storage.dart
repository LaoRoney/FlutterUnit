import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_unit_mac/app/res/cons.dart';
import 'package:flutter_unit_mac/app/res/sp.dart';
import 'package:flutter_unit_mac/blocs/global/global_state.dart';
import 'package:flutter_unit_mac/storage/po/node_po.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

/// create by 张风捷特烈 on 2020-03-04
/// contact me by email 1981462002@qq.com
/// 说明:

class AppStorage {
  SharedPreferences _sp;
  Database _database;

  static List<NodePo> nodes;

  Future<SharedPreferences> get sp async {
    _sp = _sp ?? await SharedPreferences.getInstance();
    return _sp;
  }

  Future<Database> get db async {
    _database = _database ?? await initDb();
    return _database;
  }

  // 初始化 App 固化的配置数据
  Future<GlobalState> initApp() async {
    var str = await rootBundle.loadString('assets/data/node.json');
    var data = json.decode(str) as List;
    nodes = data.map((e) => NodePo.fromJson(e)).toList();

    var showBg = true;
    var themeIndex = 4;
    var fontIndex = 1;
    var codeIndex = 0;
    var itemStyleIndex = 1;

    return GlobalState(

        showBackGround: showBg,
        themeColor: Cons.themeColorSupport.keys.toList()[themeIndex],
        fontFamily: Cons.fontFamilySupport[fontIndex],
        itemStyleIndex: itemStyleIndex,
        codeStyleIndex: codeIndex);
  }

  // 初始化数据库
  Future<Database> initDb() async {
    var databasesPath = await getDatabasesPath();
    var dbPath = path.join(databasesPath, "flutter.db");
    var exists = await databaseExists(dbPath);
    if (!exists) {
      try {
        await Directory(path.dirname(dbPath)).create(recursive: true);
        print("========= assets ======拷贝完成====");
      } catch (_) {}
      ByteData data = await rootBundle.load(path.join("assets", "flutter.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(dbPath).writeAsBytes(bytes, flush: true);
    } else {
      print("========= 数据库 ======已存在====");
    }
    return await openDatabase(dbPath, readOnly: false);
  }
}
