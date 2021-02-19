import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/router/unit_router.dart';
import 'package:flutter_unit/blocs/bloc_exp.dart';
import 'package:flutter_unit/model/category_model.dart';
import 'package:flutter_unit/repositories/itf/category_repository.dart';
import 'package:flutter_unit/views/components/permanent/circle_image.dart';
import 'package:flutter_unit/views/components/permanent/feedback_widget.dart';
import 'package:path_provider/path_provider.dart';

import 'category_page.dart';
import 'like_widget_page.dart';

class CollectPage extends StatefulWidget {
  @override
  _CollectPageState createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage> with AutomaticKeepAliveClientMixin {

  final _tabs = [
    '收藏集录',
    '珍藏组件',
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);

    BuildContext _topContext = context;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: BlocProvider.of<WidgetsBloc>(context).state.color.withAlpha(11),
          child: DefaultTabController(
            length: _tabs.length, // This is the number of tabs.
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: _buildAppBar(_topContext, innerBoxIsScrolled)),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  CategoryPage(),
                  LikeWidgetPage(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildAppBar(BuildContext context, bool index) {
    return SliverAppBar(
      leading: Container(
          margin: EdgeInsets.all(10),
          child: FeedbackWidget(
            onPressed: (){
              Navigator.of(context).pushNamed(UnitRouter.login);
            },
            child: CircleImage(
              image: AssetImage('assets/images/icon_head.webp'),
              borderSize: 1.5,
            ),
          )),
      backgroundColor: BlocProvider.of<WidgetsBloc>(context).state.color,
      actions: <Widget>[_buildSyncAction(context),_buildAddAction(context)],
      title: Text(
        '收藏集 CollectUnit',
        style: TextStyle(
            color: Colors.white, //标题
            fontSize: 18,
            shadows: [
              Shadow(color: Colors.blue, offset: Offset(1, 1), blurRadius: 2)
            ]),
      ),
      pinned: true,
      expandedHeight: 150.0,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax, //视差效果
        background: Image.asset(
          "assets/images/caver.webp",
          fit: BoxFit.cover,
        ),
      ),
      forceElevated: index,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: TabBar(
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 16, shadows: [
            Shadow(
                color: Theme.of(context).primaryColor,
                offset: Offset(1, 1),
                blurRadius: 10)
          ]),
          tabs: _tabs
              .map((String name) => Container(
                  margin: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.center,
                  child: Text(name)))
              .toList(),
        ),
      ),
    );
  }

  Widget _buildAddAction(BuildContext context) => IconButton(
      icon: Icon(
        Icons.add,
        size: 30,
      ),
      onPressed: () => Scaffold.of(context).openEndDrawer());

  Widget _buildSyncAction(BuildContext context) => IconButton(
      icon: Icon(
        Icons.cloud_upload_outlined,
        size: 25,
      ),
      onPressed: () async{
       final dir = await getDownloadsDirectory();
        // CategoryRepository rep = BlocProvider.of<CategoryBloc>(context).repository;
        // List<CategoryModel> loadCategories = await rep.loadCategories();
        // String json1= jsonEncode(loadCategories);
        // print(json1);
      });

  @override
  bool get wantKeepAlive => true;
}
