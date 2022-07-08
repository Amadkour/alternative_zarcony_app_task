import 'package:flutter/material.dart';

import '../model/bottom_navigator_model.dart';

class BottomNavigatorRepo {
  final List<BottomNavigatorModel> _items = [];

  BottomNavigatorRepo() {
    _items.add(
      BottomNavigatorModel(
        title: 'grocery',
      ),
    );
    _items.add(
      BottomNavigatorModel(
        title: 'news',
      ),
    );
    _items.add(
      BottomNavigatorModel(
        title: 'favorite',
      ),
    );
    _items.add(
      BottomNavigatorModel(
        title: 'cart',
      ),
    );
  }

  List<BottomNavigatorModel> fetchItems() => _items;
}
