import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_mobile_template/view/home/service/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';

/// [HomeBloc] is not a correct naming. Named as such as an example,
/// please edit here according to the project's requirements.

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeService homeService;
  HomeBloc(this.homeService) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
  }
}
