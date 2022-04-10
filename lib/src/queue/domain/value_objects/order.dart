class Order {
  final String id;
  final int position;
  final DateTime timestamp;
  final EOrderStatus status;

  Order({
    required this.id,
    required this.position,
    required this.timestamp,
    required this.status,
  });
}

enum EOrderStatus { waiting, attending, notAwnsered }
