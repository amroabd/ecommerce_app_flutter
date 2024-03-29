import 'package:flutter/material.dart';
class AsyncAlertDialog extends StatefulWidget {
  const AsyncAlertDialog({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AsyncAlertDialogState();
  }
}

class _AsyncAlertDialogState extends State<AsyncAlertDialog> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showDialog(context, 1);
                  });
                },
                child: const Text('show dialog'),
              ),
            ),
            Divider(),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showDialog(context, 2);
                  });
                },
                child: const Text('show dialog-2'),
              ),
            )
          ],
        ),
      )),
    );
  }
}

Future<void> _showDialog(BuildContext context, int type) async {
  if (type == 1) {
    showDialog(context: context, builder: builder);
  } else if (type == 2) {
    showDialog(context: context, builder: builder2);
  }
}

Widget builder(BuildContext context) {
  return AlertDialog(
    title: const Text('alert.!'),
    content: const Text('hello you are'),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('ok')),
    ],
  );
}

Widget builder2(BuildContext context) {
  return SimpleDialog(
    contentPadding: const EdgeInsetsDirectional.all(12.0),
    title: const Text(
      'Are you Male.?',
      textAlign: TextAlign.center,
    ),
    children: [
      SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: const EdgeInsets.all(8.0),
        child: const Text('Ok', textAlign: TextAlign.center),
      ),
      SimpleDialogOption(
        onPressed: () {
          Navigator.pop(context);
        },
        padding: const EdgeInsets.all(8.0),
        child: const Text('cancel', textAlign: TextAlign.center),
      )
    ],
  );
}
