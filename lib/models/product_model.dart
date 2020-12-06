class ProductModel {
  final String uid;
  final String name;
  final String image;
  final String brand;
  final String parentCategoryId;

  ProductModel(
      {this.uid, this.name, this.parentCategoryId, this.image, this.brand});
}
