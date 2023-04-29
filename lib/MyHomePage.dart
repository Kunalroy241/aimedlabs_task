import 'package:flutter/material.dart';
import 'package:aimedlabs_task/Components/ReusuableContainer.dart';
class MyHomePage extends StatelessWidget {
  var size,height,width;

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column(
            children: [
              Card(
                margin: EdgeInsets.only(left: width*0.02,top:50,right: width*0.02),
                color: Colors.red,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red
                  ),
                  height: 100,
                  width: width*0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReusuableContainer(left: width*0.04,top:20,color: Colors.grey,width:width*0.5,right:0.0,bottom:0.0),
                      ReusuableContainer(left:width*0.04,top: 20,right:width*0.04,bottom:20,color: Colors.green,width: width*0.9),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Card(
                    margin: EdgeInsets.only(left: width*0.02,top:50,right: width*0.02),

                    child: Container(
                      decoration: const BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(5)),
                         color: Colors.red
                       ),
                      height: 100,
                      width: width*0.95,
                    ),
                  ),
                  Positioned(
                    bottom:90,
                    left: width*0.2,
                    child: Center(
                      child: ReusuableContainer(left: width*0.04,top:20,color: Colors.grey,width:width*0.5,right:0.0,bottom:0.0),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    child: ReusuableContainer(left:width*0.06,top: 20,right:width*0.04,bottom:20,color: Colors.green,width: width*0.87),
                  )
                ],
              ),

            ],
          ),

        ),
      ),
    );
  }
}

