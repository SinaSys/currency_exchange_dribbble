extension listExtensions on List<bool>{
  List fillListWithFalseValues(){
    for(int index =0;index<this.length;index++){
      this[index] = false;
    }
    return this;
  }

}