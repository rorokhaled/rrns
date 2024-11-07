import 'package:flutter/cupertino.dart';
import 'package:untitled7/model/model_news.dart';

import '../siervies/servies_news.dart';

class providir extends ChangeNotifier{
  modlenew?modle;
  Future<void>fun()async{
    modle=await serv_new().getfun();
    notifyListeners();
  }
}