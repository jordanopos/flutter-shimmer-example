import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  const ShimmerContainer(
      {super.key,
      required this.height,
      required this.borderRadius,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[200]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class ShimmerText extends StatelessWidget {
  final double? width;
  const ShimmerText({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShimmerContainer(height: 10, borderRadius: 100, width: 10),
        ShimmerContainer(height: 10, borderRadius: 100, width: width ?? 100),
      ],
    );
  }
}

class ShimmerListTile extends StatelessWidget {
  const ShimmerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerContainer(height: 80, borderRadius: 9, width: 80),
          SizedBox(width: 8),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ShimmerText(
                  width: 200,
                ),
                SizedBox(height: 8),
                ShimmerText(),
              ])
        ],
      ),
    );
  }
}
