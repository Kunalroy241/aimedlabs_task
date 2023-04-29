import "package:flutter/material.dart";
import "package:aimedlabs_task/MyHomePage.dart";
class ReusuableContainer extends StatelessWidget {
  const ReusuableContainer({this.height,this.width,this.top,this.bottom,this.left,this.right,this.color});
 final double? height,width,left,right,top,bottom;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:left!,top:top!,right:right!,bottom:bottom!),
      color: color,
      height:20,
      width:width ,
    );
  }
}
