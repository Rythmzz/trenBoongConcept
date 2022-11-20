import 'category_entity.dart';
import 'product_entity.dart';

class CategoryProductsEntity {
  final CategoryEntity category;
  final List<ProductEntity> products;

  CategoryProductsEntity({required this.category, required this.products});
}
