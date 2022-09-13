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

class Welcome {
  Welcome({
    required this.categoryList,
  });

  List<CategoryList> categoryList;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        categoryList: List<CategoryList>.from(
            json["CategoryList"].map((x) => CategoryList.fromJson(x))),
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
        subcategorylist: List<Subcategorylist>.from(
            json["subcategorylist"].map((x) => Subcategorylist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Cat_Id": catId,
        "Cat_Name": catName,
        "subcategorylist":
            List<dynamic>.from(subcategorylist.map((x) => x.toJson())),
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

  factory Subcategorylist.fromJson(Map<String, dynamic> json) =>
      Subcategorylist(
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

//-----------------------4.FetchCompany -----------------------------------

class FetchCompanyApi {
  final String status, msg;
  final List<FetchCompanyData> FetchCompanydatalist;

  FetchCompanyApi(this.status, this.msg, this.FetchCompanydatalist);
  factory FetchCompanyApi.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return FetchCompanyApi(
        myjson['status'],
        myjson['msg'],
        List<FetchCompanyData>.from(
            list.map((e) => FetchCompanyData.formJson(e))));
  }
}

class FetchCompanyData {
  final int Company_Id;
  final String Company_Name;

  FetchCompanyData(this.Company_Id, this.Company_Name);
  factory FetchCompanyData.formJson(Map<String, dynamic> myjson) {
    return FetchCompanyData(myjson['Company_Id'], myjson['Company_Name']);
  }
}

//---------------------------------4.FetchSize--------------------------------

// class FetchSizeApi {
//   final String status, msg;
//   final List<FetchSizeData> FetchSizeDatalist;

//   FetchSizeApi(this.status, this.msg, this.FetchSizeDatalist);
//   factory FetchSizeApi.fromJson(Map<String, dynamic> myjson) {
//     List list = myjson['data'];
//     return FetchSizeApi(
//         myjson['status'],
//         myjson['msg'],
//         List<FetchSizeData>.from(
//             list.map((e) => FetchCompanyData.formJson(e))));
//   }
// }

// class FetchSizeData {
//   final int Size_Id;
//   final String Size_Name;

//   FetchSizeData(this.Size_Id, this.Size_Name);

//   factory FetchSizeData.fromJson(Map<String, dynamic> myjson) {
//     return FetchSizeData(myjson['Size_Id'], myjson['Size_Name']);
//   }
// }

class FetchSizeApi {
  final String status, msg;
  final List<CategoryColorData> dataList1;

  FetchSizeApi(this.status, this.msg, this.dataList1);
  factory FetchSizeApi.formJson(Map<String, dynamic> myjson) {
    List list1 = myjson['data'];
    return FetchSizeApi(
        myjson['status'],
        myjson['msg'],
        List<CategoryColorData>.from(
            list1.map((e) => CategoryColorData.formJson(e))));
  }
}

class FetchSizeData {
  final int Size_Id;
  final String Size_Name;

  FetchSizeData(this.Size_Id, this.Size_Name);
  factory FetchSizeData.formJson(Map<String, dynamic> myjson) {
    return FetchSizeData(myjson['Size_Id'], myjson['Size_Name']);
  }
}
//-------------------------5.FetchBrand------------

class FetchBrandApi {
  final String status, msg;
  final List<FetchBrandData> FetchBrandDatalist;

  FetchBrandApi(this.status, this.msg, this.FetchBrandDatalist);
  factory FetchBrandApi.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return FetchBrandApi(myjson['status'], myjson['msg'],
        List<FetchBrandData>.from(list.map((e) => FetchBrandData.formJson(e))));
  }
}

class FetchBrandData {
  final int Brand_Id;
  final String Brand_Name;

  FetchBrandData(this.Brand_Id, this.Brand_Name);
  factory FetchBrandData.formJson(Map<String, dynamic> myjson) {
    return FetchBrandData(myjson['Brand_Id'], myjson['Brand_Name']);
  }
}

//--------------------------6.FetchUnit----------------------------

class FetchUnitApi {
  final String status, msg;
  final List<FetchUnitData> FetchUnitDatalist;

  FetchUnitApi(this.status, this.msg, this.FetchUnitDatalist);
  factory FetchUnitApi.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return FetchUnitApi(myjson['status'], myjson['msg'],
        List<FetchUnitData>.from(list.map((e) => FetchUnitData.formJson(e))));
  }
}

class FetchUnitData {
  final int Unit_Id;
  final String Unit_Name;

  FetchUnitData(this.Unit_Id, this.Unit_Name);
  factory FetchUnitData.formJson(Map<String, dynamic> myjson) {
    return FetchUnitData(myjson['Unit_Id'], myjson['Unit_Name']);
  }
}

//-------------------------7.FetchTax-------------------

class FetchTaxApi {
  final String status, msg;
  final List<FetchTaxData> FetchTaxDatalist;

  FetchTaxApi(this.status, this.msg, this.FetchTaxDatalist);
  factory FetchTaxApi.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return FetchTaxApi(myjson['status'], myjson['msg'],
        List<FetchTaxData>.from(list.map((e) => FetchTaxData.formJson(e))));
  }
}

class FetchTaxData {
  final String Tax_Name, Type;
  final int Tax_Id;

  FetchTaxData(this.Tax_Name, this.Type, this.Tax_Id);
  factory FetchTaxData.formJson(Map<String, dynamic> myjson) {
    return FetchTaxData(myjson['Tax_Name'], myjson['Type'], myjson['Tax_Id']);
  }
}

//-------------------------------8.FetchTaxcategoryand subcategory---------------

class TaxCatgorySubCategory {
  TaxCatgorySubCategory({
    required this.taxCategoryList,
  });

  List<TaxCategoryList> taxCategoryList;

  factory TaxCatgorySubCategory.fromJson(Map<String, dynamic> json) =>
      TaxCatgorySubCategory(
        taxCategoryList: List<TaxCategoryList>.from(
            json["TaxCategoryList"].map((x) => TaxCategoryList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "TaxCategoryList":
            List<dynamic>.from(taxCategoryList.map((x) => x.toJson())),
      };
}

class TaxCategoryList {
  TaxCategoryList({
    required this.taxId,
    required this.taxName,
    required this.subTaxcategorylist,
  });

  String taxId;
  String taxName;
  List<SubTaxcategorylist> subTaxcategorylist;

  factory TaxCategoryList.fromJson(Map<String, dynamic> json) =>
      TaxCategoryList(
        taxId: json["Tax_Id"],
        taxName: json["Tax_Name"],
        subTaxcategorylist: List<SubTaxcategorylist>.from(
            json["subTaxcategorylist"]
                .map((x) => SubTaxcategorylist.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Tax_Id": taxId,
        "Tax_Name": taxName,
        "subTaxcategorylist":
            List<dynamic>.from(subTaxcategorylist.map((x) => x.toJson())),
      };
}

class SubTaxcategorylist {
  SubTaxcategorylist({
    required this.subtaxId,
    required this.subtaxName,
    required this.value,
  });

  String subtaxId;
  String subtaxName;
  String value;

  factory SubTaxcategorylist.fromJson(Map<String, dynamic> json) =>
      SubTaxcategorylist(
        subtaxId: json["Subtax_Id"],
        subtaxName: json["Subtax_Name"],
        value: json["Value"],
      );

  Map<String, dynamic> toJson() => {
        "Subtax_Id": subtaxId,
        "Subtax_Name": subtaxName,
        "Value": value,
      };
}
