// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:flutter/material.dart';

// import '../ui/shared/social_media.dart';
// import '../ui/shared/widget_nav_bar/text_button_logo.dart';

// class DrawerWidget2 extends StatelessWidget {
//   static const routeName = '/drawer';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             TextButtonLogo(),
//             // Column(
//             //   crossAxisAlignment: CrossAxisAlignment.center,
//             //   children: [
//             //     TextButton(
//             //       onPressed: () {
//             //         Navigator.of(context)
//             //             .pushReplacementNamed(HomePage.routeName);
//             //       },
//             //       child: TextButtonWidget(title: 'Home'),
//             //     ),
//             //     TextButton(
//             //       onPressed: () {
//             //         Navigator.of(context)
//             //             .pushReplacementNamed(AboutPage.routeName);
//             //       },
//             //       child: TextButtonWidget(title: ' About'),
//             //     ),
//             //     TextButton(
//             //       onPressed: () {
//             //         Navigator.of(context)
//             //             .pushReplacementNamed(ContactPage.routeName);
//             //       },
//             //       child: TextButtonWidget(title: 'Contact'),
//             //     ),
//             //   ],
//             // ),
//             SizedBox(
//               height: 30,
//             ),
//             AllSocialMedia(),
//           ],
//         ),
//       ),
//     );
//   }
// }
