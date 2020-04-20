import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_star/flutter_star.dart';
import 'package:flutter_unit/app/res/cons.dart';
import 'package:flutter_unit/app/style/shape/techno_shape.dart';
import 'package:flutter_unit/components/permanent/circle.dart';
import 'package:flutter_unit/components/permanent/circle_image.dart';
import 'package:flutter_unit/components/permanent/circle_text.dart';
import 'package:flutter_unit/components/permanent/feedback_widget.dart';
import 'package:flutter_unit/model/collect_model.dart';
import 'package:flutter_unit/model/widget_model.dart';

class CollectPageListItem extends StatelessWidget {
  final CollectModel data;
  final Function(CollectModel) onDeleteItemClick;

  CollectPageListItem({this.data, this.onDeleteItemClick});

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: data.color.withAlpha(88),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 2,
      child: Container(
        child: _buildChild(context),
        padding: EdgeInsets.all(10),

        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );

  }

  _buildChild(BuildContext context) {
    var themeColor = Theme.of(context).primaryColor;
    return Column(
      children: <Widget>[
        _buildTitle(themeColor),
        Divider(),
        Expanded(
            child: Stack(
              fit: StackFit.expand,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(data.info,
                  style: TextStyle(
                       color: Colors.grey,
                      shadows: [
                    Shadow(color: themeColor, offset: Offset(.2,.2),blurRadius: .5)
                  ])),
            ),
            if (data.canDelete)
            Positioned(
                bottom: 5,
                right: 5,
                child:
                FeedbackWidget(
                  onPressed: () {},
                  child: Icon(
                    Icons.edit,
                    size: 20,
                    color: themeColor,
                  ),
                )
            )
          ],
        )),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            '创建于 ${data.createDate}',
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }

  Row _buildTitle(Color themeColor) {
    return Row(
      children: <Widget>[
        CircleText(
          text: "${data.count}",
          size: 35,
          fontSize: 14,
          backgroundColor: data.color,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          data.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
        if (data.canDelete)
        FeedbackWidget(
          onPressed: () {
            if (onDeleteItemClick != null) {
              onDeleteItemClick(data);
            }
          },
          child: Icon(
            CupertinoIcons.delete_solid,
            color: Colors.red,
          ),
        )
      ],
    );
  }

//  Widget _buildLeading() => Padding(
//        padding: const EdgeInsets.only(left: 5, right: 5),
//        child: data.image == null
//            ? Material(
//                color: Colors.transparent,
//                child: CircleText(
//                  text: data.name,
//                  size: 50,
//                  color: itemColor,
//                ),
//              )
//            : CircleImage(
//                image: data.image,
//                size: 50,
//              ),
//      );
//
//  Color get itemColor => Color(Cons.tabColors[data.family.index]);
//
//  Widget _buildTitle() {
//    return Row(
//      children: <Widget>[
////        SizedBox(width: 10),
//        Expanded(
//          child: Text(data.name,
//              overflow: TextOverflow.ellipsis,
//              style: TextStyle(
//                  fontSize: 17,
//                  fontWeight: FontWeight.bold,
//                  shadows: [
//                    Shadow(color: Colors.white, offset: Offset(.3, .3))
//                  ])),
//        ),
//      ],
//    );
//  }
//
//  Widget _buildSummary() {
//    return Padding(
//      padding: const EdgeInsets.only(left: 5, bottom: 10, top: 5),
//      child: Container(
//        child: Text(
//          data.nameCN,
//          maxLines: 2,
//          overflow: TextOverflow.ellipsis,
//          style: TextStyle(
//              color: Colors.grey[600],
//              fontSize: 14,
//              shadows: [Shadow(color: Colors.white, offset: Offset(.5, .5))]),
//        ),
//      ),
//    );
//  }
}
