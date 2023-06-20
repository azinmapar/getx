import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GetX SnackBar'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    'Snackbar', 'yum',
                    // * stay duration
                    duration: const Duration(seconds: 5),
                    // * overall animation duration
                    animationDuration: const Duration(seconds: 1),
                    // * top or bottom or what
                    snackPosition: SnackPosition.BOTTOM,
                    // * coming animation
                    forwardAnimationCurve: Curves.easeIn,
                    // * going animation
                    reverseAnimationCurve: Curves.easeOut,
                    // * icon
                    icon: const Icon(Icons.face),
                    // * icon pulse
                    shouldIconPulse: true,
                    // * margin around the snackbar
                    margin: const EdgeInsets.all(20.0),
                    // * width of the border around snackbar
                    borderWidth: 1.0,
                    // * how round should border be
                    borderRadius: 28.0,
                    // * color of the border around snackbar
                    borderColor: Colors.black38,
                    // * dismiss it with sliding it with finger
                    isDismissible: true,
                    // * how blur should it be
                    barBlur: 5.0,
                  );
                },
                child: const Text('See the Snackbar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
