import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitStates extends Equatable {}

// Every App that uses Cubit must contain one initial state.
class InitialState extends CubitStates {
  @override
  // TODO: implement props
  // return data
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);

  final List<DataModel> places;

  @override
  // TODO: implement props
  List<Object> get props => [places];
}
