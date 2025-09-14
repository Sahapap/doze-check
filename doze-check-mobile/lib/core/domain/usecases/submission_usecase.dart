import 'package:doze_check/core/data/services/submission/submission_service.dart';
import 'package:doze_check/core/domain/entities/submission.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'submission_usecase.g.dart';

@riverpod
Future<void> createSubmission(Ref ref, Submission submission) async {
  final service = ref.watch(submissionServiceProvider);
  return service.create(submission);
}
