

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

final savedItemsProvider = ChangeNotifierProvider<SavedItem>((ref) => SavedItem()
);


class SavedItem extends ChangeNotifier {

 final  List<Product> _savedItemsList = [];

  List<Product> get savedItemsList => _savedItemsList;

  void addToSavedItems (Product product){
    _savedItemsList.add(product);
    notifyListeners();
  }



void removeSavedItems(Product product){
    _savedItemsList.remove(product);
    notifyListeners();
}

void clearSavedItems (){
    _savedItemsList.clear();
}

}