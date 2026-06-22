import '../constants/app_images.dart';
import '../models/product_model.dart';

final List<ProductModel> dummyProducts = [
  ProductModel(
    id: '1',
    name: 'Wireless Headphone',
    description: 'Premium wireless headphone',
    image: AppImages.headphone,
    price: 99.99,
    rating: 4.8,
    reviewCount: 120,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '2',
    name: 'Smart Watch',
    description: 'Fitness tracking smartwatch',
    image: AppImages.smartWatch,
    price: 149.99,
    rating: 4.7,
    reviewCount: 98,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '3',
    name: 'Bluetooth Earbuds',
    description: 'Crystal clear sound quality',
    image: AppImages.earphone,
    price: 59.99,
    rating: 4.5,
    reviewCount: 75,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '4',
    name: 'Drill Machine',
    description: 'Heavy duty drill machine',
    image: AppImages.drillMachine,
    price: 129.99,
    rating: 4.6,
    reviewCount: 43,
    category: 'Tools',
    isFeatured: true,
  ),

  ProductModel(
    id: '5',
    name: 'Gaming Mouse',
    description: 'RGB Gaming Mouse',
    image: AppImages.gamingMouse,
    price: 39.99,
    rating: 4.5,
    reviewCount: 150,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '6',
    name: 'Sports Shoes',
    description: 'Comfortable Running Shoes',
    image: AppImages.sportsShoes,
    price: 89.99,
    rating: 4.7,
    reviewCount: 95,
    category: 'Sports',
    isFeatured: true,
  ),

  ProductModel(
    id: '7',
    name: 'Fitness Band',
    description: 'Track Daily Activities',
    image: AppImages.fitnessBand,
    price: 69.99,
    rating: 4.4,
    reviewCount: 80,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '8',
    name: 'Laptop Backpack',
    description: 'Water Resistant Backpack',
    image: AppImages.backpack,
    price: 49.99,
    rating: 4.6,
    reviewCount: 120,
    category: 'Fashion',
    isFeatured: true,
  ),

  ProductModel(
    id: '9',
    name: 'Wireless Speaker',
    description: 'Portable Bluetooth Speaker',
    image: AppImages.speaker,
    price: 79.99,
    rating: 4.8,
    reviewCount: 220,
    category: 'Electronics',
    isFeatured: true,
  ),

  ProductModel(
    id: '10',
    name: 'Smart Bottle',
    description: 'Temperature Display Bottle',
    image: AppImages.smartBottle,
    price: 24.99,
    rating: 4.3,
    reviewCount: 60,
    category: 'Lifestyle',
    isFeatured: false,
  ),
];