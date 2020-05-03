import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/convert.dart';
import 'package:flutter_unit_mac/app/res/cons.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/blocs/bloc_exp.dart';
import 'package:flutter_unit_mac/components/permanent/feedback_widget.dart';
import 'package:flutter_unit_mac/model/widget_model.dart';
import 'package:flutter_unit_mac/views/common/empty_page.dart';
import 'package:flutter_unit_mac/views/items/home_item_support.dart';
import 'package:flutter_unit_mac/views/pages/home/toly_app_bar.dart';

import 'background.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _ctrl;
  double _limitY = 35;
  double _height = kToolbarHeight * 2 - 20;

  @override
  void initState() {
    _ctrl = ScrollController()..addListener(_updateAppBarHeight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var color = BlocProvider.of<HomeBloc>(context).state.homeColor;
    var showBg = BlocProvider.of<GlobalBloc>(context).state.showBackGround;
    return Scaffold(
      appBar: TolyAppBar(
        selectIndex: Cons.tabColors.indexOf(color.value),
        preferredSize: Size.fromHeight(_height),
        onItemClick: _switchTab,
      ),
      body: Stack(
        children: <Widget>[
          if (showBg) Background(),
          BlocBuilder<HomeBloc, HomeState>(builder: _buildContent)
        ],
      ),
    );
  }
  final gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 3.5,
  );
  Widget _buildContent(BuildContext context, HomeState state) {
    if (state is WidgetsLoaded) {
      var items = state.widgets;
      print(items.length);
      if (items.isEmpty) return EmptyPage();
      return GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (_, index) =>_buildHomeItem(items[index]),
        gridDelegate: gridDelegate,
      );
    }
    if (state is WidgetsLoadFailed) {
      return Container(
        child: Text('加载数据异常'),
      );
    }
    return Container();
  }

  Widget _buildHomeItem(
    WidgetModel model,
  ) =>
      FeedbackWidget(
          duration: const Duration(milliseconds: 200),
          onPressed: () => _toDetailPage(model),
          child: HomeItemSupport.get(model,
              BlocProvider.of<GlobalBloc>(context).state.itemStyleIndex));

  _updateAppBarHeight() {
    if (_ctrl.offset < _limitY * 4) {
      setState(() {
        _height = kToolbarHeight * 2 - 20 - _ctrl.offset / 4;
      });
    }
  }

  _switchTab(int index, Color color) {
    if (_ctrl.hasClients) _ctrl.jumpTo(0);
    BlocProvider.of<HomeBloc>(context)
        .add(EventTabTap(Convert.toFamily(index)));
  }

  _toDetailPage(WidgetModel model) async {
    BlocProvider.of<DetailBloc>(context).add(FetchWidgetDetail(model));
    Navigator.pushNamed(context, Router.widget_detail, arguments: model);
  }
}
