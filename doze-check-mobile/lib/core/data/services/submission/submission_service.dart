import 'package:doze_check/core/data/clients/api/api_client.dart';
import 'package:doze_check/core/data/entities/submission/submission_dto.dart';
import 'package:doze_check/core/domain/entities/submission.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'submission_service.g.dart';

class SubmissionService {
  final BaseAPIClient client;

  SubmissionService({required this.client});

  Future<void> create(Submission body) async {
    await client.put(
      '/api/submit',
      body: SubmissionDto.fromDomain(body).toJson(),
    );
  }
}

@riverpod
SubmissionService submissionService(Ref ref) {
  final client = ref.watch(apiClientProvider);
  return SubmissionService(client: client);
}
