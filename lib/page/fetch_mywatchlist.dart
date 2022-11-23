import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;

List<bool> listIsWatched = [];

Future<List<MyWatchList>> fetchMyWatchList() async {
  var url = Uri.parse('http://tugas2-pbp-bian.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchList> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      final MyWatchList watchList = MyWatchList.fromJson(d);
      listMyWatchList.add(watchList);
      listIsWatched.add(watchList.fields.watched);
    }
  }

  return listMyWatchList;
}
