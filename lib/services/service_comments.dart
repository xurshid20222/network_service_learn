

import 'dart:convert';


import 'package:http/http.dart';
import 'package:network_service_learn/models/comments_class.dart';

class NetworkService{

  // URL

  static const String baseUrl = 'jsonplaceholder.typicode.com';

  // HEADERS

 static Map<String, String> headers = {
   'Content-type': 'application/json; charset=UTF-8'
 };


  // APIS

 static const String apiComments = '/comments/1';
 static const String apiComment = '/comments/1';

 
 // METHODS

  static Future<String> GET(String api, Map<String, String> headers) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception('Error');
    }
  }


  // POST

static Future<String> POST(String api, Map<String, String> headers, Map<String, dynamic> body) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception('Error');
    }
}

 static Future<String> PUTCH(String api, Map<String, String> headers,Map<String, dynamic> body)async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception('Error');
    }
 }

 static Future<String> PUT(String api, Map<String, String> headers, Map<String, dynamic> body)async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await put(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception('Error');
    }
 }

 static Future<String> DELETE(String api, Map<String, String> headers)async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      throw Exception('Error');
    }
 }

 // PARSING
 static ListParseCommentsList(String body){
    List json = jsonDecode(body);
    List comments = json.map((map) => Comments.fromJson(map)).toList();
    return comments;
 }

 static Comments parseComment(String body){
    Map<String, dynamic> json = jsonEncode(body) as Map<String, dynamic>;
    Comments comments = Comments.fromJson(json);
    return comments;
 }
  
 
 
}

