// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastCoinDto _$LastCoinDtoFromJson(Map<String, dynamic> json) => LastCoinDto(
      id: (json['id'] as num).toInt(),
      coinName: json['coinName'] as String,
      currentTradingPrice: (json['currentTradingPrice'] as num).toDouble(),
      totalVolume: (json['totalVolume'] as num).toDouble(),
      changeInPrice: (json['changeInPrice'] as num).toDouble(),
      previousTradingPrice: (json['previousTradingPrice'] as num).toDouble(),
      marketName: json['marketName'] as String,
      status: json['status'] as bool,
      gmeUrl: json['gmeUrl'] as String,
      totalVolumeBaseCurrency:
          (json['totalVolumeBaseCurrency'] as num).toDouble(),
      last24HrsLow: (json['last24HrsLow'] as num).toDouble(),
      last24HrsHigh: (json['last24HrsHigh'] as num).toDouble(),
      minTradeAmount: (json['minTradeAmount'] as num).toDouble(),
      makerFee: (json['makerFee'] as num).toDouble(),
      takerFee: (json['takerFee'] as num).toDouble(),
      makerFeePro: (json['makerFeePro'] as num).toDouble(),
      takerFeePro: (json['takerFeePro'] as num).toDouble(),
      minTickSize: (json['minTickSize'] as num).toDouble(),
      minOrderValue: (json['minOrderValue'] as num).toDouble(),
      enableMarginTrading: json['enableMarginTrading'] as bool,
      maxSize: (json['maxSize'] as num).toDouble(),
      maxOrderAmount: (json['maxOrderAmount'] as num).toDouble(),
      maxMarketOrderSize: (json['maxMarketOrderSize'] as num).toDouble(),
      isFixedFee: json['isFixedFee'] as bool,
    );

Map<String, dynamic> _$LastCoinDtoToJson(LastCoinDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coinName': instance.coinName,
      'currentTradingPrice': instance.currentTradingPrice,
      'totalVolume': instance.totalVolume,
      'changeInPrice': instance.changeInPrice,
      'previousTradingPrice': instance.previousTradingPrice,
      'marketName': instance.marketName,
      'status': instance.status,
      'gmeUrl': instance.gmeUrl,
      'totalVolumeBaseCurrency': instance.totalVolumeBaseCurrency,
      'last24HrsLow': instance.last24HrsLow,
      'last24HrsHigh': instance.last24HrsHigh,
      'minTradeAmount': instance.minTradeAmount,
      'makerFee': instance.makerFee,
      'takerFee': instance.takerFee,
      'makerFeePro': instance.makerFeePro,
      'takerFeePro': instance.takerFeePro,
      'minTickSize': instance.minTickSize,
      'minOrderValue': instance.minOrderValue,
      'enableMarginTrading': instance.enableMarginTrading,
      'maxSize': instance.maxSize,
      'maxOrderAmount': instance.maxOrderAmount,
      'maxMarketOrderSize': instance.maxMarketOrderSize,
      'isFixedFee': instance.isFixedFee,
    };
