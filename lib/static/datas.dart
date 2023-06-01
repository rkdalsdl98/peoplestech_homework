import 'package:peoplestech_homework/model/item_model.dart';

class CategoryDatas {
  List<Map<String, dynamic>> categorys = [
    {
      "category": "치킨/피자",
      "imageUrl": "assets/img/categorys/poultry_leg.png",
    },
    {
      "category": "편의점",
      "imageUrl": "assets/img/categorys/convenience_store.png",
    },
    {
      "category": "커피/음료",
      "imageUrl": "assets/img/categorys/ice_coffee.png",
    },
    {
      "category": "버거",
      "imageUrl": "assets/img/categorys/hamburger.png",
    },
    {
      "category": "베이커리",
      "imageUrl": "assets/img/categorys/doughnut.png",
    },
    {
      "category": "아이스크림",
      "imageUrl": "assets/img/categorys/icecream.png",
    },
    {
      "category": "외식",
      "imageUrl": "assets/img/categorys/fork_knife_with_plate.png",
    },
    {
      "category": "영화/도서",
      "imageUrl": "assets/img/categorys/popcorn.png",
    },
    {
      "category": "통신사",
      "imageUrl": "assets/img/categorys/mobile_phone.png",
    },
    {
      "category": "상품권",
      "imageUrl": "assets/img/categorys/admission_tickets.png",
    },
    {
      "category": "헤어/뷰티",
      "imageUrl": "assets/img/categorys/haircut.png",
    },
    {
      "category": "여행",
      "imageUrl": "assets/img/categorys/airplane.png",
    },
  ];
}

class CompanyDatas {
  String selCompany = '';
  List<Map<String, dynamic>> companys = [
    {
      "company": "빽다방",
      "imageUrl": "assets/img/companys/backcoffeshop.png",
      "category": "커피/음료"
    },
    {
      "company": "스타벅스",
      "imageUrl": "assets/img/companys/starbucks.png",
      "category": "커피/음료"
    },
    {
      "company": "엔젤리너스",
      "imageUrl": "assets/img/companys/angelinus.png",
      "category": "커피/음료"
    },
    {
      "company": "이디야커피",
      "imageUrl": "assets/img/companys/ediyacoffee.png",
      "category": "커피/음료"
    },
    {
      "company": "잠바주스",
      "imageUrl": "assets/img/companys/jambajuice.png",
      "category": "커피/음료"
    },
    {
      "company": "커피빈",
      "imageUrl": "assets/img/companys/coffeebean.png",
      "category": "커피/음료"
    },
    {
      "company": "탐앤탐스",
      "imageUrl": "assets/img/companys/tomandtoms.png",
      "category": "커피/음료"
    },
    {
      "company": "투썹플레이스",
      "imageUrl": "assets/img/companys/twosomeplace.png",
      "category": "커피/음료"
    },
    {
      "company": "파스쿠찌",
      "imageUrl": "assets/img/companys/pascucci.png",
      "category": "커피/음료"
    },
    {
      "company": "폴바셋",
      "imageUrl": "assets/img/companys/paulbassett.png",
      "category": "커피/음료"
    },
  ];
}

class ItemDatas {
  bool desc = false;

  List<ItemModel> previewItems = [
    ItemModel.fromDict(
      {
        "company": "이디야커피",
        "itemName": "(L)HOT아메리카노",
        "imageUrl": "assets/img/items/americano_L_hot.png",
        "imageUrlHuge": "assets/img/items/americano_L_hot_huge.png",
        "price": 2810,
      },
    ),
    ItemModel.fromDict(
      {
        "company": "스타벅스",
        "itemName": "카페 아메리카노 T",
        "imageUrl": "assets/img/items/americano_T.png",
        "imageUrlHuge": "assets/img/items/americano_T_huge.png",
        "price": 3370,
      },
    ),
    ItemModel.fromDict(
      {
        "company": "투썸플레이스",
        "itemName": "아메리카노 (R)",
        "imageUrl": "assets/img/items/americano_R.png",
        "imageUrlHuge": "assets/img/items/americano_R_huge.png",
        "price": 3960,
      },
    ),
    ItemModel.fromDict(
      {
        "company": "이디야커피",
        "itemName": "이디야 5,000원 금액권",
        "imageUrl": "assets/img/items/ediyagiftcard_5000.png",
        "imageUrlHuge": "assets/img/items/ediyagiftcard_5000_huge.png",
        "price": 4400,
      },
    ),
    ItemModel.fromDict(
      {
        "company": "베스킨라빈스",
        "itemName": "베스킨라빈스 교환권[5천...",
        "imageUrl": "assets/img/items/baskinrobbinstradecard.png",
        "imageUrlHuge": "assets/img/items/baskinrobbinstradecard_huge.png",
        "price": 20680,
      },
    ),
    ItemModel.fromDict(
      {
        "company": "도미노피자",
        "itemName": "리얼불고기(치즈버스...",
        "imageUrl": "assets/img/items/dominopizzatradecard.png",
        "imageUrlHuge": "assets/img/items/dominopizzatradecard_huge.png",
        "price": 20680,
      },
    ),
  ];
}

class UserData {
  int wallet = 10000;
  List<ItemModel> basket = [];
}
