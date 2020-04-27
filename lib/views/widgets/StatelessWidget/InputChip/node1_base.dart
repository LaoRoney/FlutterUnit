import 'package:flutter/material.dart';
import 'package:flutter_unit/views/dialogs/dialog_about.dart';

/// create by 张风捷特烈 on 2020/4/27
/// contact me by email 1981462002@qq.com
/// 说明:
//      {
//      "widgetId": 14,
//      "priority": 1,
//      "name": "可以接受点击、删除事件",
//      "subtitle": "【onPressed】: 点击事件   【Function()】\n"
//          "【onDeleted】: 删除事件   【Function()】",
//      }

class PressInputChip extends StatefulWidget {
  @override
  _PressInputChipState createState() => _PressInputChipState();
}

class _PressInputChipState extends State<PressInputChip> {
  bool _delete = false;

  @override
  Widget build(BuildContext context) {
    return InputChip(
        padding: EdgeInsets.all(5),
        labelPadding: EdgeInsets.all(3),
        label: Text(
            !_delete ?
            "This is a InputChip." :
            "You are clicked delete icon."),
        backgroundColor: Colors.grey.withAlpha(66),
        avatar: Image.asset("assets/images/icon_head.png"),
        selectedColor: Colors.orangeAccent.withAlpha(88),
        selectedShadowColor: Colors.blue,
        shadowColor: Colors.orangeAccent,
        elevation: 3,
        onPressed: () => DialogAbout.show(context),
        onDeleted: () => setState(() => _delete = !_delete));
  }
}