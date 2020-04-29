import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'unit_paint.dart';
import 'package:flutter_unit/app/router.dart';

/// create by 张风捷特烈 on 2020-03-07
/// contact me by email 1981462002@qq.com
/// 说明: app 闪屏页

class UnitSplash extends StatefulWidget {
  final double size;

  UnitSplash({this.size = 200});

  @override
  _UnitSplashState createState() => _UnitSplashState();
}

class _UnitSplashState extends State<UnitSplash> with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _secondController;
  double _factor;
  Animation _curveAnim;

  bool _animEnd = false;

  @override
  void initState() {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    _controller =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this)
          ..addListener(() => setState(() {
                return _factor = _curveAnim.value;
              }))
          ..addStatusListener((s) {
            if (s == AnimationStatus.completed) {
              setState(() {
                _animEnd = true;
                _secondController.forward();
              });
            }
          });
    _secondController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this)
          ..addStatusListener((s) {
            if (s == AnimationStatus.completed) {
          Navigator.of(context).pushReplacementNamed(Router.nav);
            }
          });
    _curveAnim =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var winH = MediaQuery.of(context).size.height;
    var winW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          buildLogo(Colors.blue),
          Container(
            width: winW,
            height: winH,
            child: CustomPaint(
              painter: UnitPainter(factor: _factor),
            ),
          ),
          buildText(winH, winW),
          buildHead(),
          buildPower(),
        ],
      ),
    );
  }

  Positioned buildText(double winH, double winW) {
    final shadowStyle = TextStyle(
      fontSize: 45,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.bold,
      shadows: [
        const Shadow(
          color: Colors.grey,
          offset: Offset(1.0, 1.0), blurRadius: 1.0,
        )
      ],
    );

    return Positioned(
      top: winH / 1.55,
      child: Container(
        height: 150,
        width: winW,
        child: AlignTransition(
          alignment:
              AlignmentTween(begin: Alignment(-1, 0), end: Alignment.center)
                  .animate(_secondController),
          child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: _animEnd ? 1.0 : 0.0,
              child: ShaderMask(
                  shaderCallback: _buildShader,
                  child: Text(
                    'Flutter Unit',
                    style: shadowStyle,
                  ))),
        ),
      ),
    );
  }

  final colors = [Colors.red, Colors.yellow, Colors.blue];

  Shader _buildShader(Rect bounds) => RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          tileMode: TileMode.mirror,
          colors: colors)
      .createShader(bounds);

  Widget buildLogo(Color primaryColor) {
    return SlideTransition(
      position: Tween<Offset>(
        begin:const Offset(0, 0),
        end:const Offset(0, -1.5),
      ).animate(_controller),
      child: RotationTransition(
          turns: _controller,
          child: ScaleTransition(
            scale: Tween(begin: 2.0, end: 1.0).animate(_controller),
            child: FadeTransition(
                opacity: _controller,
                child: Container(
                  height:120,
                  child: FlutterLogo(
                    colors: primaryColor,
                    style: _animEnd
                        ? FlutterLogoStyle.horizontal
                        : FlutterLogoStyle.markOnly,
                    size: _animEnd ? 150 : 45,
                  ),
                )),
          )),
    );
  }

  Widget buildHead() => SlideTransition(
        position: Tween<Offset>(
          end:const Offset(0, 0),
          begin:const Offset(0, -5),
        ).animate(_controller),
        child: Container(
          height: 45,
          width: 45,
          child: Image.asset('assets/images/icon_head.png'),
        ));

  Widget buildPower() => Positioned(
      bottom: 30,
      right: 30,
      child: AnimatedOpacity(
          duration:const Duration(milliseconds: 300),
          opacity: _animEnd ? 1.0 : 0.0,
          child:const Text("Power By 张风捷特烈",
              style: TextStyle(
                  color: Colors.grey,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 1,
                        offset: Offset(0.3, 0.3))
                  ],
                  fontSize: 16))),
    );
}
