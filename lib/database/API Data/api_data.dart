import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
class ApiData {
  Future<List> getProduct() async{

    var url = Uri.parse("https://fakestoreapi.com/products");
    var r = await http.get(url) ;

    return jsonDecode(r.body);
  }
}
