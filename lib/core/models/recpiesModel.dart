import 'package:hive/hive.dart';
part 'recpiesModel.g.dart'; 
@HiveType(typeId: 0)
class Recpies extends HiveObject{
  @HiveField(0)
  String? idMeal;
  @HiveField(1)
  String? strMeal;
  @HiveField(2)
  Null? strDrinkAlternate;
  @HiveField(3)
  String? strCategory;
  @HiveField(4)
  String? strArea;
  @HiveField(5)
  String? strInstructions;
  @HiveField(6)
  String? strMealThumb;
  @HiveField(7)
  String? strTags;
  @HiveField(8)
  String? strYoutube;
  @HiveField(9)
  String? strIngredient1;
  @HiveField(10)
  String? strIngredient2;
  @HiveField(11)
  String? strIngredient3;
  @HiveField(12)
  String? strIngredient4;
  @HiveField(13)
  String? strIngredient5;
  @HiveField(14)
  String? strIngredient6;
  @HiveField(15)
  String? strIngredient7;
  @HiveField(16)
  String? strIngredient8;
  @HiveField(17)
  String? strIngredient9;
  @HiveField(18)
  String? strIngredient10;
  @HiveField(19)
  String? strIngredient11;
  @HiveField(20)
  String? strIngredient12;
  @HiveField(21)
  String? strIngredient13;
  @HiveField(22)
  String? strIngredient14;
  @HiveField(23)
  String? strIngredient15;
  @HiveField(24)
  String? strIngredient16;
  @HiveField(25)
  String? strIngredient17;
  @HiveField(26)
  String? strIngredient18;
  @HiveField(27)
  String? strIngredient19;
  @HiveField(28)
  String? strIngredient20;
  @HiveField(29)
  String? strMeasure1;
  @HiveField(30)
  String? strMeasure2;
  @HiveField(31)
  String? strMeasure3;
  @HiveField(32)
  String? strMeasure4;
  @HiveField(33)
  String? strMeasure5;
  @HiveField(34)
  String? strMeasure6;
  @HiveField(35)
  String? strMeasure7;
  @HiveField(36)
  String? strMeasure8;
  @HiveField(37)
  String? strMeasure9;
  @HiveField(38)
  String? strMeasure10;
  @HiveField(39)
  String? strMeasure11;
  @HiveField(40)
  String? strMeasure12;
  @HiveField(41)
  String? strMeasure13;
  @HiveField(42)
  String? strMeasure14;
  @HiveField(43)
  String? strMeasure15;
  @HiveField(44)
  String? strMeasure16;
  @HiveField(45)
  String? strMeasure17;
  @HiveField(46)
  String? strMeasure18;
  @HiveField(47)
  String? strMeasure19;
  @HiveField(48)
  String? strMeasure20;
  @HiveField(49)
  String? strSource;
  @HiveField(50)
  Null? strImageSource;
  @HiveField(51)
  Null? strCreativeCommonsConfirmed;
  @HiveField(52)
  Null? dateModified;

