class ItemModel {
  final String company, itemName, imageUrl, imageUrlHuge;
  final int price;

  ItemModel.fromDict(Map<String, dynamic> dict)
      : company = dict['company'],
        itemName = dict['itemName'],
        imageUrlHuge = dict['imageUrlHuge'],
        imageUrl = dict['imageUrl'],
        price = dict['price'];
}
