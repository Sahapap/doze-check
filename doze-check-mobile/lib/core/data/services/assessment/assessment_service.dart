import 'package:doze_check/core/data/clients/api/api_client.dart';
import 'package:doze_check/core/data/entities/assessment/assessment_dto.dart';
import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'assessment_service.g.dart';

class AssessmentService {
  final BaseAPIClient client;

  AssessmentService({required this.client});

  Future<AssessmentForm> get(String topic) async {
    final res = await client.get('/api/$topic');
    return AssessmentFormDto.fromJson(res.data).toDomain();
  }
}

@riverpod
AssessmentService assessmentService(Ref ref) {
  final client = ref.watch(apiClientProvider);
  return AssessmentService(client: client);
}
