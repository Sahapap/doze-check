import 'package:doze_check/core/domain/entities/option.dart';
import 'package:doze_check/core/domain/usecases/option_usecase.dart';
import 'package:doze_check/core/presentation/screens/profile/profile_controller.dart';
import 'package:doze_check/core/presentation/screens/profile/profile_provider.dart';
import 'package:doze_check/core/presentation/widgets/app_button.dart';
import 'package:doze_check/core/presentation/widgets/app_card.dart';
import 'package:doze_check/core/presentation/widgets/app_dropdown.dart';
import 'package:doze_check/core/presentation/widgets/app_error.dart';
import 'package:doze_check/core/presentation/widgets/app_label.dart';
import 'package:doze_check/core/presentation/widgets/app_loading.dart';
import 'package:doze_check/core/presentation/widgets/app_textfield.dart';
import 'package:doze_check/gen/assets.gen.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/helper/validator.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  late ProfileController controller;

  @override
  void initState() {
    super.initState();
    controller = ProfileController(ref);
    controller.fill(ref.read(profileProvider));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final optionsAsync = ref.watch(getOptionProvider);

    return Scaffold(
      body: optionsAsync.when(
        loading: () => const AppLoading(),
        error: (error, stackTrace) => const AppError(),
        data: (options) => _buildBody(ref, options),
      ),
    );
  }

  Widget _buildBody(WidgetRef ref, List<Option> options) {
    final loc = ref.read(localizationProvider);

    return Form(
      key: controller.formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.backgroundImage.provider(),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              child: AppCard.body(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppLabel.title1(loc.profile_title),
                    const SizedBox(height: 40),
                    _buildProfileTextfield(
                      controller: controller.firstNameController,
                      head: loc.profile_first_name,
                      hint: loc.input_required,
                      validator: Validator(
                        context,
                      ).withRequired().withMaxLength(50).build(),
                    ),
                    const SizedBox(height: 20),
                    _buildProfileTextfield(
                      controller: controller.lastNameController,
                      head: loc.profile_last_name,
                      hint: loc.input_required,
                      validator: Validator(
                        context,
                      ).withRequired().withMaxLength(50).build(),
                    ),
                    const SizedBox(height: 20),
                    _buildProfileTextfield(
                      controller: controller.phoneNumberController,
                      head: loc.profile_phone_number,
                      hint: loc.input_required,
                      validator: Validator.phone(context).build(),
                    ),
                    const SizedBox(height: 20),
                    _buildProfileDropdown(
                      options: options,
                      head: loc.profile_sleep_hour,
                      hint: loc.input_required,
                      onChanged: (option) {
                        if (option != null) {
                          ref
                              .read(profileProvider.notifier)
                              .updateSleepHour(option.value);
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Divider(color: AppColors.secondary),
                    ),
                    const SizedBox(height: 40),
                    AppButton(
                      text: loc.button_next,
                      onPressed: () => _onNextButtonPressed(context),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              color: AppColors.road,
              child: Center(
                child: Assets.images.logoSmall.image(width: 112, height: 112),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileTextfield({
    required TextEditingController controller,
    required String head,
    required String hint,
    required String? Function(String?)? validator,
  }) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel.head(head),
        AppTextField(controller: controller, hint: hint, validator: validator),
      ],
    );
  }

  Widget _buildProfileDropdown({
    required List<Option> options,
    required String head,
    required String hint,
    required void Function(Option?)? onChanged,
  }) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabel.head(head),
        AppDropdown(hintText: hint, options: options, onChanged: onChanged),
      ],
    );
  }

  void _onNextButtonPressed(BuildContext context) {
    if (!controller.validate()) return;

    Navigator.of(context).pushReplacementNamed(AppRoutes.stopbang);
  }
}
