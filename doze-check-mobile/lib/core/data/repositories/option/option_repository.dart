import 'dart:convert';

import 'package:doze_check/core/data/entities/option/option_dto.dart';
import 'package:doze_check/core/domain/entities/option.dart';
import 'package:doze_check/gen/assets.gen.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'option_repository.g.dart';

class OptionRepository {
  Future<List<Option>> get() async {
    final jsonStr = await rootBundle.loadString(Assets.data.hourSleepPerDay);
    final List<dynamic> jsonList = jsonDecode(jsonStr);
    return OptionListDto.fromJson(jsonList).toDomain();
  }
}

@riverpod
OptionRepository optionRepository(Ref ref) {
  return OptionRepository();
}
