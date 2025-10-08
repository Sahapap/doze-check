import 'package:doze_check/core/data/repositories/option/option_repository.dart';
import 'package:doze_check/core/domain/entities/option.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'option_usecase.g.dart';

@riverpod
Future<List<Option>> getOption(Ref ref) async {
  final service = ref.watch(optionRepositoryProvider);
  return service.get();
}
