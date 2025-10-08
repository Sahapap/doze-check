import 'package:doze_check/core/data/repositories/assessment/assessment_repository.dart';
import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:doze_check/shared/constant/topic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'assessment_usecase.g.dart';

@riverpod
Future<AssessmentForm> getAssessmentForm(Ref ref, Topic topic) async {
  final service = ref.watch(assessmentRepositoryProvider);
  return service.get(topic);
}
