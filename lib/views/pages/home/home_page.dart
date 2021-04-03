import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/convert.dart';
import 'package:flutter_unit/app/res/cons.dart';
import 'package:flutter_unit/app/router.dart';
import 'package:flutter_unit/blocs/bloc_exp.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/views/components/permanent/feedback_widget.dart';
import 'package:flutter_unit/views/components/project/default/empty_page.dart';
import 'package:flutter_unit/views/components/project/items/home_item_support.dart';
import 'package:flutter_unit/views/pages/home/toly_app_bar.dart';

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
    return Scaffold(
      appBar: TolyAppBar(
        selectIndex: Cons.tabColors.indexOf(color.value),
        preferredSize: Size.fromHeight(_height),
        onItemClick: _switchTab,
      ),
      body: Stack(
        children: <Widget>[
          BlocBuilder<GlobalBloc, GlobalState>(builder: (_, state) {
            if (state.showBackGround) {
              return Background();
            }
            return Container();
          }),
          BlocBuilder<HomeBloc, HomeState>(builder: _buildContent)
        ],
      ),
    );
  }

  final gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 10,
    crossAxisSpacing: 20,
    childAspectRatio: 4,
  );

  Widget _buildContent(BuildContext context, HomeState state) {
    if (state is WidgetsLoaded) {
      var items = state.widgets;
      if (items.isEmpty) return EmptyPage();
      return GridView.builder(
        controller: _ctrl,
        padding: EdgeInsets.all(20),
        itemCount: items.length,
        itemBuilder: (_, index) => _buildHomeItem(items[index]),
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
      BlocBuilder<GlobalBloc, GlobalState>(
        condition: (p, c) => (p.itemStyleIndex != c.itemStyleIndex),
        builder: (_, state) {
          return
            FeedbackWidget(
            duration: const Duration(milliseconds: 200),
            onPressed: () => _toDetailPage(model),
            child: HomeItemSupport.get(model, state.itemStyleIndex));
        },
      );

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
    Navigator.pushNamed(context, UnitRouter.widget_detail, arguments: model);
  }
}
