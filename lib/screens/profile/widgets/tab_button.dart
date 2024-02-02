import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabButton extends StatelessWidget {
  final String icon;
  final bool isActive;
  final void Function() onTap;

  const TabButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: isActive
              ? const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                )
              : null,
          child: SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
            color: isActive ? Colors.black : Colors.black.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
