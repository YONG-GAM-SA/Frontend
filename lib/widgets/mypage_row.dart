import 'package:flutter/material.dart';

class MypageRow extends StatelessWidget {
  const MypageRow({
    super.key,
    required this.icon,
    required this.item,
  });

  final IconData icon;
  final String item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30.0,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              item,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
