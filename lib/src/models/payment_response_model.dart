// To parse this JSON data, do
//
//     final paymentResponseModel = paymentResponseModelFromJson(jsonString);

import 'dart:developer';

import 'package:phone_pe_pg/phone_pe_pg.dart';

/// PaymentResponseModel
class PaymentResponseModel {
  Data2? data;

  PaymentResponseModel({this.data});

  PaymentResponseModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data2.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['code'] = this.code;
    data['message'] = this.message;
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
        ? new InstrumentResponse.fromJson(json['instrumentResponse'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchantId'] = this.merchantId;
    data['merchantTransactionId'] = this.merchantTransactionId;
    if (this.instrumentResponse != null) {
      data['instrumentResponse'] = this.instrumentResponse!.toJson();
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
        ? new RedirectInfo.fromJson(json['redirectInfo'])
        : null;
    intentUrl = json['intentUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.redirectInfo != null) {
      data['redirectInfo'] = this.redirectInfo!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['method'] = this.method;
    return data;
  }
}
