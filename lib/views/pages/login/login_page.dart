import 'package:flutter/material.dart';
import 'package:flutter_unit/views/pages/register/arc_clipper.dart';
import 'login_form.dart';

/// create by 张风捷特烈 on 2020/4/24
/// contact me by email 1981462002@qq.com
/// 说明:

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size winSize = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Wrap(children: [
        UnitArcBackground(height: winSize.height * 0.32),
        Container(
            // color: Colors.green,
            height: winSize.height * 0.68,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                LoginFrom(),
              ],
            ))
      ]),
    ));
  }
}
