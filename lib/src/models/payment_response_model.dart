// To parse this JSON data, do
//
//     final paymentResponseModel = paymentResponseModelFromJson(jsonString);

// ignore_for_file: public_member_api_docs, sort_constructors_first, omit_local_variable_types

/// PaymentResponseModel
class PaymentResponseModel {
  Data2? data;

  PaymentResponseModel({this.data});

  PaymentResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data2.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data2 {
  bool? success;
  String? code;
  String? message;
  Data? data;

  Data2({this.success, this.code, this.message, this.data});

  Data2.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? merchantId;
  String? merchantTransactionId;
  InstrumentResponse? instrumentResponse;

  Data({this.merchantId, this.merchantTransactionId, this.instrumentResponse});

  Data.fromJson(Map<String, dynamic> json) {
    merchantId = json['merchantId'];
    merchantTransactionId = json['merchantTransactionId'];
    instrumentResponse = json['instrumentResponse'] != null
        ? InstrumentResponse.fromJson(json['instrumentResponse'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['merchantId'] = merchantId;
    data['merchantTransactionId'] = merchantTransactionId;
    if (instrumentResponse != null) {
      data['instrumentResponse'] = instrumentResponse!.toJson();
    }
    return data;
  }
}

class InstrumentResponse {
  String? type;
  RedirectInfo? redirectInfo;
  String? intentUrl;

  InstrumentResponse({
    this.type,
    this.redirectInfo,
    this.intentUrl,
  });

  InstrumentResponse.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    redirectInfo = json['redirectInfo'] != null
        ? RedirectInfo.fromJson(json['redirectInfo'])
        : null;
    intentUrl = json['intentUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    if (redirectInfo != null) {
      data['redirectInfo'] = redirectInfo!.toJson();
    }
    data['intentUrl'] = intentUrl;
    return data;
  }
}

class RedirectInfo {
  String? url;
  String? method;

  RedirectInfo({this.url, this.method});

  RedirectInfo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    method = json['method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['method'] = method;
    return data;
  }
}
