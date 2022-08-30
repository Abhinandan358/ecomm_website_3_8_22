//-------------CategoryModel--------------------------------

// ignore_for_file: non_constant_identifier_names

class CategoryApiModel {
  final String status, msg;
  final List<CategoryData> dataList;

  CategoryApiModel(this.status, this.msg, this.dataList);
  
  factory CategoryApiModel.formJson(Map<String,dynamic> myjson){
    List list = myjson['data'];
    return CategoryApiModel(myjson['status'], myjson['msg'], List<CategoryData>.from(list.map((e) => CategoryData.formJson(e))));
  }
}

class CategoryData {
  // ignore: non_constant_identifier_names
  final int Cat_Id;
  final String Cat_Name,ImgUrl;

  CategoryData(this.Cat_Id, this.Cat_Name, this.ImgUrl);
  factory CategoryData.formJson(Map<String, dynamic> myjson) {
    return CategoryData(myjson['Cat_Id'], myjson['Cat_Name'],myjson['ImgUrl']);
  }
}

//------------------CategoryColor Model --------------------

class CategoryColorModel{
  final String status,msg;
  final List<CategoryColorData> dataList1;

  CategoryColorModel(this.status, this.msg, this.dataList1);
  factory CategoryColorModel.formJson(Map<String,dynamic> myjson){
     List list1 = myjson['data'];
    return CategoryColorModel(myjson['status'], myjson['msg'], List<CategoryColorData>.from(list1.map((e) => CategoryColorData.formJson(e))));
  }
}

class CategoryColorData {
  final int Color_Id;
  final String Color_Name;

  CategoryColorData(this.Color_Id, this.Color_Name);
  factory CategoryColorData.formJson(Map<String, dynamic> myjson){
    return CategoryColorData(myjson['Color_Id'], myjson['Color_Name']);
  }
}