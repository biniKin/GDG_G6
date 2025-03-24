import 'package:bloc/bloc.dart';
import 'package:task08/presentation/bloc/togle_event.dart';
import 'package:task08/presentation/bloc/togle_state.dart';

class TogleBloc extends Bloc<TogleEvent, TogleState> {
  TogleBloc() : super(TogleState(isOn: false)) {
    on<TogleVisibilityEvent>((event, emit) {
      emit(state.copyWith(isOn: !state.isOn));
    });
    on<ShowEmailEvent>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<ShowPasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }
}
