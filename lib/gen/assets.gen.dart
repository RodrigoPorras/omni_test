/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/omni_logo.png
  AssetGenImage get omniLogo =>
      const AssetGenImage('assets/images/omni_logo.png');
}

class $AssetsPdfGen {
  const $AssetsPdfGen();

  /// File path: assets/pdf/RODRIGO_PORRAS.pdf
  String get rodrigoPorras => 'assets/pdf/RODRIGO_PORRAS.pdf';
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/back_arrow.svg
  SvgGenImage get backArrow => const SvgGenImage('assets/svg/back_arrow.svg');

  /// File path: assets/svg/bnb_bag.svg
  SvgGenImage get bnbBag => const SvgGenImage('assets/svg/bnb_bag.svg');

  /// File path: assets/svg/bnb_chat.svg
  SvgGenImage get bnbChat => const SvgGenImage('assets/svg/bnb_chat.svg');

  /// File path: assets/svg/bnb_history.svg
  SvgGenImage get bnbHistory => const SvgGenImage('assets/svg/bnb_history.svg');

  /// File path: assets/svg/bnb_home.svg
  SvgGenImage get bnbHome => const SvgGenImage('assets/svg/bnb_home.svg');

  /// File path: assets/svg/bnb_profile.svg
  SvgGenImage get bnbProfile => const SvgGenImage('assets/svg/bnb_profile.svg');

  /// File path: assets/svg/closed_eye.svg
  SvgGenImage get closedEye => const SvgGenImage('assets/svg/closed_eye.svg');

  /// File path: assets/svg/fingerprint.svg
  SvgGenImage get fingerprint =>
      const SvgGenImage('assets/svg/fingerprint.svg');

  /// File path: assets/svg/logout.svg
  SvgGenImage get logout => const SvgGenImage('assets/svg/logout.svg');

  /// File path: assets/svg/marker.svg
  SvgGenImage get marker => const SvgGenImage('assets/svg/marker.svg');

  /// File path: assets/svg/opened_eye.svg
  SvgGenImage get openedEye => const SvgGenImage('assets/svg/opened_eye.svg');

  /// File path: assets/svg/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/svg/phone.svg');

  /// File path: assets/svg/photo_no_available.svg
  SvgGenImage get photoNoAvailable =>
      const SvgGenImage('assets/svg/photo_no_available.svg');

  /// File path: assets/svg/shopping_cart.svg
  SvgGenImage get shoppingCart =>
      const SvgGenImage('assets/svg/shopping_cart.svg');

  /// File path: assets/svg/user.svg
  SvgGenImage get user => const SvgGenImage('assets/svg/user.svg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsPdfGen pdf = $AssetsPdfGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
