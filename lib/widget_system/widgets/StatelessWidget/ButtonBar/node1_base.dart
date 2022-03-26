/// create by 张风捷特烈 on 2020-03-25
/// contact me by email 1981462002@qq.com
/// 说明:
//    {
//      "widgetId": 29,
//      "priority": 1,
//      "name": "ButtonBar对齐方式",
//      "subtitle": "【alignment】: 对齐方式   【MainAxisAlignment】\n"
//      "【children】: 子组件集   【List<Widget>】",
//    }

import 'package:flutter/material.dart';
import '../../../../components/project/dialogs/dialog_about.dart';


class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            color: Colors.blue,
            child: const Text("Raised"),
            onPressed: () => DialogAbout.show(context)),
        OutlineButton(
            child: const Text("Outline"),
            onPressed: () => DialogAbout.show(context)),
        FlatButton(
          color: Colors.blue,
          onPressed: () => DialogAbout.show(context),
          child: const Text("Flat"),
        )
      ],
    );
  }
}

