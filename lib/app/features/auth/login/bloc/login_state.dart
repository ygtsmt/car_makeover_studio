part of "login_bloc.dart";

class LoginState extends Equatable {
  const LoginState({
    this.status = EventStatus.idle,
  });

  final EventStatus status;

  LoginState copyWith({
    final EventStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}
