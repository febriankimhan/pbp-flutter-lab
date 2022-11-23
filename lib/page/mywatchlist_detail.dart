import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/fetch_mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyWatchListDetail extends StatelessWidget {
  final MyWatchList watchlist;
  const MyWatchListDetail({Key? key, required this.watchlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 11,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    watchlist.fields.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Release Date: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat.yMMMMd('en_US')
                        .format(watchlist.fields.releaseDate))
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Rating: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("${watchlist.fields.rating}/5")
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Status: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(listIsWatched[watchlist.pk - 1] ? "watched" : "not watched")
                  ],
                ),
                const Text(
                  "Review: ",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(watchlist.fields.review),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
