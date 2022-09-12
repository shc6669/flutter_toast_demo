import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWithoutPage extends StatelessWidget {
  final ButtonStyle? buttonStyle;

  const ToastWithoutPage({
    Key? key,
    this.buttonStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: showToast,
                  style: buttonStyle,
                  child: const Text('Show Toast'),
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: cancelToast,
                  style: buttonStyle,
                  child: const Text('Cancel Toast'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'This is a toast',
      fontSize: 18,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.red,
      textColor: Colors.black,
    );
  }

  void cancelToast() {}
}
