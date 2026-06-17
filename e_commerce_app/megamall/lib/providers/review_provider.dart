import 'package:flutter/material.dart';

import '../data/dummy_reviews.dart';
import '../models/review_model.dart';

class ReviewProvider extends ChangeNotifier {
  final List<ReviewModel> _reviews = dummyReviews;

  List<ReviewModel> get reviews => _reviews;

  void addReview(ReviewModel review) {
    _reviews.add(review);
    notifyListeners();
  }
}