import '../constants/app_images.dart';
import '../models/news_model.dart';

final List<NewsModel> dummyNews = [
  NewsModel(
    id: '1',
    title: 'MegaMall Summer Sale',
    description:
        'Enjoy huge discounts on electronics, fashion and more.',
    image: AppImages.news1,
    date: '10 Jan 2026',
  ),
  NewsModel(
    id: '2',
    title: 'New Arrivals Available',
    description:
        'Explore newly launched products at MegaMall.',
    image: AppImages.news2,
    date: '15 Jan 2026',
  ),
];