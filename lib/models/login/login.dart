class LoginModel {
  bool? success;
  int? statusCode;
  Null description;
  List<Data>? data;

  LoginModel({this.success, this.statusCode, this.description, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    statusCode = json['StatusCode'];
    description = json['Description'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Success'] = success;
    data['StatusCode'] = statusCode;
    data['Description'] = description;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? userIdInt;
  String? userId;
  String? userFirstName;
  String? userLastName;
  Null userGenderId;
  String? userEmail;
  Null userCountryId;
  Null countryName;
  String? userPassword;
  Null userAddress;
  Null userCity;
  Null userPostalCode;
  Null userProvinceId;
  Null provinceName;
  Null userPhoneNumber;
  bool? isUserActive;
  String? userRoleID;
  String? userRole;
  Null recoveryTocken;
  Null recoveryTockenExpiredAt;
  Null isMember;
  Null isCurrentlySecondarySchool;
  Null schoolName;
  Null schoolGrade;

  Data({
    this.userIdInt,
    this.userId,
    this.userFirstName,
    this.userLastName,
    this.userGenderId,
    this.userEmail,
    this.userCountryId,
    this.countryName,
    this.userPassword,
    this.userAddress,
    this.userCity,
    this.userPostalCode,
    this.userProvinceId,
    this.provinceName,
    this.userPhoneNumber,
    this.isUserActive,
    this.userRoleID,
    this.userRole,
    this.recoveryTocken,
    this.recoveryTockenExpiredAt,
    this.isMember,
    this.isCurrentlySecondarySchool,
    this.schoolName,
    this.schoolGrade,
  });

  Data.fromJson(Map<String, dynamic> json) {
    userIdInt = json['UserId_Int'];
    userId = json['UserId'];
    userFirstName = json['UserFirstName'];
    userLastName = json['UserLastName'];
    userGenderId = json['UserGenderId'];
    userEmail = json['UserEmail'];
    userCountryId = json['UserCountryId'];
    countryName = json['CountryName'];
    userPassword = json['UserPassword'];
    userAddress = json['UserAddress'];
    userCity = json['UserCity'];
    userPostalCode = json['UserPostalCode'];
    userProvinceId = json['UserProvinceId'];
    provinceName = json['ProvinceName'];
    userPhoneNumber = json['UserPhoneNumber'];
    isUserActive = json['IsUserActive'];
    userRoleID = json['UserRoleID'];
    userRole = json['UserRole'];
    recoveryTocken = json['RecoveryTocken'];
    recoveryTockenExpiredAt = json['RecoveryTockenExpiredAt'];
    isMember = json['IsMember'];
    isCurrentlySecondarySchool = json['IsCurrentlySecondarySchool'];
    schoolName = json['SchoolName'];
    schoolGrade = json['SchoolGrade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserId_Int'] = userIdInt;
    data['UserId'] = userId;
    data['UserFirstName'] = userFirstName;
    data['UserLastName'] = userLastName;
    data['UserGenderId'] = userGenderId;
    data['UserEmail'] = userEmail;
    data['UserCountryId'] = userCountryId;
    data['CountryName'] = countryName;
    data['UserPassword'] = userPassword;
    data['UserAddress'] = userAddress;
    data['UserCity'] = userCity;
    data['UserPostalCode'] = userPostalCode;
    data['UserProvinceId'] = userProvinceId;
    data['ProvinceName'] = provinceName;
    data['UserPhoneNumber'] = userPhoneNumber;
    data['IsUserActive'] = isUserActive;
    data['UserRoleID'] = userRoleID;
    data['UserRole'] = userRole;
    data['RecoveryTocken'] = recoveryTocken;
    data['RecoveryTockenExpiredAt'] = recoveryTockenExpiredAt;
    data['IsMember'] = isMember;
    data['IsCurrentlySecondarySchool'] = isCurrentlySecondarySchool;
    data['SchoolName'] = schoolName;
    data['SchoolGrade'] = schoolGrade;
    return data;
  }
}
