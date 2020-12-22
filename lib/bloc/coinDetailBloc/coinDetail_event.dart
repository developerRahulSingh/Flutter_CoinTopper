import 'package:cointopper/models/coindetail_response_model.dart';
import 'package:equatable/equatable.dart';

abstract class CoinDetailEvent extends Equatable {
  const CoinDetailEvent();

  @override
  List<Object> get props => [];
}

class LoadCoinDetail extends CoinDetailEvent {
  final String symbol;

  const LoadCoinDetail(this.symbol);

  @override
  List<String> get props => [symbol];
}

class UpdateCoinDetail extends CoinDetailEvent {
  final List<CoinDetailResponseModel> coinDetail;

  const UpdateCoinDetail(this.coinDetail);

  @override
  List<Object> get props => [coinDetail];
}