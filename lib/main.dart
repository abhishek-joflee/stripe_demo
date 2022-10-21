import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_demo/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51LAvBISGV5ViQLmM80VhFHB70FL3roeOiMCjRfMZREwfpl7dIyYUleq0J3U0MHwSzZBKk65niBQdKTLpP8dk92O200S71ua7Jf'; // Replace with your publishable key
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      //fade in transition
      transitionDuration: const Duration(milliseconds: 500),
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    ),
  );
}
