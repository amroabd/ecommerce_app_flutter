class ProductModel {

  int? id;
  String? serialId;
  late String catIdFk;
  late String prodName;
  late String prodQtyIn;
  late String prodUnit;
  late String prodPrice;
  String? createDate;
  String? expireDate;
  String? prodImage;
  int? isActive;
  int? uploadStatus;
  late String? description;

  ProductModel(
      { this.description,
      this.id,
      this.serialId,
      required this.catIdFk,
      required this.prodName,
      required this.prodQtyIn,
      required this.prodUnit,
      required this.prodPrice,
      this.createDate,
      required this.expireDate,
      this.prodImage,
      this.isActive,
      this.uploadStatus});

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    id = map['id'];
    serialId = map['serial_id'];
    catIdFk = map['cat_id_fk'];
    prodQtyIn = map['prod_qty_in'];
    prodUnit = map['prod_unit'];
    prodName = map['prod_name'];
    prodImage = map['prod_image'];
    description = map['description'];
    prodPrice = map['prod_price'];
    expireDate = map['expire_date'];
    createDate = map['create_date'];
  }

  toJson() {
    return {
      'id': id,
      'serial_id': serialId,
      'cat_id_fk': catIdFk,
      'prod_qty_in': prodQtyIn,
      'prod_unit': prodUnit,
      'prod_name': prodName,
      'prod_image': prodImage,
      'description': description,
      'prod_price': prodPrice,
      'expire_date': expireDate,
      'create_date': createDate
    };
  }
}
