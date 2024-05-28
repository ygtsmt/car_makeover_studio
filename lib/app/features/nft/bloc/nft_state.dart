part of 'nft_bloc.dart';

abstract class NftState extends Equatable {
  const NftState();
  
  @override
  List<Object> get props => [];
}

class NftInitial extends NftState {}
