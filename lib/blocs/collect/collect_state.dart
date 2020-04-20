import 'package:equatable/equatable.dart';
import 'package:flutter_unit/model/collect_model.dart';
import 'package:flutter_unit/model/widget_model.dart';

/// create by 张风捷特烈 on 2020-04-09
/// contact me by email 1981462002@qq.com
/// 说明: 

class CollectState extends Equatable{
  @override
  List<Object> get props => [];

}

class LoadCollectSuccess extends CollectState {
  final List<CollectModel> collects;

  LoadCollectSuccess({this.collects});

  @override
  // TODO: implement props
  List<Object> get props => [collects];
}

class AddCollectSuccess extends CollectState{

}

class ToggleCollectSuccess extends CollectState{
 final bool collected;
  ToggleCollectSuccess(this.collected);
  List<Object> get props => [collected];
}

class CheckCollectSuccess extends CollectState{
  final bool collected;
  CheckCollectSuccess(this.collected);
  List<Object> get props => [collected];
}