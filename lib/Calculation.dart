import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calculation {
  String input;
  String display;
  Calculation({required this.input, required this.display});

  getZero(String input, String display){
  return [input = '0', display = '0'];
  }

  buttonPressedRectangleInput(String info,String input, String display){
    Calculation zero = Calculation(input: input, display: display);
    if(info == 'C'){
      return zero.getZero(input, display);

    } else if(info =='1/2'){
      print('info');
    } else if(info == '%'){
      print('info');
    } else {
      if(input == '0') {
        return '' + info;
      } else {
        return input = input + info;
      }
    }
  }

  buttonPressedCircleInput(IconData icon, String input,){
    if(icon == FontAwesomeIcons.divide){
      input = input + '÷';
    } else if( icon == FontAwesomeIcons.times){
      return input = input + '×';
    } else if( icon == FontAwesomeIcons.minus){
      return input = input + '-';
    } else if(icon == FontAwesomeIcons.plus){
      return input = input + '+';
    }
  }

  buttonPressedCircleDisplay(IconData icon, String display){
    if(icon == FontAwesomeIcons.equals)
      return display = 'ANS';
  }
}