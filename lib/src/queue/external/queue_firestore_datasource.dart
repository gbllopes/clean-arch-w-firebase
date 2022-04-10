import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:queue_management/src/queue/infra/datasource/queue_datasource.dart';

class QueueFirestoreDataSource implements IQueueDataSource {
  final FirebaseFirestore firestore;
  QueueFirestoreDataSource(this.firestore);

  @override
  Stream<List<Map>> getAllQueues() {
    final ref = firestore.collection('queue');

    final snapshot = ref.snapshots();

    return Stream.value([]);
  }
}
