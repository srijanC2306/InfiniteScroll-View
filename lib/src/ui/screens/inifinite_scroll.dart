
import 'dart:async';

import 'package:base_code/custom_state_widget/base_stateless_widget.dart';
import 'package:base_code/src/bloc/signin/signin_bloc.dart';
import 'package:base_code/src/bloc/signin/signin_event.dart';
import 'package:base_code/src/bloc/signin/signin_state.dart';
import 'package:base_code/src/ui/widget/common/elevated_btn.dart';
import 'package:base_code/src/ui/widget/inputField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfiniteScrollView extends StatefulWidget {
  const InfiniteScrollView({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollView> createState() => _InfiniteScrollViewState();
}

class _InfiniteScrollViewState extends State<InfiniteScrollView> {
   List<Color> colorList = [Colors.yellow , Colors.grey , Colors.blue] ;
   final scrollController = ScrollController();

   @override
  void initState() {
    scrollController.addListener(() {
      if(scrollController.position.maxScrollExtent == scrollController.offset){
        fetch();
      }
    });
    super.initState();
  }

  Future<void> fetch() async{

  Future.delayed(const Duration(seconds: 1) , (){

    setState(() {
      colorList.addAll([Colors.pink , Colors.brown , Colors.teal]);
    });
  });

  }
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemCount:  colorList.length+1,
          itemBuilder: (_, index){
            if(colorList.length >index){
              return Container(
                width: double.infinity,
                height: 300,
                color: colorList[index],
              );
            }else{
          return const  Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Center(child: CircularProgressIndicator()),
          );
            }
          })
    );
  }

    
    
  }




