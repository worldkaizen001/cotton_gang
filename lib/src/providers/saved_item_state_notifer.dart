import 'package:cotton_gang/src/models/real_product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product.dart';

final saveItemProvider =
    StateNotifierProvider<SaveItemNotifier, List<RealProducts>>((ref) {
  return SaveItemNotifier();
});

class SaveItemNotifier extends StateNotifier<List<RealProducts>> {
  SaveItemNotifier() : super([]);

  void addItem(RealProducts product) {
    state = [...state, product];
  }

  void removeItem(RealProducts product) {
    state = state.where((p) => p != product).toList();
  }

  updateMethod(dynamic number, RealProducts product) {
    final updatedList = <RealProducts>[];
    for (var i = 0; i < state.length; i++) {
      if (state[i] == number) {
        updatedList.add(product);
      } else {
        [
          updatedList.add(state[i]),
        ];
      }
      state = updatedList;
    }
  }

  void clearItem() {
    state = [];
  }
}
