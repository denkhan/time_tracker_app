import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

Future<dynamic> showAlertDialog(BuildContext context,
    {required String title,
      required String content,
      String cancelActionText = "",
      required String defaultActionText}) {
  if (!Platform.isIOS) {
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              if(cancelActionText != "")
                MaterialButton(onPressed: () => Navigator.of(context).pop(false),
                    child: Text(cancelActionText))
              ,
              MaterialButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(defaultActionText),
              )
            ],
          ),
    );
  } else {
    return showCupertinoDialog(
      context: context,
      builder: (context) =>
          CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              if(cancelActionText != "")
                CupertinoDialogAction(onPressed: () => Navigator.of(context).pop(false),
                    child: Text(cancelActionText))
              ,
              CupertinoDialogAction(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(defaultActionText),
              )
            ],
          ),
    );
  }
}
