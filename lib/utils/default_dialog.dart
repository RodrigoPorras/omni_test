import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_omni_test/settings/o_navigator.dart';
import 'dart:io' show Platform;

Future showDefaultDialog({
  String? title,
  required String message,
  String textAccept = "Aceptar",
  String? textAction,
  VoidCallback? onAction,
  VoidCallback? onCancel,
  Color? cancelColor,
}) async {
  if (message.isNotEmpty) {
    if (Platform.isIOS) {
      return await showAppleDialog(
        oNavigator.appNavigatorStateKey.currentContext!,
        title: title,
        message: message,
        textCancel: textAccept,
        textConfirm: textAction,
        onConfirm: onAction,
        onCancel: onCancel,
        cancelColor: cancelColor,
      );
    } else {
      return await showMaterialDialog(
        oNavigator.appNavigatorStateKey.currentContext!,
        title: title,
        message: message,
        textCancel: textAccept,
        textConfirm: textAction,
        onConfirm: onAction,
        onCancel: onCancel,
        cancelColor: cancelColor,
      );
    }
  }
}

Future showMaterialDialog(
  BuildContext ctx, {
  String? title,
  required String message,
  String textCancel = "Aceptar",
  String? textConfirm,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  Color? cancelColor,
}) async {
  final resultMaterial = await showDialog(
    context: ctx,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Text(message),
        title: title != null ? Text(title) : null,
        actions: [
          TextButton(
            style: ButtonStyle(
              overlayColor: cancelColor != null
                  ? MaterialStateProperty.all(cancelColor)
                  : null,
            ),
            onPressed: () {
              (onCancel != null) ? onCancel() : oNavigator.back(context);
            },
            child: Text(
              textCancel,
              style: TextStyle(color: cancelColor),
            ),
          ),
          if (textConfirm != null)
            TextButton(
              onPressed: () {
                (onConfirm != null) ? onConfirm() : oNavigator.back(context);
              },
              child: Text(textConfirm),
            )
        ],
      );
    },
  );
  return resultMaterial;
}

Future showAppleDialog(
  BuildContext ctx, {
  String? title,
  required String message,
  String textCancel = "Aceptar",
  String? textConfirm,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  Color? cancelColor,
}) async {
  final resultCupertino = await showCupertinoDialog(
    context: ctx,
    builder: (BuildContext context) => CupertinoAlertDialog(
      content: Text(message),
      title: title != null ? Text(title) : null,
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            (onCancel != null) ? onCancel() : oNavigator.back(context);
          },
          child: Text(
            textCancel,
            style: TextStyle(color: cancelColor),
          ),
        ),
        if (textConfirm != null)
          CupertinoDialogAction(
            onPressed: () {
              (onConfirm != null) ? onConfirm() : oNavigator.back(context);
            },
            child: Text(textConfirm),
          )
      ],
    ),
  );
  return resultCupertino;
}
