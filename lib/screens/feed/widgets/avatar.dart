import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatar;
  final bool isAvatarNetwork;
  final double width;
  final double height;
  final BoxFit fit;

  const Avatar({
    super.key,
    required this.avatar,
    required this.width,
    required this.height,
    this.isAvatarNetwork = false,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFF000000).withOpacity(0.1),
          width: 0.5,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width / 2),
        child: isAvatarNetwork
            ? Image.network(
                avatar,
                width: width,
                height: height,
                fit: fit,
              )
            : Image.asset(
                avatar,
                width: width,
                height: height,
                fit: fit,
              ),
      ),
    );
  }
}
