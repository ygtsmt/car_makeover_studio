import 'package:equatable/equatable.dart';

part "last_coin_dto.g.dart";

class LastCoinDto extends Equatable {
  final int id;
  final String coinName;
  final double currentTradingPrice;
  final double totalVolume;
  final double changeInPrice;
  final double previousTradingPrice;
  final String marketName;
  final bool status;
  final String gmeUrl;
  final double totalVolumeBaseCurrency;
  final double last24HrsLow;
  final double last24HrsHigh;
  final double minTradeAmount;
  final double makerFee;
  final double takerFee;
  final double makerFeePro;
  final double takerFeePro;
  final double minTickSize;
  final double minOrderValue;
  final bool enableMarginTrading;
  final double maxSize;
  final double maxOrderAmount;
  final double maxMarketOrderSize;
  final bool isFixedFee;
  factory LastCoinDto.fromJson(final Map<String, dynamic> json) => _$LastCoinDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LastCoinDtoToJson(this);
  const LastCoinDto({
    required this.id,
    required this.coinName,
    required this.currentTradingPrice,
    required this.totalVolume,
    required this.changeInPrice,
    required this.previousTradingPrice,
    required this.marketName,
    required this.status,
    required this.gmeUrl,
    required this.totalVolumeBaseCurrency,
    required this.last24HrsLow,
    required this.last24HrsHigh,
    required this.minTradeAmount,
    required this.makerFee,
    required this.takerFee,
    required this.makerFeePro,
    required this.takerFeePro,
    required this.minTickSize,
    required this.minOrderValue,
    required this.enableMarginTrading,
    required this.maxSize,
    required this.maxOrderAmount,
    required this.maxMarketOrderSize,
    required this.isFixedFee,
  });
  @override
  List<Object?> get props => [
        id,
        coinName,
        currentTradingPrice,
        totalVolume,
        changeInPrice,
        previousTradingPrice,
        marketName,
        status,
        gmeUrl,
        totalVolumeBaseCurrency,
        last24HrsLow,
        last24HrsHigh,
        minTradeAmount,
        makerFee,
        takerFee,
        makerFeePro,
        takerFeePro,
        minTickSize,
        minOrderValue,
        enableMarginTrading,
        maxSize,
        maxOrderAmount,
        maxMarketOrderSize,
        isFixedFee,
      ];
}
