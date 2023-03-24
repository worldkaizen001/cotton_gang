

import 'package:cotton_gang/src/models/real_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

final savedItemsProvider = ChangeNotifierProvider<SavedItem>((ref) => SavedItem()
);


class SavedItem extends ChangeNotifier {

 final  List<RealProducts> _savedItemsList = [];

  List<RealProducts> get savedItemsList => _savedItemsList;

  void addToSavedItems (RealProducts product){
    _savedItemsList.add(product);
    notifyListeners();
  }



void removeSavedItems(RealProducts product){
    _savedItemsList.remove(product);
    notifyListeners();
}

void clearSavedItems (){
    _savedItemsList.clear();
}

}