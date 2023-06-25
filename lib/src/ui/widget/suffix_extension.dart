import 'dart:js';

import 'package:base_code/src/ui/ui_resources/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum  SuffixType{
  dob , genderType, password
}

extension  SuffixTypeExtension on SuffixType{

  static SuffixType fromStringMethod(String suffixType){
    switch(suffixType){
      case StringConstants.dob:
        return SuffixType.dob ;
      case StringConstants.gender:
        return SuffixType.genderType ;
      case StringConstants.password:
        return SuffixType.password ;
      default :
        return SuffixType.password ;
    }
  }





}