  Recpies(
      {this.idMeal,
      this.strMeal,
      this.strDrinkAlternate,
      this.strCategory,
      this.strArea,
      this.strInstructions,
      this.strMealThumb,
      this.strTags,
      this.strYoutube,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20,
      this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

 Recpies.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strDrinkAlternate = json['strDrinkAlternate'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    strTags = json['strTags'];
    strYoutube = json['strYoutube'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = json['strIngredient3'];
    strIngredient4 = json['strIngredient4'];
    strIngredient5 = json['strIngredient5'];
    strIngredient6 = json['strIngredient6'];
    strIngredient7 = json['strIngredient7'];
    strIngredient8 = json['strIngredient8'];
    strIngredient9 = json['strIngredient9'];
    strIngredient10 = json['strIngredient10'];
    strIngredient11 = json['strIngredient11'];
    strIngredient12 = json['strIngredient12'];
    strIngredient13 = json['strIngredient13'];
    strIngredient14 = json['strIngredient14'];
    strIngredient15 = json['strIngredient15'];
    strIngredient16 = json['strIngredient16'];
    strIngredient17 = json['strIngredient17'];
    strIngredient18 = json['strIngredient18'];
    strIngredient19 = json['strIngredient19'];
    strIngredient20 = json['strIngredient20'];
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = json['strMeasure3'];
    strMeasure4 = json['strMeasure4'];
    strMeasure5 = json['strMeasure5'];
    strMeasure6 = json['strMeasure6'];
    strMeasure7 = json['strMeasure7'];
    strMeasure8 = json['strMeasure8'];
    strMeasure9 = json['strMeasure9'];
    strMeasure10 = json['strMeasure10'];
    strMeasure11 = json['strMeasure11'];
    strMeasure12 = json['strMeasure12'];
    strMeasure13 = json['strMeasure13'];
    strMeasure14 = json['strMeasure14'];
    strMeasure15 = json['strMeasure15'];
    strMeasure16 = json['strMeasure16'];
    strMeasure17 = json['strMeasure17'];
    strMeasure18 = json['strMeasure18'];
    strMeasure19 = json['strMeasure19'];
    strMeasure20 = json['strMeasure20'];
    strSource = json['strSource'];
    strImageSource = json['strImageSource'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strDrinkAlternate'] = this.strDrinkAlternate;
    data['strCategory'] = this.strCategory;
    data['strArea'] = this.strArea;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    data['strTags'] = this.strTags;
    data['strYoutube'] = this.strYoutube;
    data['strIngredient1'] = this.strIngredient1;
    data['strIngredient2'] = this.strIngredient2;
    data['strIngredient3'] = this.strIngredient3;
    data['strIngredient4'] = this.strIngredient4;
    data['strIngredient5'] = this.strIngredient5;
    data['strIngredient6'] = this.strIngredient6;
    data['strIngredient7'] = this.strIngredient7;
    data['strIngredient8'] = this.strIngredient8;
    data['strIngredient9'] = this.strIngredient9;
    data['strIngredient10'] = this.strIngredient10;
    data['strIngredient11'] = this.strIngredient11;
    data['strIngredient12'] = this.strIngredient12;
    data['strIngredient13'] = this.strIngredient13;
    data['strIngredient14'] = this.strIngredient14;
    data['strIngredient15'] = this.strIngredient15;
    data['strIngredient16'] = this.strIngredient16;
    data['strIngredient17'] = this.strIngredient17;
    data['strIngredient18'] = this.strIngredient18;
    data['strIngredient19'] = this.strIngredient19;
    data['strIngredient20'] = this.strIngredient20;
    data['strMeasure1'] = this.strMeasure1;
    data['strMeasure2'] = this.strMeasure2;
    data['strMeasure3'] = this.strMeasure3;
    data['strMeasure4'] = this.strMeasure4;
    data['strMeasure5'] = this.strMeasure5;
    data['strMeasure6'] = this.strMeasure6;
    data['strMeasure7'] = this.strMeasure7;
    data['strMeasure8'] = this.strMeasure8;
    data['strMeasure9'] = this.strMeasure9;
    data['strMeasure10'] = this.strMeasure10;
    data['strMeasure11'] = this.strMeasure11;
    data['strMeasure12'] = this.strMeasure12;
    data['strMeasure13'] = this.strMeasure13;
    data['strMeasure14'] = this.strMeasure14;
    data['strMeasure15'] = this.strMeasure15;
    data['strMeasure16'] = this.strMeasure16;
    data['strMeasure17'] = this.strMeasure17;
    data['strMeasure18'] = this.strMeasure18;
    data['strMeasure19'] = this.strMeasure19;
    data['strMeasure20'] = this.strMeasure20;
    data['strSource'] = this.strSource;
    data['strImageSource'] = this.strImageSource;
    data['strCreativeCommonsConfirmed'] = this.strCreativeCommonsConfirmed;
    data['dateModified'] = this.dateModified;
    return data;
  }
}