import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/app/style/TolyIcon.dart';
import 'package:flutter_unit_mac/blocs/bloc_exp.dart';
import 'package:flutter_unit_mac/components/permanent/circle.dart';
import 'package:flutter_unit_mac/storage/dao/widget_dao.dart';
import 'package:flutter_unit_mac/model/widget_model.dart';
import 'package:flutter_unit_mac/views/items/home_item_support.dart';
import 'package:flutter_unit_mac/views/items/techno_widget_list_item.dart';
import 'package:flutter_unit_mac/views/pages/search/app_search_bar.dart';
import 'package:flutter_unit_mac/views/pages/search/error_page.dart';
import 'package:flutter_unit_mac/views/common/loading_page.dart';
import 'package:flutter_unit_mac/views/pages/search/not_search_page.dart';
import 'package:flutter_unit_mac/views/pages/search/start_filter.dart';

import 'empty_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          //返回时 情空搜索
          BlocProvider.of<SearchBloc>(context)
              .add(EventTextChanged(args: SearchArgs()));
          return true;
        },
        child: CustomScrollView(
          slivers: <Widget>[
            _buildSliverAppBar(),
            SliverToBoxAdapter(child: _buildStarFilter()),
            BlocBuilder<SearchBloc, SearchState>(
                builder: (_, state) => _buildBodyByState(state))
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      pinned: true,
      title: AppSearchBar(),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(TolyIcon.icon_sound),
        )
      ],
    );
  }

  Widget _buildStarFilter() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 5),
            child: Wrap(
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Circle(
                  radius: 5,
                  color: Colors.orange,
                ),
                Text(
                  '星级查询',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          MultiChipFilter<int>(
            data: [1, 2, 3, 4, 5],
            avatarBuilder: (_, index) =>
                CircleAvatar(child: Text((index + 1).toString())),
            labelBuilder: (_, selected) => Icon(
              Icons.star,
              color: selected ? Colors.blue : Colors.grey,
              size: 18,
            ),
            onChange: _doSelectStart,
          ),
          Divider()
        ],
      );

  Widget _buildBodyByState(SearchState state) {
    if (state is SearchStateNoSearch)
      return SliverToBoxAdapter(
        child: NotSearchPage(),
      );
    if (state is SearchStateLoading)
      return SliverToBoxAdapter(child: LoadingPage());
    if (state is SearchStateError)
      return SliverToBoxAdapter(child: ErrorPage());
    if (state is SearchStateSuccess) return _buildSliverList(state.result);
    if (state is SearchStateEmpty)
      return SliverToBoxAdapter(child: EmptyPage());
    return NotSearchPage();
  }

  Widget _buildSliverList(List<WidgetModel> models) => SliverPadding(
    padding: EdgeInsets.all(20),
    sliver: SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          childAspectRatio: 4,
          children: models
              .asMap()
              .keys
              .map((index) => Container(
//          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: InkWell(
                    onTap: () => _toDetailPage(models[index]),
                    child: HomeItemSupport.get(models[index], 1)),
              ))
              .toList(),
//        delegate: SliverChildBuilderDelegate(
//            (_, int index) =>
//            Container(
//                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                child:
//                InkWell(
//                    onTap: () => _toDetailPage(models[index]),
//                    child: TechnoWidgetListItem(
//                      data: models[index],
//                    ))
//                    ),
//            childCount: models.length),
        ),
  );

  _doSelectStart(List<int> select) {
    var temp = select.map((e) => e + 1).toList();
    if (temp.length < 5) {
      temp.addAll(List.generate(5 - temp.length, (e) => -1));
    }
    BlocProvider.of<SearchBloc>(context).add(EventTextChanged(args: SearchArgs(name: '', stars: temp)));
  }

  _toDetailPage(WidgetModel model) {
    BlocProvider.of<DetailBloc>(context).add(FetchWidgetDetail(model));
    Navigator.pushNamed(context, Router.widget_detail, arguments: model);
  }
}
