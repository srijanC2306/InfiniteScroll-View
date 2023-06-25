abstract class SignInEvent{}

class SignInTextChangeEvent extends SignInEvent{
  final String emailValue ;
  final String passwordValue ;
  SignInTextChangeEvent({required this.emailValue, required this.passwordValue});
}

class SignInSubmittedEvent extends SignInEvent{
  final String email ;
  final String password ;
  SignInSubmittedEvent(this.email , this.password) ;





}