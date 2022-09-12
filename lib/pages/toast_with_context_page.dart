import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWithPage extends StatefulWidget {
  const ToastWithPage({Key? key}) : super(key: key);

  @override
  State<ToastWithPage> createState() => _ToastWithPageState();
}

class _ToastWithPageState extends State<ToastWithPage> {
  final buttonStyle = ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 50),
    textStyle: const TextStyle(
      fontSize: 24,
    ),
  );

  final toast = FToast();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Container(
            padding: const EdgeInsets.all(30),
            alignment: Alignment.center,
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
                    onPressed: showBottomToast,
                    style: buttonStyle,
                    child: const Text('Show Bottom Toast'),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(
                    onPressed: showTopToast,
                    style: buttonStyle,
                    child: const Text('Show Top Toast'),
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
      ),
    );
  }

  Widget buildToast() => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFDEF8EC),
          border: Border.all(
            color: const Color(0xFF1CA841),
          ),
          // borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.check_circle_rounded,
              color: Color(0xFF1CA841),
            ),
            SizedBox(
              width: 12,
            ),
            Flexible(
              child: Text(
                'This is a custom toast',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      );

  void showToast() {
    Fluttertoast.showToast(
      msg: 'This is a toast',
      fontSize: 18,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.red,
      textColor: Colors.black,
    );
  }

  void showBottomToast() => toast.showToast(
        child: buildToast(),
        gravity: ToastGravity.BOTTOM,
      );

  void showTopToast() => toast.showToast(
        child: buildToast(),
        positionedToastBuilder: (context, child) => Positioned(
          child: child,
          top: 150,
          left: 0,
          right: 0,
        ),
      );

  void cancelToast() {
    toast.removeQueuedCustomToasts();
  }
}
