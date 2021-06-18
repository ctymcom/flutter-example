import 'category.model.dart';

class Product {
  final String id;
  final String code;
  final String name;
  final List<String> categoryIds;
  final String barcode;
  final String origin;
  final List<dynamic> ingredientIds;
  final String packing;
  final String dosageForms;
  final String antibiotic;
  final String uses;
  final String indications;
  final String howToUse;
  final String contraindicated;
  final String interactions;
  final String sideEffects;
  final dynamic careful;
  final String overdose;
  final String preservation;
  final int volume;
  final int weight;
  final String color;
  final String size;
  final String unitCode;
  final String unit;
  final String description;
  final String byt;
  final String imageId;
  final int basePrice;
  final int salePrice;
  final List<String> containers;
  final dynamic saleRate;
  final dynamic outOfDate;
  final int viewCount;
  final int saleCount;
  final int highPriceCount;
  final int lowPriceCount;
  final DateTime syncAt;
  final List<Category> categories;
  final List<Ingredients> ingredients;
  final String image;
  final String imageS;
  final String imageM;
  final String imageL;
  final List<Tab> tabs;
  final List<TagDetail> tagDetails;
  final List<Product> relatedProducts;

  Product({
    this.relatedProducts,
    this.id,
    this.code,
    this.name,
    this.categoryIds,
    this.barcode,
    this.origin,
    this.ingredientIds,
    this.packing,
    this.dosageForms,
    this.antibiotic,
    this.uses,
    this.indications,
    this.howToUse,
    this.contraindicated,
    this.interactions,
    this.sideEffects,
    this.careful,
    this.overdose,
    this.preservation,
    this.volume,
    this.weight,
    this.color,
    this.size,
    this.unitCode,
    this.unit,
    this.description,
    this.byt,
    this.imageId,
    this.basePrice,
    this.salePrice,
    this.containers,
    this.saleRate,
    this.outOfDate,
    this.viewCount,
    this.saleCount,
    this.highPriceCount,
    this.lowPriceCount,
    this.syncAt,
    this.categories,
    this.ingredients,
    this.image,
    this.imageS,
    this.imageM,
    this.imageL,
    this.tabs,
    this.tagDetails,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        code: json["code"],
        name: json["name"] == null ? null : json["name"],
        categoryIds: json["categoryIds"] == null
            ? null
            : List<String>.from(json["categoryIds"].map((x) => x)).toList(),
        barcode: json["barcode"] == null ? null : json["barcode"],
        origin: json["origin"] == null ? null : json["origin"],
        ingredientIds: json["ingredientIds"] == null
            ? null
            : List<dynamic>.from(json["ingredientIds"].map((x) => x)),
        packing: json["packing"] == null ? null : json["packing"],
        dosageForms: json["dosageForms"] == null ? null : json["dosageForms"],
        antibiotic: json["antibiotic"] == null ? null : json["antibiotic"],
        uses: json["uses"] == null ? null : json["uses"],
        indications: json["indications"] == null ? null : json["indications"],
        howToUse: json["howToUse"] == null ? null : json["howToUse"],
        contraindicated:
            json["contraindicated"] == null ? null : json["contraindicated"],
        interactions:
            json["interactions"] == null ? null : json["interactions"],
        sideEffects: json["sideEffects"] == null ? null : json["sideEffects"],
        careful: json["careful"] == null ? null : json["careful"],
        overdose: json["overdose"] == null ? null : json["overdose"],
        preservation:
            json["preservation"] == null ? null : json["preservation"],
        volume: json["volume"] == null ? null : json["volume"],
        weight: json["weight"] == null ? null : json["weight"],
        color: json["color"] == null ? null : json["color"],
        size: json["size"] == null ? null : json["size"],
        unitCode: json["unitCode"] == null ? null : json["unitCode"],
        unit: json["unit"] == null ? null : json["unit"],
        description: json["description"] == null ? null : json["description"],
        byt: json["byt"] == null ? null : json["byt"],
        imageId: json["imageId"] == null ? null : json["imageId"],
        basePrice: json["basePrice"] == null ? null : json["basePrice"],
        salePrice: json["salePrice"] == null ? null : json["salePrice"],
        containers: json["containers"] == null
            ? null
            : List<String>.from(json["containers"].map((x) => x)).toList(),
        saleRate: json["saleRate"] == null ? null : json["saleRate"],
        outOfDate: json["outOfDate"] == null ? null : json["outOfDate"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        saleCount: json["saleCount"] == null ? null : json["saleCount"],
        highPriceCount:
            json["highPriceCount"] == null ? null : json["highPriceCount"],
        lowPriceCount:
            json["lowPriceCount"] == null ? null : json["lowPriceCount"],
        syncAt: json["syncAt"] == null ? null : DateTime.parse(json["syncAt"]),
        categories: json["categories"] == null
            ? null
            : List<Category>.from(
                json["categories"].map((x) => Category.fromJson(x))),
        ingredients: json["ingredients"] == null
            ? null
            : List<Ingredients>.from(
                    json["ingredients"].map((x) => Ingredients.fromJson(x)))
                .toList(),
        image: json["image"] == null ? null : json["image"],
        imageS: json["imageS"] == null ? null : json["imageS"],
        imageM: json["imageM"] == null ? null : json["imageM"],
        imageL: json["imageL"] == null ? null : json["imageL"],
        tabs: json["tabs"] == null
            ? null
            : List<Tab>.from(json["tabs"].map((x) => Tab.fromJson(x))),
        tagDetails: json["tagDetails"] == null
            ? null
            : List<TagDetail>.from(
                json["tagDetails"].map((x) => TagDetail.fromJson(x))),
        relatedProducts: json["relatedProducts"] == null
            ? null
            : List<Product>.from(
                json["relatedProducts"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "categoryIds": categoryIds,
        "barcode": barcode,
        "origin": origin,
        "ingredientIds": ingredientIds == null
            ? null
            : List<dynamic>.from(ingredientIds.map((x) => x)),
        "packing": packing,
        "dosageForms": dosageForms,
        "antibiotic": antibiotic,
        "uses": uses,
        "indications": indications,
        "howToUse": howToUse,
        "contraindicated": contraindicated,
        "interactions": interactions,
        "sideEffects": sideEffects,
        "careful": careful,
        "overdose": overdose,
        "preservation": preservation,
        "volume": volume,
        "weight": weight,
        "color": color,
        "size": size,
        "unitCode": unitCode,
        "unit": unit,
        "description": description,
        "byt": byt,
        "imageId": imageId == null ? null : imageId,
        "basePrice": basePrice,
        "salePrice": salePrice,
        "containers": containers,
        "saleRate": saleRate,
        "outOfDate": outOfDate,
        "viewCount": viewCount,
        "saleCount": saleCount,
        "highPriceCount": highPriceCount,
        "lowPriceCount": lowPriceCount,
        "syncAt": syncAt == null ? null : syncAt.toIso8601String(),
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories.map((x) => x.toJson())),
        "ingredients": ingredients == null
            ? null
            : List<dynamic>.from(ingredients.map((x) => x)),
        "image": image,
        "imageS": imageS,
        "imageM": imageM,
        "imageL": imageL,
        "tabs": tabs == null
            ? null
            : List<dynamic>.from(tabs.map((x) => x.toJson())),
        "tagDetails": tagDetails == null
            ? null
            : List<dynamic>.from(tagDetails.map((x) => x.toJson())),
        "relatedProducts": relatedProducts == null
            ? null
            : List<dynamic>.from(relatedProducts.map((x) => x.toJson())),
      };
}

class Tab {
  Tab({
    this.name,
    this.name2,
    this.content,
  });

  String name;
  String name2;
  String content;

  factory Tab.fromJson(Map<String, dynamic> json) => Tab(
        name: json["name"],
        name2: json["name2"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "name2": name2,
        "content": content,
      };
}

class TagDetail {
  TagDetail({
    this.code,
    this.name,
    this.name2,
    this.color,
    this.icon,
    this.position,
    this.outOfDate,
  });

  String code;
  String name;
  String name2;
  String color;
  String icon;
  int position;
  dynamic outOfDate;

  factory TagDetail.fromJson(Map<String, dynamic> json) => TagDetail(
        code: json["code"],
        name: json["name"],
        name2: json["name2"],
        color: json["color"],
        icon: json["icon"],
        position: json["position"],
        outOfDate: json["outOfDate"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "name2": name2,
        "color": color,
        "icon": icon,
        "position": position,
        "outOfDate": outOfDate,
      };
}

class Ingredients {
  final String id;
  final String name;
  final String code;
  Ingredients({this.id, this.name, this.code});

  factory Ingredients.fromJson(Map<String, dynamic> json) => Ingredients(
        id: json["id"],
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
      };
}
