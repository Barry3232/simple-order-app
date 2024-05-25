import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/shopmodel.dart';

final shopProvider = ChangeNotifierProvider<ShopProvider>((ref) => ShopProvider());

class ShopProvider extends ChangeNotifier{
  List<ShopModel> _shoppingList = [];
  List<ShopModel> get shopList => _shoppingList;

  void addToCart({required String title, required Color color}){

    final newItem = ShopModel(color: color, title: title, isAdded: true);

    _shoppingList.add(newItem);
    notifyListeners();
  }

  void removeFromCart({required String title}){
      _shoppingList.removeWhere((element) => element.title == title);
    notifyListeners();
  }

}