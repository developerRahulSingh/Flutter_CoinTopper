import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cointopper/bloc/coinDetailBloc/coinDetail_event.dart';
import 'package:cointopper/bloc/coinDetailBloc/coinDetail_state.dart';
import 'package:cointopper/repositories/repo.dart';
import 'package:meta/meta.dart';

class CoinDetailBloc extends Bloc<CoinDetailEvent, CoinDetailState> {
  final CoinTopperRepository coinTopperRepository;
  StreamSubscription _coinDetailSubscription;

  CoinDetailBloc({@required this.coinTopperRepository})
      : super(CoinDetailLoadInProgress());

  @override
  Stream<CoinDetailState> mapEventToState(CoinDetailEvent event) async* {
    if (event is LoadCoinDetail) {
      yield* _mapLoadCoinDetailState(event.symbol);
    }
    {
      if (event is UpdateCoinDetail) {
        yield* _mapUpdateCoinDetailState(event);
      }
    }
  }

  Stream<CoinDetailState> _mapLoadCoinDetailState(symbol) async* {
    _coinDetailSubscription?.cancel();
    _coinDetailSubscription =
        coinTopperRepository.loadCoinDetailsList(symbol).listen(
              (list) => add(UpdateCoinDetail(list)),
            );
  }

  Stream<CoinDetailState> _mapUpdateCoinDetailState(
      UpdateCoinDetail event) async* {
    yield CoinDetailLoadSuccess(event.coinDetail);
  }

  @override
  Future<void> close() {
    _coinDetailSubscription?.cancel();
    return super.close();
  }
}
