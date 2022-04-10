import 'package:queue_management/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_management/src/queue/domain/repositories/queue_repository.dart';
import 'package:queue_management/src/queue/infra/adapters/json_to_queue.dart';

import '../datasource/queue_datasource.dart';

class QueueRepository implements IQueueRepository {
  final IQueueDataSource datasouce;

  QueueRepository(this.datasouce);

  @override
  Stream<List<QueueEntity>> getAllQueues() {
    final stream = datasouce.getAllQueues();

    return stream.map((list) => _convert(list));
  }

  List<QueueEntity> _convert(List<Map> list) {
    return list.map((item) => JsonToQueue.fromMap(item)).toList();
  }
}
