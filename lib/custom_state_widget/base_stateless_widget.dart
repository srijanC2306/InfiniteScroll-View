import 'package:base_code/src/ui/ui_resources/color_constants.dart';
import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget{
  const BaseStatelessWidget({super.key});

  Widget errorText({required text  , TextStyle? textStyle}){
    return Text(text , style:textStyle?? const TextStyle(
      fontSize: 12 ,
      fontWeight: FontWeight.w400 ,
      color: ColorConstants.errorTextColor ,
    ));
  }

  Widget appText({required text , TextStyle? textStyle}  ){
    return Text(text, style: textStyle ?? const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: ColorConstants.textColor
    ));
  }


}