//------------------1.CategoryModel--------------------------------

// ignore_for_file: non_constant_identifier_names

class CategoryApiModel {
  final String status, msg;
  final List<CategoryData> dataList;

  CategoryApiModel(this.status, this.msg, this.dataList);

  factory CategoryApiModel.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return CategoryApiModel(myjson['status'], myjson['msg'],
        List<CategoryData>.from(list.map((e) => CategoryData.formJson(e))));
  }
}

class CategoryData {
  final int Cat_Id;
  final String Cat_Name, ImgUrl;

  CategoryData(this.Cat_Id, this.Cat_Name, this.ImgUrl);
  factory CategoryData.formJson(Map<String, dynamic> myjson) {
    return CategoryData(myjson['Cat_Id'], myjson['Cat_Name'], myjson['ImgUrl']);
  }
}

//------------------2.CategoryColor Model --------------------

class CategoryColorModel {
  final String status, msg;
  final List<CategoryColorData> dataList1;

  CategoryColorModel(this.status, this.msg, this.dataList1);
  factory CategoryColorModel.formJson(Map<String, dynamic> myjson) {
    List list1 = myjson['data'];
    return CategoryColorModel(
        myjson['status'],
        myjson['msg'],
        List<CategoryColorData>.from(
            list1.map((e) => CategoryColorData.formJson(e))));
  }
}

class CategoryColorData {
  final int Color_Id;
  final String Color_Name;

  CategoryColorData(this.Color_Id, this.Color_Name);
  factory CategoryColorData.formJson(Map<String, dynamic> myjson) {
    return CategoryColorData(myjson['Color_Id'], myjson['Color_Name']);
  }
}

//---------------------3.CategoryAginstSubcategory Model--------------------

// class CategoryListModel {
//   final int Cat_Id;
//   final String Cat_Name;
//   final List<subcategorylistModel> subcategorylistModelData;
//   CategoryListModel(this.Cat_Id, this.Cat_Name, this.subcategorylistModelData);
//   factory CategoryListModel.formJson(Map<String, dynamic> myjson) {
//     List list = myjson['data'];
//     return CategoryListModel(
//         myjson['Cat_Id'],
//         myjson['Cat_Name'],
//         List<subcategorylistModel>.from(
//             list.map((e) => subcategorylistModel.formJson(e))));
//   }
// }

// class subcategorylistModel {
//   final int Sub_Id;
//   final String SubName, IsActive;

//   subcategorylistModel(this.Sub_Id, this.SubName, this.IsActive);
//   factory subcategorylistModel.formJson(Map<String, dynamic> myjson) {
//     return subcategorylistModel(
//         myjson['Sub_Id'], myjson['SubName'], myjson['IsActive']);
//   }
// }


class Welcome {
    Welcome({
        required this.categoryList,
    });

    List<CategoryList> categoryList;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        categoryList: List<CategoryList>.from(json["CategoryList"].map((x) => CategoryList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "CategoryList": List<dynamic>.from(categoryList.map((x) => x.toJson())),
    };
}

class CategoryList {
    CategoryList({
        required this.catId,
        required this.catName,
        required this.subcategorylist,
    });

    String catId;
    String catName;
    List<Subcategorylist> subcategorylist;

    factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        catId: json["Cat_Id"],
        catName: json["Cat_Name"],
        subcategorylist: List<Subcategorylist>.from(json["subcategorylist"].map((x) => Subcategorylist.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Cat_Id": catId,
        "Cat_Name": catName,
        "subcategorylist": List<dynamic>.from(subcategorylist.map((x) => x.toJson())),
    };
}

class Subcategorylist {
    Subcategorylist({
        required this.subId,
        required this.subName,
        required this.isActive,
    });

    String subId;
    String subName;
    String isActive;

    factory Subcategorylist.fromJson(Map<String, dynamic> json) => Subcategorylist(
        subId: json["Sub_Id"],
        subName: json["SubName"],
        isActive: json["IsActive"],
    );

    Map<String, dynamic> toJson() => {
        "Sub_Id": subId,
        "SubName": subName,
        "IsActive": isActive,
    };
}
