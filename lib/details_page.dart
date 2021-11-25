import 'package:books_app_task/model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.client}) : super(key: key);
  Clients client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text(client.name),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("name:"),
                  Text(
                    client.name,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("company:"),
                  Text(client.company),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("OrderId:"),
                  Text(client.orderId),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("Invoice Paid:"),
                  Text(client.invoicepaid),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text("Invoice Pending:"),
                  Text(client.invoicePending),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
