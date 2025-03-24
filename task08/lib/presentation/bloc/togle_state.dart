class TogleState {
  final bool isOn;
  final String email;
  final String password;

  TogleState({
    required this.isOn,
    this.email = "",
    this.password = "",
  });

  TogleState copyWith({
    bool? isOn,
    final String? email,
    final String? password,
  }) {
    return TogleState(
      isOn: isOn ?? this.isOn,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
