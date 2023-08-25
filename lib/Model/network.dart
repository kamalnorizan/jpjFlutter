import 'dart:convert';

import 'package:http/http.dart' as http;
class Network{

  getData(apiUrl) async{
    return await http.get(Uri.parse(apiUrl));
  }  
  
  postData(data, apiUrl) async{
    return await http.post(Uri.parse(apiUrl), body: jsonEncode(data));
  }
}