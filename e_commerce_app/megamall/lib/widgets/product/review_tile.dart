import 'package:flutter/material.dart';

import '../../models/review_model.dart';
import '../../constants/app_colors.dart';

class ReviewTile extends StatelessWidget {
  final ReviewModel review;

  const ReviewTile({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              review.userName,
              style: const TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 4),

            Row(
              children: List.generate(
                review.rating.round(),
                (index) => const Icon(
                  Icons.star,
                  color: AppColors.star,
                  size: 16,
                ),
              ),
            ),

            const SizedBox(height: 8),

            Text(review.comment),

            const SizedBox(height: 6),

            Text(
              review.date,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}