import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_star/flutter_star.dart';
import 'package:flutter_unit_mac/app/res/cons.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/app/style/TolyIcon.dart';
import 'package:flutter_unit_mac/app/utils/Toast.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_bloc.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_event.dart';
import 'package:flutter_unit_mac/blocs/collect/collect_state.dart';
import 'package:flutter_unit_mac/blocs/detail/detail_bloc.dart';
import 'package:flutter_unit_mac/blocs/detail/detail_event.dart';
import 'package:flutter_unit_mac/blocs/detail/detail_state.dart';
import 'package:flutter_unit_mac/blocs/global/global_bloc.dart';
import 'package:flutter_unit_mac/components/permanent/feedback_widget.dart';
import 'package:flutter_unit_mac/components/permanent/panel.dart';
import 'package:flutter_unit_mac/components/project/widget_node_panel.dart';
import 'package:flutter_unit_mac/model/node_model.dart';
import 'package:flutter_unit_mac/model/widget_model.dart';
import 'package:flutter_unit_mac/views/pages/detail/category_end_drawer.dart';
import 'package:flutter_unit_mac/views/widgets/widgets_map.dart';

class WidgetDetailPage extends StatefulWidget {
  final WidgetModel model;

  WidgetDetailPage({this.model});

  @override
  _WidgetDetailPageState createState() => _WidgetDetailPageState();
}

class _WidgetDetailPageState extends State<WidgetDetailPage> {
  List<WidgetModel> _models = [];
  bool openBottom = false;

  @override
  void initState() {
    _models.add(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build---_WidgetDetailPageState---');
    return WillPopScope(
      onWillPop: () async {
        _models.removeLast();
        if (_models.length > 0) {
          setState(() {
            BlocProvider.of<DetailBloc>(context)
                .add(FetchWidgetDetail(_models.last));
          });
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        endDrawer: CategoryEndDrawer(widget: _models.last,),
          appBar: AppBar(
            title: Text(_models.last.name),
            actions: <Widget>[
              Builder(builder: (ctx)=>GestureDetector(
                  onLongPress: (){
                    Scaffold.of(ctx).openEndDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home),
                  ),
                  onTap: () {
                    Navigator.of(ctx).pop();
                  })),
              _buildCollectButton(_models.last, context),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: WidgetDetailTitle(
                          model: _models.last,
                        ),
                      ),
                      Expanded(
                        child:  Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: BlocBuilder<DetailBloc, DetailState>(builder: (_, state) {
                            print('build---${state.runtimeType}---');
                            if (state is DetailWithData) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 15, right: 5),
                                        child: Icon(
                                          Icons.link,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      Text(
                                        '相关组件',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  _buildLinkTo(
                                    context,
                                    state.links,
                                  ),
                                ],
                              );
                            }
                            return Container();
                          }),
                        ),
                      )
                    ],
                  ),
                  BlocBuilder<DetailBloc, DetailState>(builder: (_, state) {
                    print('build---${state.runtimeType}---');
                    if (state is DetailWithData) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Divider(),
                          _buildNodes(state.nodes, state.widgetModel.name)
                        ],
                      );
                    }
                    return Container();
                  })
                ],
              ),
            ),
          )),
    );
  }

  Widget _buildCollectButton(WidgetModel model, BuildContext context) {
    //监听 CollectBloc 伺机弹出toast
    return BlocListener<CollectBloc, CollectState>(
        listener: (ctx, st) {
          bool collected = st.widgets.contains(model);
          var msg =
              collected ? "收藏【${model.name}】组件成功!" : "已取消【${model.name}】组件收藏!";
          Toast.toast(ctx, msg,
            duration: Duration(milliseconds: collected?1500:600),
            action: collected
                ? SnackBarAction(
                textColor: Colors.white, label: '收藏夹管理', onPressed: () {
                  Scaffold.of(ctx).openEndDrawer();
            }): null,);
        },
        child: FeedbackWidget(
          onPressed: () => BlocProvider.of<CollectBloc>(context)
              .add(ToggleCollectEvent(id: model.id)),
          child: BlocBuilder<CollectBloc, CollectState>(builder: (_, s) {
            return Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                s.widgets.contains(model)
                    ? TolyIcon.icon_star_ok
                    : TolyIcon.icon_star_add,
                size: 25,
              ),
            );
          }),
        ));
  }

  final List<int> colors = Cons.tabColors;

  Widget _buildNodes(List<NodeModel> nodes, String name) {
    var globalState = BlocProvider.of<GlobalBloc>(context).state;
    print('build---_buildNodes---${widget.model}');
    return Column(
        children: nodes
            .asMap()
            .keys
            .map((i) => WidgetNodePanel(
                  codeStyle: Cons.codeThemeSupport.keys
                      .toList()[globalState.codeStyleIndex],
                  codeFamily: 'Inconsolata',
                  text: nodes[i].name,
                  subText: nodes[i].subtitle,
                  code: nodes[i].code,
                  show: WidgetsMap.map(name)[i],
                ))
            .toList());
  }

  _buildLinkTo(BuildContext context, List<WidgetModel> links) {
    if (links == null || links.isEmpty) {
      return Padding(
          padding: EdgeInsets.only(left: 10),
          child: Chip(
            backgroundColor: Colors.grey.withAlpha(120),
            labelStyle: TextStyle(fontSize: 12, color: Colors.white),
            label: Text('暂无链接组件'),
          ));
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 10),
        child: Wrap(
          spacing: 5,
          children: links
              .map((e) => ActionChip(
                    onPressed: () {
                      BlocProvider.of<DetailBloc>(context)
                          .add(FetchWidgetDetail(e));
                      setState(() {
                        _models.add(e);
                      });
                    },
                    elevation: 2,
                    shadowColor: Colors.orange,
                    backgroundColor: Theme.of(context).primaryColor,
                    labelStyle: TextStyle(fontSize: 12, color: Colors.white),
                    label: Text('${e.name}'),
                  ))
              .toList(),
        ),
      );
    }
  }
}

class WidgetDetailTitle extends StatelessWidget {
  final WidgetModel model;

  WidgetDetailTitle({this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            _buildLeft(model),
            _buildRight(model),
          ],
        ),
      ],
    ));
  }

  final List<int> colors = Cons.tabColors;

  Widget _buildLeft(WidgetModel model) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Text(
                model.nameCN,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1EBBFD),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Panel(child: Text(model.info)),
            )
          ],
        ),
      );

  Widget _buildRight(WidgetModel model) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                  tag: "hero_widget_image_${model.id}",
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: model.image == null
                          ? Image.asset('assets/images/caver.jpeg')
                          : Image(image: model.image))),
            ),
          ),
          StarScore(
            score: model.lever,
            star: Star(size: 15, fillColor: Colors.blue),
          )
        ],
      );
}
