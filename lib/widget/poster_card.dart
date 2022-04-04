import 'package:flutter/material.dart';

import '../const/responsive/responsive.dart';

class PosterCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final double width;

  const PosterCard({
    required this.text,
    required this.imageUrl,
    this.width = 1.8,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 20),
      child: Container(
        width: sizeFromWidth(context, width),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.5),
        ),
        child: GridTile(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageUrl,
              // width: sizeFromWidth(context, 1.8),
              // height: sizeFromHeight(context, 3),
              fit: BoxFit.cover,
            ),
          ),
          footer: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.headline6,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}
