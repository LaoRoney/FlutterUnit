

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_bloc.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_event.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_state.dart';
import 'package:flutter_unit_mac/blocs/detail/detail_bloc.dart';
import 'package:flutter_unit_mac/blocs/detail/detail_event.dart';
import 'package:flutter_unit_mac/components/permanent/animated_text.dart';
import 'package:flutter_unit_mac/components/permanent/circle_image.dart';
import 'package:flutter_unit_mac/model/widget_model.dart';
import 'package:flutter_unit_mac/views/items/collect_widget_list_item.dart';
import 'package:flutter_unit_mac/views/items/techno_widget_list_item.dart';

import '../../common/empty_page.dart';

class PaintUnitPage extends StatelessWidget {
  final info = '【Flutter绘制集录】是Unit项目计划的第二阶段的功能之一。'
      '将收录大量绘制作品，展现Flutter强大的绘制表现力,'
      '以供学习绘制技能。本集录将支持绘制征集，愿开发者共同集录。';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('绘制集录'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 50,
            child: Column(
              children: <Widget>[
                CircleImage(
                  image: AssetImage('assets/images/icon_head.png'),
                  size: 80,
                ),
                SizedBox(height: 10,),
                Text(
                  'Flutter Unit 2.0 计划',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: ShaderMask(
              shaderCallback: (rect) =>
                  _buildShader(rect, Theme.of(context).primaryColor),
              child: AnimatedText(
                info,
                0,
                durationInMilliseconds: 10000,
                textStyle: TextStyle(
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(1, 1),
                        blurRadius: 1)
                  ],
                  color: Colors.white,
//              color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          buildPlan(),
          buildPower()
        ],
      ),
    );
  }

  Shader _buildShader(Rect bounds, Color color) => RadialGradient(
      center: Alignment.topLeft,
      radius: 1.0,
      tileMode: TileMode.mirror,
      colors: [color.withAlpha(88), color.withAlpha(136), color])
      .createShader(bounds);

  Widget buildPlan() {
    return Positioned(
      bottom: 80,
      child:
      Text("Flutter Unit 绘制征集方案(待完成)",
          style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              shadows: [
                Shadow(
                    color: Colors.black,
                    blurRadius: .5,
                    offset: Offset(0.3, 0.3))
              ],
              fontSize: 16)),
    );
  }

  Widget buildPower() {
    return Positioned(
      bottom: 30,
      right: 30,
      child:
      Text("Power By 张风捷特烈",
          style: TextStyle(
              color: Colors.grey,
              shadows: [
                Shadow(
                    color: Colors.black,
                    blurRadius: 1,
                    offset: Offset(0.3, 0.3))
              ],
              fontSize: 16)),
    );
  }
}