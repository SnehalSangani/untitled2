import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitled2/homemodel.dart';

class Apihelper
{
  static final helper =Apihelper._();
  Apihelper._();

  Future<void> getapi()
  async {
    String link="https://bhagavad-gita6.p.rapidapi.com/chapter/4/verse/7";
    var response=await http.get(Uri.parse(link),headers: {
      "X-RapidAPI-Key":"bc53e9ef48msh9433cd077ac8b15p1546eejsn93a4da922ff4",
      "X-RapidAPI-Host":"bhagavad-gita6.p.rapidapi.com",
    });
    var json=jsonDecode(response.body);
    print(json);
    return json.map((e)=>Homemodel.fromJson(e)).toList();
  }
}