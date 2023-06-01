import 'package:get/get.dart';
import 'package:peoplestech_homework/model/item_model.dart';
import 'package:peoplestech_homework/static/datas.dart';

class CompanyController extends GetxController {
  var companyDatas = CompanyDatas().obs;

  void setSelCompany(String company) {
    companyDatas.update((val) {
      val?.selCompany = company;
    });
  }
}

class CategoryController extends GetxController {
  var categoryDatas = CategoryDatas().obs;
}

class ItemsController extends GetxController {
  var itemDatas = ItemDatas().obs;

  void sortDatas(bool newDesc) {
    itemDatas.update((val) {
      if (newDesc) {
        val?.previewItems.sort((a, b) => (b.price).compareTo(a.price));
      } else {
        val?.previewItems.sort((a, b) => (a.price).compareTo(b.price));
      }
      val?.desc = newDesc;
    });
  }
}

class UserController extends GetxController {
  var userData = UserData().obs;

  bool buyingItem(int price, ItemModel item) {
    bool res = false;
    userData.update((val) {
      if (val!.wallet >= price) {
        val.wallet = val.wallet - price;
        val.basket.add(item);
        res = true;
      }
    });
    return res;
  }
}
