import 'package:doze_check/core/domain/entities/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@Riverpod(keepAlive: true)
class Profile extends _$Profile {
  @override
  ProfileSection build() => ProfileSection.zero();

  void updateFirstName(String value) =>
      state = state.copyWith(firstName: value);

  void updateLastName(String value) => state = state.copyWith(lastName: value);

  void updatePhoneNumber(String value) =>
      state = state.copyWith(phoneNumber: value);

  void updateSleepHour(int value) => state = state.copyWith(sleepHour: value);
}
