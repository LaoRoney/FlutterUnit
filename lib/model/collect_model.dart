import 'package:flutter/material.dart';
import 'package:flutter_unit/app/utils/color_utils.dart';
import 'package:flutter_unit/storage/po/collect_po.dart';
import 'package:intl/intl.dart';

/// create by 张风捷特烈 on 2020-04-17
/// contact me by email 1981462002@qq.com
/// 说明: 收藏对象 界面显示

class CollectModel {
  final int id;
  final String name;
  final String info;
  final String createDate;
  final String imageCover;
  final int count;
  final Color color;

  CollectModel(
      {this.name,
      this.id,
      this.info,
      this.createDate,
      this.imageCover,
      this.count,
      this.color});

  bool get canDelete => id > 1;

  static CollectModel fromPo(CollectPo po) {
    return CollectModel(
      id: po.id,
      name: po.name,
      info: po.info,
      createDate: DateFormat('yyyy-MM-dd HH:mm').format(po.created),
      imageCover: po.image,
      count: 10,
      color: ColorUtils.parse(po.color),
    );
  }
}
