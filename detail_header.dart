import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget{
  final String imageUrls;
  final VoidCallback onBackPressed;

  const DetailHeader({
    super.key,
    required this.imageUrls,
    required this.onBackPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: const.EdgeInsets.all(8,8)
            child : ClipRRect(
            borderRadius : BorderRadius.circular(12);
            child : image.network(imageUrls, fit: BoxFit(cover),
        ),
      ],
    )
  }
}