import 'package:dio/dio.dart';

import '../model/model_news.dart';

class serv_new {
  static Dio dio = Dio();

  Future<modlenew> getfun() async {
    String url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
    try {
      var resop = await dio.get(url);
      if (resop.statusCode == 200) {
        return modlenew.fromjosn(resop.data);
      } else {
        throw("not found");
      }
    }

    catch (e) {
      throw(e.toString());
    }
  }

}
