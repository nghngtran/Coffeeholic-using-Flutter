import 'package:flutter/cupertino.dart';

import '../data.dart';



class FavoritePost extends ChangeNotifier{
  List<CoffeeInfo> favList = [];

  void addFavList(CoffeeInfo coffeeInfo) {
    favList.add(coffeeInfo);
    notifyListeners();
  }

  void removeFavList(CoffeeInfo coffeeInfo){
    favList.remove(coffeeInfo);
    notifyListeners();
  }

  List<CoffeeInfo> getList(){
    return favList;
  }
  int getLength(){
    return favList.length;
  }
}