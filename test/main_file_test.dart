import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:currency_exchange_dribbble/extensions.dart';

void main(){

  //Not passed
/*  test("check forEach loop on list elements", (){
    isSelected.forEach((element) {element=false;});
    expect(isSelected[0], false);
  });*/

  test("check Custom extension",(){
    List<bool> isSelected = [true, true, true];

 /*   for(int i=0;i<isSelected.length;i++)
      isSelected[i]=false;*/


/*    for(bool items in isSelected)
      items = false;*/

    isSelected.fillRange(0, isSelected.length,false);

   // isSelected.fillListWithFalseValues();
    expect(isSelected[3], false);
  });

}