import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/fetch_mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:flutter/material.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Tidak ada Watch List :(",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color:
                              listIsWatched[index] ? Colors.green : Colors.red,
                          blurRadius: 2,
                        )
                      ]),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWatchListDetail(
                                    watchlist: snapshot.data![index],
                                  )));
                    },
                    child: Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Container(
                            padding: const EdgeInsets.all(11.0),
                            child: Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Checkbox(
                            activeColor: Colors.blue,
                            value: listIsWatched[index],
                            onChanged: (value) {
                              setState(() {
                                listIsWatched[index] = !listIsWatched[index];
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
