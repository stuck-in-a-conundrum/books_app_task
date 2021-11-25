class Clients {
  String id;
  String name;
  String company;
  String orderId;
  String invoicepaid;
  String invoicePending;

  Clients({
    required this.name,
    required this.id,
    required this.company,
    required this.orderId,
    required this.invoicepaid,
    required this.invoicePending,
  });

  factory Clients.fromJson(Map<String, dynamic> json) => Clients(
        id: json['id'],
        name: json['name'],
        company: json['company'],
        orderId: json['orderId'],
        invoicepaid: json['invoicepaid'],
        invoicePending: json['invoicePending'],
      );
}
