import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/blocs/category/category_bloc.dart';
import 'package:flutter_unit_mac/blocs/category/category_event.dart';
import 'package:flutter_unit_mac/blocs/category/category_state.dart';
import 'package:flutter_unit_mac/blocs/category_widget/category_widget_bloc.dart';
import 'package:flutter_unit_mac/blocs/category_widget/category_widget_event.dart';
import 'package:flutter_unit_mac/components/permanent/circle.dart';

import 'package:flutter_unit_mac/model/category_model.dart';
import 'package:flutter_unit_mac/views/dialogs/delete_category_dialog.dart';
import 'package:flutter_unit_mac/views/items/category_list_item.dart';

import 'edit_category_panel.dart';

class CategoryPage extends StatelessWidget {
  final gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    mainAxisSpacing: 25,
    crossAxisSpacing: 25,
    childAspectRatio: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (_, state) {
      if (state is CategoryLoadedState) {
        return GridView.builder(
          padding: EdgeInsets.only(right: 20,left: 20,bottom: 20,top: 0),
          itemCount: state.categories.length,
          itemBuilder: (_, index) => Container(
            child: GestureDetector(
                onTap: () => _toDetailPage(context, state.categories[index]),
                child: CategoryListItem(
                  data: state.categories[index],
                  onDeleteItemClick: (model) => _deleteCollect(context, model),
                  onEditItemClick: (model) => _editCollect(context, model),
                )),
          ),
          gridDelegate: gridDelegate,
        );
      }
      return Container();
    });
  }

  _deleteCollect(BuildContext context, CategoryModel model) {
    showDialog(
        context: context,
        builder: (ctx) => Dialog(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Container(
                width: 50,
                child: DeleteCategoryDialog(
                  title: '删除收藏集',
                  content: '    删除【${model.name}】收藏集，你将会失去其中的所有收藏组件，是否确定继续执行?',
                  onSubmit: () {
                    BlocProvider.of<CategoryBloc>(context)
                        .add(EventDeleteCategory(id: model.id));
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ));
  }

  _editCollect(BuildContext context, CategoryModel model) {
    showDialog(
        context: context,
        builder: (ctx) => UnconstrainedBox(
          child: Container(
            alignment: Alignment.center,
            width: 400,
            child: Dialog(
                  backgroundColor:Color(0xFFF2F2F2),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Circle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            '修改收藏集',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          CloseButton()
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: EditCategoryPanel(model: model,type: EditType.update,),
                      ),
                    ],
                  ),
                ),
          ),
        ));
  }

  _toDetailPage(BuildContext context, CategoryModel model) {
    BlocProvider.of<CategoryWidgetBloc>(context)
        .add(EventLoadCategoryWidget(model.id));
    Navigator.pushNamed(context, Router.category_show, arguments: model);
  }
}
