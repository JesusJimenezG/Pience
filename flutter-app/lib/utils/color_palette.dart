//Flutter
import 'package:flutter/material.dart';

class FlagColors {

  List<Color> flagColor;

  //TODO: implement a RESTAPI to fetch colors

  //Temporary use of specific parameter 
  List<Color> getColor(String lang){
    if(lang == 'en'){
      flagColor = [Color(0xFF192A56), Color(0xFFC23616)];
    }
    if(lang == 'sw'){
      flagColor = [Color(0xFF30ADD9), Color(0xFFFFB01A)];
    }
    if(lang == 'es'){
      flagColor = [Color(0xFFB33939), Color(0xFFFFB142)];
    }

    return flagColor;
  }
}