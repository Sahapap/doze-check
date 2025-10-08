import 'package:doze_check/core/domain/entities/profile.dart';
import 'package:doze_check/core/presentation/screens/profile/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileController {
  final GlobalKey<FormState> formKey;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneNumberController;

  ProfileController._({
    required this.firstNameController,
    required this.lastNameController,
    required this.phoneNumberController,
  }) : formKey = GlobalKey<FormState>();

  factory ProfileController(WidgetRef ref) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final phoneNumberController = TextEditingController();

    firstNameController.addListener(() {
      ref
          .read(profileProvider.notifier)
          .updateFirstName(firstNameController.text);
    });

    lastNameController.addListener(() {
      ref
          .read(profileProvider.notifier)
          .updateLastName(lastNameController.text);
    });

    phoneNumberController.addListener(() {
      ref
          .read(profileProvider.notifier)
          .updatePhoneNumber(phoneNumberController.text);
    });

    return ProfileController._(
      firstNameController: firstNameController,
      lastNameController: lastNameController,
      phoneNumberController: phoneNumberController,
    );
  }

  void fill(ProfileSection state) {
    firstNameController.text = state.firstName;
    lastNameController.text = state.lastName;
    phoneNumberController.text = state.phoneNumber;
  }

  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
  }

  bool validate() {
    return formKey.currentState?.validate() ?? false;
  }
}
