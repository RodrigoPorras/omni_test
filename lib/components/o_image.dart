import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_omni_test/colors/o_colors.dart';
import 'package:flutter_omni_test/extensions/string.dart';
import 'package:flutter_omni_test/gen/assets.gen.dart';

class OImage extends StatelessWidget {
  final String _url;
  final double? _width;
  final double? _height;
  final BoxFit? _boxFit;

  const OImage({
    Key? key,
    required String url,
    double? width,
    double? height,
    BoxFit? boxFit,
  })  : _url = url,
        _width = width,
        _height = height,
        _boxFit = boxFit,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_url.isEmpty || !_url.isURL()) {
      return _getDefaultImage();
    }

    return _getDefaultImageContainer(
      url: _url,
      onFailWidget: _getDefaultImage(),
    );
  }

  Widget _getDefaultImageContainer({
    required String url,
    required Widget onFailWidget,
  }) {
    return ExtendedImage.network(
      url,
      width: _width,
      height: _height,
      fit: _boxFit ?? BoxFit.contain,
      maxBytes: 200000,
      loadStateChanged: (imageState) {
        switch (imageState.extendedImageLoadState) {
          case LoadState.failed:
            return onFailWidget;
          case LoadState.loading:
            return _getPlaceholderImage();
          case LoadState.completed:
            return imageState.completedWidget;
          default:
            return _getDefaultImage();
        }
      },
    );
  }

  Widget _getDefaultImage() => Assets.images.omniLogo.image(
        width: _width,
        height: _height,
      );

  Widget _getPlaceholderImage() => Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: CircularProgressIndicator(
            color: OColors.tertiary,
          ),
        ),
      );
}
