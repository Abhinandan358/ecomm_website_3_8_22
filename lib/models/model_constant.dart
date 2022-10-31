//------------------1.CategoryModel--------------------------------

// ignore_for_file: non_constant_identifier_names, constant_identifier_names

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

// class Welcome {
//   Welcome({
//     required this.categoryList,
//   });

//   List<CategoryList> categoryList;

//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         categoryList: List<CategoryList>.from(
//             json["CategoryList"].map((x) => CategoryList.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "CategoryList": List<dynamic>.from(categoryList.map((x) => x.toJson())),
//       };
// }

// class CategoryList {
//   CategoryList({
//     required this.catId,
//     required this.catName,
//     required this.subcategorylist,
//   });

//   String catId;
//   String catName;
//   List<Subcategorylist> subcategorylist;

//   factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
//         catId: json["Cat_Id"],
//         catName: json["Cat_Name"],
//         subcategorylist: List<Subcategorylist>.from(
//             json["subcategorylist"].map((x) => Subcategorylist.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "Cat_Id": catId,
//         "Cat_Name": catName,
//         "subcategorylist":
//             List<dynamic>.from(subcategorylist.map((x) => x.toJson())),
//       };
// }

// class Subcategorylist {
//   Subcategorylist({
//     required this.subId,
//     required this.subName,
//     required this.isActive,
//   });

//   String subId;
//   String subName;
//   String isActive;

//   factory Subcategorylist.fromJson(Map<String, dynamic> json) =>
//       Subcategorylist(
//         subId: json["Sub_Id"],
//         subName: json["SubName"],
//         isActive: json["IsActive"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Sub_Id": subId,
//         "SubName": subName,
//         "IsActive": isActive,
//       };
// }

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

// --------------------- Country Model new api  ------------------------

class CountryModel {
  final String status, msg;
  final List<CountryData> dataList;

  CountryModel(this.status, this.msg, this.dataList);
  factory CountryModel.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return CountryModel(myjson['status'], myjson['msg'],
        List<CountryData>.from(list.map((e) => CountryData.formJson(e))));
  }
}

class CountryData {
  final int id;
  final String Country;

  CountryData(this.id, this.Country);
  factory CountryData.formJson(Map<String, dynamic> myjson) {
    return CountryData(myjson['id'], myjson['Country']);
  }
}

//------------------------ FetchCategory Model new api------------------

class FetchCategoryApiModel1 {
  final String status, msg;
  final List<FetchCategoryData> dataList;

  FetchCategoryApiModel1(this.status, this.msg, this.dataList);
  factory FetchCategoryApiModel1.formJson(Map<String, dynamic> myjson) {
    List list = myjson['data'];
    return FetchCategoryApiModel1(
        myjson['status'],
        myjson['msg'],
        List<FetchCategoryData>.from(
            list.map((e) => FetchCategoryData.formJson(e))));
  }
}

class FetchCategoryData {
  final int Id;
  final String Name;
  final String? ImgUrl;

  FetchCategoryData(this.Id, this.Name, this.ImgUrl);
  factory FetchCategoryData.formJson(Map<String, dynamic> myjson) {
    return FetchCategoryData(myjson['Id'], myjson['Name'], myjson['ImgUrl']);
  }
}

//Category Against Sub Category new api -------------------------

class Subcategory {
  List<CategoryAgainstSubcategory> subcategoryList1 = [];
  Subcategory(this.subcategoryList1);
  factory Subcategory.formJson(Map<String, dynamic> myjson) {
    List list1 = myjson['CategoryList'];
    return Subcategory(List<CategoryAgainstSubcategory>.from(
        list1.map((e) => CategoryAgainstSubcategory.formJson(e))));
  }
}

class CategoryAgainstSubcategory {
  final String Cat_Id;
  final String Cat_Name;
  List<CategoryAgainstSubcategoryData> subcategoryList = [];

  CategoryAgainstSubcategory(this.Cat_Id, this.Cat_Name, this.subcategoryList);
  factory CategoryAgainstSubcategory.formJson(Map<String, dynamic> myjson) {
    List list = myjson['subcategorylist'];
    return CategoryAgainstSubcategory(
        myjson['Cat_Id'],
        myjson['Cat_Name'],
        List<CategoryAgainstSubcategoryData>.from(
            list.map((e) => CategoryAgainstSubcategoryData.formJson(e))));
  }
}

class CategoryAgainstSubcategoryData {
  final String Sub_Id;
  final String SubName;
  final String? ImgUrl;
  final String IsActive, Spacial;

  CategoryAgainstSubcategoryData(
      this.Sub_Id, this.SubName, this.ImgUrl, this.IsActive, this.Spacial);
  factory CategoryAgainstSubcategoryData.formJson(Map<String, dynamic> myjson) {
    return CategoryAgainstSubcategoryData(myjson['Sub_Id'], myjson['SubName'],
        myjson['ImgUrl'], myjson['IsActive'], myjson['Spacial']);
  }
}

// CountryAginstState ---------------------------------
class CountryStates {
  List<CountryAginstState> subcategorystateList1 = [];
  CountryStates(this.subcategorystateList1);
  factory CountryStates.formJson(Map<String, dynamic> myjson) {
    List list1 = myjson['CountryList'];
    return CountryStates(List<CountryAginstState>.from(
        list1.map((e) => CountryAginstState.formJson(e))));
  }
}

class CountryAginstState {
  final String Country_Id, Country_Name;
  List<CountryAginstStateData> countrystatelist = [];
  CountryAginstState(this.Country_Id, this.Country_Name, this.countrystatelist);
  factory CountryAginstState.formJson(Map<String, dynamic> myjson) {
    List list4 = myjson['Statelist'];
    return CountryAginstState(
        myjson['Country_Id'],
        myjson['Country_Name'],
        List<CountryAginstStateData>.from(
            list4.map((e) => CountryAginstStateData.formJson(e))));
  }
}

class CountryAginstStateData {
  final String State_Id, State_Name;

  CountryAginstStateData(this.State_Id, this.State_Name);
  factory CountryAginstStateData.formJson(Map<String, dynamic> myjson) {
    return CountryAginstStateData(myjson['State_Id'], myjson['State_Name']);
  }
}
