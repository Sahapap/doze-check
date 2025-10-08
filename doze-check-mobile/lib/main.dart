import 'package:doze_check/core/presentation/screens/accident/accident_screen.dart';
import 'package:doze_check/core/presentation/screens/epworth/epworth_screen.dart';
import 'package:doze_check/core/presentation/screens/profile/profile_screen.dart';
import 'package:doze_check/core/presentation/screens/result/result_screen.dart';
import 'package:doze_check/core/presentation/screens/splash/splash_screen.dart';
import 'package:doze_check/core/presentation/screens/stopbang/stopbang_screen.dart';
import 'package:doze_check/l10n/app_localizations.dart';
import 'package:doze_check/shared/config/config.dart';
import 'package:doze_check/shared/constant/routes.dart';
import 'package:doze_check/shared/provider/localization.dart';
import 'package:doze_check/shared/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: ref.watch(localeProvider),
      title: Config.appName,
      theme: AppTheme.light,
      routes: {
        AppRoutes.root: (_) => const SplashScreen(),
        AppRoutes.splash: (_) => const SplashScreen(),
        AppRoutes.profile: (_) => const ProfileScreen(),
        AppRoutes.accident: (_) => const AccidentScreen(),
        AppRoutes.stopbang: (_) => const StopBangScreen(),
        AppRoutes.epworth: (_) => const EpworthScreen(),
        AppRoutes.result: (_) => const ResultScreen(),
      },
    );
  }
}
