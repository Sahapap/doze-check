// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsDataGen {
  const $AssetsDataGen();

  /// File path: assets/data/accident_history.json
  String get accidentHistory => 'assets/data/accident_history.json';

  /// File path: assets/data/epworth.json
  String get epworth => 'assets/data/epworth.json';

  /// File path: assets/data/hour_sleep_per_day.json
  String get hourSleepPerDay => 'assets/data/hour_sleep_per_day.json';

  /// File path: assets/data/stop_bang.json
  String get stopBang => 'assets/data/stop_bang.json';

  /// List of all assets
  List<String> get values => [
    accidentHistory,
    epworth,
    hourSleepPerDay,
    stopBang,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background-image.jpg
  AssetGenImage get backgroundImage =>
      const AssetGenImage('assets/images/background-image.jpg');

  /// File path: assets/images/high-risk-result.png
  AssetGenImage get highRiskResult =>
      const AssetGenImage('assets/images/high-risk-result.png');

  /// File path: assets/images/high-risk-sign.png
  AssetGenImage get highRiskSign =>
      const AssetGenImage('assets/images/high-risk-sign.png');

  /// File path: assets/images/logo-small.png
  AssetGenImage get logoSmall =>
      const AssetGenImage('assets/images/logo-small.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/low-risk-result.png
  AssetGenImage get lowRiskResult =>
      const AssetGenImage('assets/images/low-risk-result.png');

  /// File path: assets/images/low-risk-sign.png
  AssetGenImage get lowRiskSign =>
      const AssetGenImage('assets/images/low-risk-sign.png');

  /// File path: assets/images/medium-risk-result.png
  AssetGenImage get mediumRiskResult =>
      const AssetGenImage('assets/images/medium-risk-result.png');

  /// File path: assets/images/medium-risk-sign.png
  AssetGenImage get mediumRiskSign =>
      const AssetGenImage('assets/images/medium-risk-sign.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    backgroundImage,
    highRiskResult,
    highRiskSign,
    logoSmall,
    logo,
    lowRiskResult,
    lowRiskSign,
    mediumRiskResult,
    mediumRiskSign,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsDataGen data = $AssetsDataGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
