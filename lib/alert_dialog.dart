import 'package:flutter/material.dart';
import 'package:tic_tac/main.dart';

Future<void> showAlertDialog(
    {
    // BuildContext ?context,

    required String title,
    required String content,
    required String defaultActionText,
    required final VoidCallback onOkPressed,
    required BuildContext context}) async {
  // if (Platform.isIOS) {
  //   return await showCupertinoDialog(
  //     context: ,
  //     builder: (BuildContext context) {return CupertinoAlertDialog(
  //       title: Text(title),
  //       content: Text(content),
  //       actions: <Widget>[
  //         CupertinoDialogAction(
  //           onPressed: () => onOkPressed(),
  //           child: Text(defaultActionText),
  //         ),
  //       ],
  //     );
  //     },
  //   );
  // }


  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title,style: const TextStyle(color: Colors.white),),
      content: Text(content,style: const TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 81, 81, 81),
      actions:  <Widget>[
        ElevatedButton(
          onPressed:() {
            onOkPressed();
          },
          child: Text(defaultActionText),
        ),
      ],
    ),
  );
}
