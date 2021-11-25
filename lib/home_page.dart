import 'package:books_app_task/api_manager.dart';
import 'package:books_app_task/details_page.dart';
import 'package:books_app_task/model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BooksApp ListView with API"),
      ),
      body: FutureBuilder<List<Clients>>(
        future: APImanager().getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return _listView(snapshot.data);
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.white60,
              ),
            );
          }
        },
      ),
    );
  }

  Widget _listView(List<Clients> details) {
    return ListView.builder(
      itemCount: details.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(details[index].name),
          subtitle: Text(details[index].company),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsPage(client: details[index]),
            ),
          ),
        ),
      ),
    );
  }
}
