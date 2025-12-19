import 'package:flutter/cupertino.dart';

class ProductListViewModel extends ChangeNotifier {
  ProductListViewModel();

  var _count = 0;
  int get count => _count;

  temp() {
    notifyListeners();
  }

  changeValue(int delta, {
    bool afterBuild = false,
  }) {
    _count += delta;

    if (!afterBuild) {
      notifyListeners();
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      notifyListeners();
    });
  }

}