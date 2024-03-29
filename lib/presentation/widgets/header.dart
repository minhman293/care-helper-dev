import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    required this.heading1,
    required this.heading2,
    Key? key,
  }) : super(key: key);

  final String heading1;
  final String heading2;

  @override
  Widget build(BuildContext context) {
    const Color accent = Color(0xff112950);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            accent,
            Colors.blueAccent,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            Text(
              heading2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
