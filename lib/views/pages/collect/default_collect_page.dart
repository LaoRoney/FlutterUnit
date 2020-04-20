import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/router.dart';
import 'package:flutter_unit/blocs/collect/collect_bloc.dart';
import 'package:flutter_unit/blocs/collect/collect_event.dart';
import 'package:flutter_unit/blocs/collect/collect_state.dart';
import 'package:flutter_unit/blocs/detail/detail_bloc.dart';
import 'package:flutter_unit/blocs/detail/detail_event.dart';
import 'package:flutter_unit/blocs/widgets/home_bloc.dart';
import 'package:flutter_unit/components/permanent/circle_image.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/views/items/collect_widget_list_item.dart';

class DefaultCollectPage extends StatelessWidget {
  final gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 1 / 0.5,
  );

  final _tabs = ['默认收藏', '收藏集录'];



  @override
  Widget build(BuildContext context) {
   var _topContext = context;
    return Scaffold(
        backgroundColor:
            BlocProvider.of<HomeBloc>(context).state.homeColor.withAlpha(11),
        body: DefaultTabController(
          length: _tabs.length, // This is the number of tabs.
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                    child: _buildAppBar(_topContext, innerBoxIsScrolled)),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                BlocBuilder<CollectBloc, CollectState>(
                    builder: (_, state) => CustomScrollView(
                          slivers: <Widget>[_buildContent(context, state)],
                        )),
                Container(
                  alignment: Alignment.center,
                  child: Text('开发中...'),
//                  color: Colors.purpleAccent,
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildAppBar(BuildContext context, bool index) {
    return SliverAppBar(
      leading: Container(
          margin: EdgeInsets.all(10),
          child: CircleImage(
            image: AssetImage('assets/images/icon_head.png'),
            borderSize: 1.5,
          )),
      backgroundColor: BlocProvider.of<HomeBloc>(context).state.homeColor,
      actions: <Widget>[_buildAddActionBuilder(context)],
      title: Text(
        '收藏集 CollectUnit',
        style: TextStyle(color: Colors.white, //标题
            shadows: [
              Shadow(color: Colors.blue, offset: Offset(1, 1), blurRadius: 2)
            ]),
      ),
      pinned: true,
      expandedHeight: 180.0,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax, //视差效果
        background: Image.asset(
          "assets/images/caver.jpeg",
          fit: BoxFit.cover,
        ),
      ),
      forceElevated: index,
      bottom: TabBar(
        indicatorColor: Colors.transparent,
        labelColor: Colors.white,
        labelStyle: TextStyle(fontSize: 16, shadows: [
          Shadow(
              color: Theme.of(context).primaryColor,
              offset: Offset(1, 1),
              blurRadius: 10)
        ]),
        tabs: _tabs.map((String name) => Tab(text: name)).toList(),
      ),
    );
  }

  Widget _buildContent(BuildContext context, CollectState state) {
    return SliverPadding(
      padding: EdgeInsets.only(
          top: 180 - kTextTabBarHeight + 20, left: 10, right: 10, bottom: 40),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
              (_, index) => Container(
                    child: GestureDetector(
                        onTap: () =>
                            _toDetailPage(context, state.widgets[index]),
                        child: CollectWidgetListItem(
                          data: state.widgets[index],
                          onDelectItemClick: (model) =>
                              _deleteCollect(context, model),
                        )),
                  ),
              childCount: state.widgets.length),
          gridDelegate: gridDelegate),
    );
  }

  Widget _buildAddActionBuilder(BuildContext context) => IconButton(
      icon: Icon(
        Icons.add,
        size: 30,
      ),
      onPressed: () => Scaffold.of(context).openEndDrawer());

  _deleteCollect(BuildContext context, WidgetModel model) =>
      BlocProvider.of<CollectBloc>(context)
          .add(ToggleCollectEvent(id: model.id));

  _toDetailPage(BuildContext context, WidgetModel model) {
    BlocProvider.of<DetailBloc>(context).add(FetchWidgetDetail(model));
    Navigator.pushNamed(context, Router.widget_detail, arguments: model);
  }
}
