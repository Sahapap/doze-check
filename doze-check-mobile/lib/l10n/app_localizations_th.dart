// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get button_next => 'ถัดไป';

  @override
  String get button_back => 'ย้อนกลับ';

  @override
  String get button_home => 'กลับไปหน้าแรก';

  @override
  String get button_view => 'ดูผลการประเมิน';

  @override
  String get button_exit => 'ออกจากระบบ';

  @override
  String get choice_yes => 'ใช่';

  @override
  String get choice_no => 'ไม่ใช่';

  @override
  String get input_required => 'โปรดระบุ';

  @override
  String get unit_centimeter => 'ซม.';

  @override
  String get unit_kilogram => 'กก.';

  @override
  String get login_title => 'เข้าสู่ระบบ';

  @override
  String get login_button_signin => 'เข้าสู่ระบบ';

  @override
  String get splash_title => 'แบบประเมินความเสี่ยง\nจากโรคหยุดหายใจขณะหลับ\nจากการอุดกั้น';

  @override
  String get profile_title => 'ข้อมูลส่วนบุคคล';

  @override
  String get profile_first_name => 'ชื่อ';

  @override
  String get profile_last_name => 'นามสกุล';

  @override
  String get profile_phone_number => 'เบอร์โทรศัพท์';

  @override
  String get profile_sleep_hour => 'จำนวนชั่วโมงที่นอนต่อวัน';

  @override
  String get accident_title => 'ประวัติเคยเกิดอุบัติเหตุ\nจากความง่วงนอน\nขณะขับรถ';

  @override
  String get accident_choice_1 => 'เคยเกิดอุบัติเหตุ\nจากความง่วงนอนขณะขับรถ';

  @override
  String get accident_choice_2 => 'ไม่เคยเกิดอุบัติเหตุ\nจากความง่วงนอนขณะขับรถ';

  @override
  String get epworth_title => 'แบบทดสอบ\nระดับความง่วงนอนเอ็บเวิร์ธ';

  @override
  String get epworth_subtitle => '(The Epworth Sleepiness Scale)';

  @override
  String get epworth_label => 'ให้คะแนนความมีโอกาสจะงีบหลับ\nในสถานการณ์ต่อไปนี้';

  @override
  String get epworth_score_0_head => '0 หมายถึง';

  @override
  String get epworth_score_1_head => '1 หมายถึง';

  @override
  String get epworth_score_2_head => '2 หมายถึง';

  @override
  String get epworth_score_3_head => '3 หมายถึง';

  @override
  String get epworth_score_0_body => 'ไม่มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ';

  @override
  String get epworth_score_1_body => 'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ เล็กน้อย (นานๆ ครั้ง)';

  @override
  String get epworth_score_2_body => 'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ ปานกลาง';

  @override
  String get epworth_score_3_body => 'มีความเป็นไปได้ที่จะงีบหรือเผลอหลับ สูง (เป็นประจำ)';

  @override
  String get stopbang_title => 'แบบประเมิน\nภาวะหยุดหายใจขณะหลับ';

  @override
  String get stopbang_subtitle => '(STOP-BANG)';

  @override
  String get stopbang_label => 'โปรดตอบคำถามต่อไปนี้';

  @override
  String get stopbang_weight => 'น้ำหนัก';

  @override
  String get stopbang_height => 'ส่วนสูง';

  @override
  String get stopbang_bmi => 'BMI';

  @override
  String get stopbang_neck_circumference => 'เส้นรอบวงคอ';

  @override
  String get result_title => 'สรุปผลทดสอบ';

  @override
  String get result_label => 'คุณมีความเสี่ยง';

  @override
  String get result_risk_high => 'สูง';

  @override
  String get result_risk_medium => 'ปานกลาง';

  @override
  String get result_risk_low => 'ต่ำ';

  @override
  String get result_risk_high_detail => 'คุณเข้าเกณฑ์ความเสี่ยงสูงต่อการเป็นโรคหยุดหายใจขณะหลับ';

  @override
  String get result_risk_medium_detail => 'คุณเข้าเกณฑ์ความเสี่ยงปานกลางต่อการเป็นโรคหยุดหายใจขณะหลับ';

  @override
  String get result_risk_low_detail => 'คุณเข้าเกณฑ์ความเสี่ยงน้อยต่อการเป็นโรคหยุดหายใจขณะหลับต่ำ';
}
