import 'package:queue_management/src/queue/domain/value_objects/order.dart';

class JsonToOrder {
  static Order fromMap(dynamic json) {
    return Order(
      id: json['id'],
      position: json['position'],
      timestamp: DateTime.parse(json['timestamp']),
      status: EOrderStatus.values.firstWhere((e) {
        return e.name == json['status'];
      }),
    );
  }
}
