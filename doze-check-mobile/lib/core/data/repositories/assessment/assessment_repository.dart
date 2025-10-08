import 'dart:convert';

import 'package:doze_check/core/data/entities/assessment/assessment_dto.dart';
import 'package:doze_check/core/domain/entities/assessment.dart';
import 'package:doze_check/gen/assets.gen.dart';
import 'package:doze_check/shared/constant/topic.dart';
import 'package:flutter/services.dart' show AssetBundle, rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'assessment_repository.g.dart';

class AssessmentRepository {
  final AssetBundle _bundle = rootBundle;
  final Map<Topic, String> _files = {
    Topic.stopBang: Assets.data.stopBang,
    Topic.epworth: Assets.data.epworth,
    Topic.accidentHistory: Assets.data.accidentHistory,
  };

  Future<AssessmentForm> get(Topic topic) async {
    final jsonStr = await _bundle.loadString(_files[topic]!);
    final Map<String, dynamic> jsonMap = jsonDecode(jsonStr);
    return AssessmentFormDto.fromJson(jsonMap).toDomain();
  }
}

@riverpod
AssessmentRepository assessmentRepository(Ref ref) {
  return AssessmentRepository();
}
