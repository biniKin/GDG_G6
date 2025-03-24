abstract class TogleEvent {}

class TogleVisibilityEvent extends TogleEvent {}

class ShowEmailEvent extends TogleEvent {
  final String email;
  ShowEmailEvent({required this.email});
}

class ShowPasswordEvent extends TogleEvent {
  final String password;
  ShowPasswordEvent({required this.password});
}
