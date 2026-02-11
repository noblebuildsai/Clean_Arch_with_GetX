/// ENTERPRISE: Presentation - Feature-specific widget.
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  final double size;

  const UserAvatar({super.key, required this.name, this.size = 48});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      child: Text(name.isNotEmpty ? name[0].toUpperCase() : '?'),
    );
  }
}
