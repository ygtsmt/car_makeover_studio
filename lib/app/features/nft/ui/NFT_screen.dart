import 'package:flutter/material.dart';

class NFTScreen extends StatelessWidget {
  const NFTScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('NFT'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
