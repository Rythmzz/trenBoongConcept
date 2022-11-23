import '../../domain/entity/category_entity.dart';
import '../../domain/entity/category_products_entity.dart';
import '../remote_source/drink_category_service.dart';
import '../remote_source/product_service.dart';

class ProductRepository {
  Future<List<CategoryProductsEntity>> getAllProduct() async {
    List<CategoryProductsEntity> products = [];
    List<CategoryEntity> categories =
        await DrinkCategoryService.getAllCategory();

    await Future.wait(categories.map((category) async => {
          products.add(CategoryProductsEntity(
              category: category,
              products:
                  await ProductService.getProductsByCategoryId(category.id)))
        }));
    return products;
  }
}
