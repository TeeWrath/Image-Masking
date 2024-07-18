import 'package:flutter/material.dart';

class ImageMaskController extends ChangeNotifier {
  String _imgNum = 0.toString();
  String _finalNum = 0.toString();

  String get getFinalNum => _finalNum;
  String get getImgNum => _imgNum;

  void setImgNum(String imgNum) {
    _imgNum = imgNum;
    notifyListeners();
  }

  void setFinalNum() {
    _finalNum = _imgNum;
    notifyListeners();
  }
}
