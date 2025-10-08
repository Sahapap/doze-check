import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_th.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('th')
  ];

  /// No description provided for @button_next.
  ///
  /// In en, this message translates to:
  /// **'ถัดไป'**
  String get button_next;

  /// No description provided for @button_back.
  ///
  /// In en, this message translates to:
  /// **'ย้อนกลับ'**
  String get button_back;

  /// No description provided for @button_home.
  ///
  /// In en, this message translates to:
  /// **'กลับไปหน้าแรก'**
  String get button_home;

  /// No description provided for @button_view.
  ///
  /// In en, this message translates to:
  /// **'ดูผลการประเมิน'**
  String get button_view;

  /// No description provided for @button_exit.
  ///
  /// In en, this message translates to:
  /// **'ออกจากระบบ'**
  String get button_exit;

  /// No description provided for @choice_yes.
  ///
  /// In en, this message translates to:
  /// **'ใช่'**
  String get choice_yes;

  /// No description provided for @choice_no.
  ///
  /// In en, this message translates to:
  /// **'ไม่ใช่'**
  String get choice_no;

  /// No description provided for @input_required.
  ///
  /// In en, this message translates to:
  /// **'โปรดระบุ'**
  String get input_required;

  /// No description provided for @unit_centimeter.
  ///
  /// In en, this message translates to:
  /// **'ซม.'**
  String get unit_centimeter;

  /// No description provided for @unit_kilogram.
  ///
  /// In en, this message translates to:
  /// **'กก.'**
  String get unit_kilogram;

  /// No description provided for @login_title.
  ///
  /// In en, this message translates to:
  /// **'เข้าสู่ระบบ'**
  String get login_title;

  /// No description provided for @login_button_signin.
  ///
  /// In en, this message translates to:
  /// **'เข้าสู่ระบบ'**
  String get login_button_signin;

  /// No description provided for @splash_title.
  ///
  /// In en, this message translates to:
  /// **'แบบประเมินความเสี่ยง\nจากโรคหยุดหายใจขณะหลับ\nจากการอุดกั้น'**
  String get splash_title;

  /// No description provided for @profile_title.
  ///
  /// In en, this message translates to:
  /// **'ข้อมูลส่วนบุคคล'**
  String get profile_title;

  /// No description provided for @profile_first_name.
  ///
  /// In en, this message translates to:
  /// **'ชื่อ'**
  String get profile_first_name;

  /// No description provided for @profile_last_name.
  ///
  /// In en, this message translates to:
  /// **'นามสกุล'**
  String get profile_last_name;

  /// No description provided for @profile_phone_number.
  ///
  /// In en, this message translates to:
  /// **'เบอร์โทรศัพท์'**
  String get profile_phone_number;

  /// No description provided for @profile_sleep_hour.
  ///
  /// In en, this message translates to:
  /// **'จำนวนชั่วโมงที่นอนต่อวัน'**
  String get profile_sleep_hour;

  /// No description provided for @accident_title.
  ///
  /// In en, this message translates to:
  /// **'ประวัติเคยเกิดอุบัติเหตุ\nจากความง่วงนอน\nขณะขับรถ'**
  String get accident_title;

  /// No description provided for @accident_choice_1.
  ///
  /// In en, this message translates to:
  /// **'เคยเกิดอุบัติเหตุ\nจากความง่วงนอนขณะขับรถ'**
  String get accident_choice_1;

  /// No description provided for @accident_choice_2.
  ///
  /// In en, this message translates to:
  /// **'ไม่เคยเกิดอุบัติเหตุ\nจากความง่วงนอนขณะขับรถ'**
  String get accident_choice_2;

  /// No description provided for @epworth_title.
  ///
  /// In en, this message translates to:
  /// **'แบบทดสอบ\nระดับความง่วงนอนเอ็บเวิร์ธ'**
  String get epworth_title;

  /// No description provided for @epworth_subtitle.
  ///
  /// In en, this message translates to:
  /// **'(The Epworth Sleepiness Scale)'**
  String get epworth_subtitle;

  /// No description provided for @epworth_label.
  ///
  /// In en, this message translates to:
  /// **'ให้คะแนนความมีโอกาสจะงีบหลับ\nในสถานการณ์ต่อไปนี้'**
  String get epworth_label;

  /// No description provided for @epworth_score_0_head.
  ///
  /// In en, this message translates to:
  /// **'0 หมายถึง'**
  String get epworth_score_0_head;

  /// No description provided for @epworth_score_1_head.
  ///
  /// In en, this message translates to:
  /// **'1 หมายถึง'**
  String get epworth_score_1_head;

  /// No description provided for @epworth_score_2_head.
  ///
  /// In en, this message translates to:
  /// **'2 หมายถึง'**
  String get epworth_score_2_head;

  /// No description provided for @epworth_score_3_head.
  ///
  /// In en, this message translates to:
  /// **'3 หมายถึง'**
  String get epworth_score_3_head;

  /// No description provided for @epworth_score_0_body.
  ///
  /// In en, this message translates to:
  /// **'ไม่มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ'**
  String get epworth_score_0_body;

  /// No description provided for @epworth_score_1_body.
  ///
  /// In en, this message translates to:
  /// **'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ เล็กน้อย (นานๆ ครั้ง)'**
  String get epworth_score_1_body;

  /// No description provided for @epworth_score_2_body.
  ///
  /// In en, this message translates to:
  /// **'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ ปานกลาง'**
  String get epworth_score_2_body;

  /// No description provided for @epworth_score_3_body.
  ///
  /// In en, this message translates to:
  /// **'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ สูง (เป็นประจำ)'**
  String get epworth_score_3_body;

  /// No description provided for @stopbang_title.
  ///
  /// In en, this message translates to:
  /// **'แบบประเมิน\nภาวะหยุดหายใจขณะหลับ'**
  String get stopbang_title;

  /// No description provided for @stopbang_subtitle.
  ///
  /// In en, this message translates to:
  /// **'(STOP-BANG)'**
  String get stopbang_subtitle;

  /// No description provided for @stopbang_label.
  ///
  /// In en, this message translates to:
  /// **'โปรดตอบคำถามต่อไปนี้'**
  String get stopbang_label;

  /// No description provided for @stopbang_weight.
  ///
  /// In en, this message translates to:
  /// **'น้ำหนัก'**
  String get stopbang_weight;

  /// No description provided for @stopbang_height.
  ///
  /// In en, this message translates to:
  /// **'ส่วนสูง'**
  String get stopbang_height;

  /// No description provided for @stopbang_bmi.
  ///
  /// In en, this message translates to:
  /// **'BMI'**
  String get stopbang_bmi;

  /// No description provided for @stopbang_neck_circumference.
  ///
  /// In en, this message translates to:
  /// **'เส้นรอบวงคอ'**
  String get stopbang_neck_circumference;

  /// No description provided for @result_title.
  ///
  /// In en, this message translates to:
  /// **'สรุปผลทดสอบ'**
  String get result_title;

  /// No description provided for @result_label.
  ///
  /// In en, this message translates to:
  /// **'คุณมีความเสี่ยง'**
  String get result_label;

  /// No description provided for @result_risk_high.
  ///
  /// In en, this message translates to:
  /// **'สูง'**
  String get result_risk_high;

  /// No description provided for @result_risk_medium.
  ///
  /// In en, this message translates to:
  /// **'ปานกลาง'**
  String get result_risk_medium;

  /// No description provided for @result_risk_low.
  ///
  /// In en, this message translates to:
  /// **'ต่ำ'**
  String get result_risk_low;

  /// No description provided for @result_risk_high_detail.
  ///
  /// In en, this message translates to:
  /// **'คุณเข้าเกณฑ์ความเสี่ยงสูงต่อการเป็นโรคหยุดหายใจขณะหลับ'**
  String get result_risk_high_detail;

  /// No description provided for @result_risk_medium_detail.
  ///
  /// In en, this message translates to:
  /// **'คุณเข้าเกณฑ์ความเสี่ยงปานกลางต่อการเป็นโรคหยุดหายใจขณะหลับ'**
  String get result_risk_medium_detail;

  /// No description provided for @result_risk_low_detail.
  ///
  /// In en, this message translates to:
  /// **'คุณเข้าเกณฑ์ความเสี่ยงน้อยต่อการเป็นโรคหยุดหายใจขณะหลับต่ำ'**
  String get result_risk_low_detail;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'th'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'th': return AppLocalizationsTh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
