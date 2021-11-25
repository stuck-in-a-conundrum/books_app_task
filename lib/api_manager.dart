import 'dart:convert';
import 'package:books_app_task/model.dart';
import 'package:http/http.dart' as http;

String url = "https://run.mocky.io/v3/f3feef1c-9bfa-43fd-b2a0-bbe9abadb4f6";

class APImanager {
  Future<List<Clients>> getData() async {
    List<Clients> detail = [];
    var client = http.Client();
    try {
      var response = await client.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print('code ${response.statusCode}');
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)["clients"];
        print(data.length);
        for (var items in data) {
          detail.add(
            Clients(
              name: items['name'],
              id: items["id"],
              company: items['company'],
              orderId: items['orderId'],
              invoicepaid: items['invoicepaid'],
              invoicePending: items['invoicePending'],
            ),
          );
        }
        return detail;
      }
    } on Exception catch (e) {
      print(e);
      return detail;
    }
    return detail;
  }
}
