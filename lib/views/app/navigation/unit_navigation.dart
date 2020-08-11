import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/res/cons.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/app/style/TolyIcon.dart';
import 'package:flutter_unit_mac/blocs/bloc_exp.dart';
import 'package:flutter_unit_mac/components/permanent/circle_image.dart';
import 'package:flutter_unit_mac/components/permanent/feedback_widget.dart';
import 'package:flutter_unit_mac/views/app/navigation/unit_bottom_bar.dart';
import 'package:flutter_unit_mac/views/pages/category/collect_page.dart';
import 'package:flutter_unit_mac/views/pages/category/home_right_drawer.dart';
import 'package:flutter_unit_mac/views/pages/home/home_drawer.dart';
import 'package:flutter_unit_mac/views/pages/home/home_page.dart';
import 'package:flutter_unit_mac/views/pages/unit_todo/bug_unit_page.dart';
import 'package:flutter_unit_mac/views/pages/unit_todo/layout_unit_page.dart';
import 'package:flutter_unit_mac/views/pages/unit_todo/paint_unit_page.dart';
import 'package:url_launcher/url_launcher.dart';

class UnitNavigation extends StatefulWidget {
  @override
  _UnitNavigationState createState() => _UnitNavigationState();
}

class _UnitNavigationState extends State<UnitNavigation> {
  PageController _controller; //页面控制器，初始0

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose(); //释放控制器
    super.dispose();
  }
  final tempText =  Text('这里是一片未知的领域\n等待着勇者的探寻...',style: TextStyle(fontSize: 24,color: Colors.white),);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (_, state) => Scaffold(
              drawer: HomeDrawer(color: state.homeColor),
              //左滑页
              endDrawer: HomeRightDrawer(
                color: state.homeColor,
              ),
              //右滑页
              floatingActionButton: _buildSearchButton(state.homeColor),
              body: Row(
                children: [
                  _buildLeftNav(),
                  Expanded(
                    child: Container(
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        //使用PageView实现页面的切换
                        controller: _controller,
                        children: <Widget>[
                          HomePage(),
                          Container(color: Colors.red,alignment: Alignment.center,child:tempText,),
                          Container(color: Colors.blue,alignment: Alignment.center,child: tempText),
                          Container(color: Colors.purpleAccent,alignment: Alignment.center,child: tempText),
                          Container(color: Colors.green,alignment: Alignment.center,child: tempText),

//                          CollectPage(),
//                          PaintUnitPage(),
//                          LayoutUnitPage(),
//                          BugUnitPage(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  Widget _buildSearchButton(Color color) {
    return FloatingActionButton(
      elevation: 2,
      backgroundColor: color,
      child: const Icon(Icons.search),
      onPressed: () => Navigator.of(context).pushNamed(Router.search),
    );
  }

  _onTapNav(int index) {
    _controller.jumpToPage(index);
    if (index == 1) {
      BlocProvider.of<CollectBloc>(context).add(EventSetCollectData());
    }
  }

  Widget _buildLeftNav() {
    return Container(
      padding: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(right: 1),
      width: 120,
      decoration: BoxDecoration(color: Color(0xff2C3036), boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(1, 0), blurRadius: 2)
      ]),
      child: Column(
        children: [
          Wrap(
            direction: Axis.vertical,
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              CircleImage(
                image: AssetImage('assets/images/icon_head.png'),
                size: 60,
              ),
              Text(
                '张风捷特烈',
                style: TextStyle(color: Colors.white70),
              )
            ],
          ),
          buildIcons(),
          Divider(
            color: Colors.white,
            height: 1,
            endIndent: 20,
          ),
//          SizedBox(height: 60,),
          Expanded(
            flex: 5,
            child: Center(
              child: RightNavBar(
                itemData: Cons.ICONS_MAP,
                onItemClick: _onTapNav,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),

          Expanded(
            child: Container(),
            flex: 1,
          ),
          Divider(
            indent: 20,
            color: Colors.white,
            height: 1,
          ),
          Builder(
            builder: (ctx) => FeedbackWidget(
              onPressed: () => Scaffold.of(ctx).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 20),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIcons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Wrap(
        spacing: 5,
        children: [
          FeedbackWidget(
            onPressed: () => _launchURL("http://blog.toly1994.com"),
            child: Icon(
              TolyIcon.icon_item,
              color: Colors.white,
            ),
          ),
          FeedbackWidget(
            onPressed: () =>
                _launchURL("https://github.com/toly1994328/FlutterUnit"),
            child: Icon(
              TolyIcon.icon_github,
              color: Colors.white,
            ),
          ),
          FeedbackWidget(
            onPressed: () =>
                _launchURL("https://juejin.im/user/5b42c0656fb9a04fe727eb37"),
            child: Icon(
              TolyIcon.icon_juejin,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      debugPrint('Could not launch $url');
    }
  }
}

class RightNavBar extends StatefulWidget {
  final Color color;
  final Map<String, IconData> itemData;
  final Function(int) onItemClick;
  final Size itemSize;

  RightNavBar(
      {this.color = Colors.blue,
      this.itemData,
      this.onItemClick,
      this.itemSize = const Size(120, 35)});

  @override
  _RightNavBarState createState() => _RightNavBarState();
}

class _RightNavBarState extends State<RightNavBar> {
  int _position = 0;

  List<String> get info => widget.itemData.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: info
          .map((e) => _buildChild(context, info.indexOf(e), widget.color))
          .toList(),
    );
  }

  Widget _buildChild(BuildContext context, int i, Color color) {
    var active = i == _position;

    return GestureDetector(
        onTap: () => _tapTab(i),
        child: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 10),
          width: widget.itemSize.width,
          child: UnconstrainedBox(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: active ? widget.color : Colors.white.withAlpha(33),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              width:
                  active ? widget.itemSize.width*0.95 : widget.itemSize.width * 0.85,
              height: widget.itemSize.height,
              child: Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    widget.itemData[info[i]],
                    size: active ? 24 : 20,
                    color: active ? Colors.white:Colors.white70,
                  ),
                  Text(
                    info[i],
                    style: TextStyle(
                      color: active ? Colors.white:Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  _tapTab(int i) {
    setState(() {
      _position = i;
      if (widget.onItemClick != null) {
        widget.onItemClick(_position);
      }
    });
  }
}
