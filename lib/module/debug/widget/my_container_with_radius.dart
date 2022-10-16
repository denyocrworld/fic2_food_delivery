import 'package:flutter/material.dart';

class MyContainerWithRadius extends StatelessWidget {
  const MyContainerWithRadius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.red[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
    );
  }
}
