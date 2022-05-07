

import 'package:network_service_learn/models/comments_class.dart';
import 'package:network_service_learn/services/service_comments.dart';
import 'package:test/scaffolding.dart';

void main() async {
  // GET

  // String body = await NetworkService.GET(NetworkService.apiComments, NetworkService.headers);
  // List comments = NetworkService.ListParseCommentsList(body);
  // print(comments);

  Comments comments = Comments(999, 12, 'Xurshid', 'email@com', 'Salom');

  // POST

  // String response = await NetworkService.POST(NetworkService.apiComments, NetworkService.headers, comments.toJson());
  // print(response);


  // PUT

  // String response = await NetworkService.PUT(NetworkService.apiComments + 9.toString(), NetworkService.headers, comments.toJson());
  // print(response.toString());

  // PUTCH
  // String response = await NetworkService.PUTCH(NetworkService.apiComments, NetworkService.headers, comments.toJson());
  // print(response);

  String response = await NetworkService.DELETE(NetworkService.apiComments, NetworkService.headers);
  print('delete: $response');
}
