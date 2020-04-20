import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_unit/model/widget_model.dart';

/// create by 张风捷特烈 on 2020-04-09
/// contact me by email 1981462002@qq.com
/// 说明: 


abstract class CollectEvent extends Equatable {}


//class EventSetCollect extends CollectEvent {
//  final bool collect;
//
//  EventSetCollect({this.collect});
//
//  @override
//  // TODO: implement props
//  List<Object> get props => [collect];
//}

class EventSetCollectData extends CollectEvent {
  List<Object> get props => [];
}


class ToggleCollectEvent extends CollectEvent {
  final int id;

  ToggleCollectEvent({this.id});

  @override
  // TODO: implement props
  List<Object> get props => [id];
}

class CheckCollectEvent extends CollectEvent {
  final int id;
  CheckCollectEvent({this.id});

  @override
  // TODO: implement props
  List<Object> get props => [id];
}


class LoadCollectEvent extends CollectEvent{
  @override
  List<Object> get props => [];

}


class EventAddCollect extends CollectEvent{
  final String name;
  final String info;
  final String color;

  EventAddCollect({@required this.name, this.info, this.color});

  @override
  List<Object> get props => [name,info,color];
}

class EventDeleteCollect extends CollectEvent{
  final int id;

  EventDeleteCollect({@required this.id});

  @override
  List<Object> get props => [id];
}