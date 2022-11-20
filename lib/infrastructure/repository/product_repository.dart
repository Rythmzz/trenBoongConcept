import '../../domain/entity/category_entity.dart';
import '../../domain/entity/category_products_entity.dart';
import '../../domain/entity/product_entity.dart';

final List<CategoryProductsEntity> _products = [
  CategoryProductsEntity(
      category: CategoryEntity(
          id: 'boongcate1020245211',
          name: 'Cà phê',
          imageUrl:
              'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg'),
      products: [
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000)
      ]),
  CategoryProductsEntity(
      category: CategoryEntity(
          id: 'boongcate1020245542',
          name: 'Trà trái cây',
          imageUrl:
              'https://product.hstatic.net/1000075078/product/tra-dao-cam-xa_668678_6bc4945f39294b7682b02bb846a6a207_large.jpg'),
      products: [
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000),
        ProductEntity(
            id: 'boongcoffee01',
            name: 'Americano Nóng',
            imgUrl:
                'https://product.hstatic.net/1000075078/product/1636647328_arme-nong_b6b45a1c3bda4568ac67fe486847dc01_large.jpg',
            price: 45000)
      ])
];

class ProductRepository {
  List<CategoryProductsEntity> getAllProduct() {
    return _products;
  }
}
