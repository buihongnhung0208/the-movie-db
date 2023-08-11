import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_db/resources/dimens.dart';
import 'package:the_movie_db/resources/resources.dart';

class CardItem extends StatelessWidget {
  // String? id;

  const CardItem({
    super.key,
    // this.id,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimens.size_120.w,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10000.0),
            child: CachedNetworkImage(
              width: Dimens.size_120.w,
              height: Dimens.size_200.h,
              imageUrl: 'https://picsum.photos/250?image=9',
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
              ),
            ),
          ),
          Text(
            "Harry Potter và Hòn Đá Phù Thủy",
            style: CoreResources.textStyles.inter.extraSmallTextMedium.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
