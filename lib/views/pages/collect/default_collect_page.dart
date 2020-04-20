import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit/app/router.dart';
import 'package:flutter_unit/blocs/collect/collect_bloc.dart';
import 'package:flutter_unit/blocs/collect/collect_event.dart';
import 'package:flutter_unit/blocs/collect/collect_state.dart';
import 'package:flutter_unit/blocs/detail/detail_bloc.dart';
import 'package:flutter_unit/blocs/detail/detail_event.dart';
import 'package:flutter_unit/blocs/widgets/home_bloc.dart';
import 'package:flutter_unit/model/collect_model.dart';
import 'package:flutter_unit/model/widget_model.dart';
import 'package:flutter_unit/views/dialogs/delete_collect_dialog.dart';
import 'package:flutter_unit/views/items/collect_detaile_list_item.dart';
import 'package:flutter_unit/views/items/collect_page_list_item.dart';

class DefaultCollectPage extends StatelessWidget {
  final gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    childAspectRatio: 0.85,
  );

  @override
  Widget build(BuildContext context) {
    var homeColor = BlocProvider.of<HomeBloc>(context).state.homeColor;
    return Scaffold(
      backgroundColor: homeColor.withAlpha(11),
      appBar: AppBar(
        backgroundColor: homeColor,
        title: Text('收藏集'),
        actions: <Widget>[_buildAddActionBuilder(context)],
      ),
      body: BlocBuilder<CollectBloc, CollectState>(builder: (_, state) {
        if (state is LoadCollectSuccess) {
          return GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: state.collects.length,
            itemBuilder: (_, index) => Container(
              child: GestureDetector(
                  onTap: () => _toDetailPage(context, state.collects[index]),
                  child: CollectPageListItem(
                    data: state.collects[index],
                    onDeleteItemClick: (model) =>
                        _deleteCollect(context, model),
                  )),
            ),
            gridDelegate: gridDelegate,
          );
        }
        return Container();
      }),
    );
  }

  Widget _buildAddActionBuilder(BuildContext context) => IconButton(
      icon: Icon(
        Icons.add,
        size: 30,
      ),
      onPressed: () => Scaffold.of(context).openEndDrawer());

  _deleteCollect(BuildContext context, CollectModel model) {
    showDialog(
        context: context,
        builder: (ctx) => Dialog(
              backgroundColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                width: 50,
                child: DeleteDialog(
                  title: '删除收藏集',
                  content: '    删除【${model.name}】收藏集，你将会失去其中的所有收藏组件，是否确定继续执行?',
                  onSubmit: () {
                    BlocProvider.of<CollectBloc>(context)
                        .add(EventDeleteCollect(id: model.id));
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ));
  }

  _toDetailPage(BuildContext context, CollectModel model) {
//    BlocProvider.of<DetailBloc>(context).add(FetchWidgetDetail(model));
    Navigator.pushNamed(context, Router.widget_detail, arguments: model);
  }
}
