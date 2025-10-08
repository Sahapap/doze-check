import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';

@freezed
abstract class Option with _$Option {
  const factory Option({@Default('') String label, @Default(0) int value}) =
      _Option;

  factory Option.zero() => const Option();
}
