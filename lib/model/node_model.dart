import 'package:equatable/equatable.dart';
import 'package:flutter_unit_mac/storage/po/node_po.dart';

/// create by 张风捷特烈 on 2020-03-04
/// contact me by email 1981462002@qq.com
/// 说明: 详情页节点-展示-数据模型

class NodeModel extends Equatable {
  final String name;
  final String subtitle;
  final String code;

  const NodeModel({this.name, this.subtitle, this.code});

  @override
  List<Object> get props => [name, subtitle, code];

  factory NodeModel.fromJson(Map<String, dynamic> map) {
    return NodeModel(
        name: map['name'], subtitle: map["subtitle"], code: map["code"]);
  }

  @override
  String toString() {
    return 'Node{name: $name, subtitle: $subtitle, code: $code}';
  }

  static NodeModel fromPo(NodePo po) {
    return NodeModel(
      name: po.name,
      subtitle: po.subtitle,
      code: po.code,
    );
  }
}
