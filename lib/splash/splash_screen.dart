// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    Timer(const Duration(seconds: 8), () => print('done'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(color: Theme.of(context).colorScheme.secondary),
        Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.0,
                      child: Icon(
                        Icons.favorite,
                        color: Theme.of(context).primaryColor,
                        size: 48.0,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const CircularProgressIndicator(),
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 32),
                child: Text(
                  'E Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}