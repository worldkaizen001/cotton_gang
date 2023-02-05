


import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

final saveItemProvider = StateNotifierProvider<SaveItemNotifier, List<Product>>((ref) {
  return  SaveItemNotifier();});

class SaveItemNotifier extends StateNotifier< List<Product>>{
  SaveItemNotifier(): super([]);

  void addItem (Product product){
    state = [...state, product];
  }

  void removeItem (Product product){
    state = state.where((p) => p != product ).toList();
  }

  void clearItem (){
     state = [];
  }


}