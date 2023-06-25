abstract class SignInState{}

class SignInInitialState extends SignInState{}

class SignInInvalidState extends SignInState{}

class SignInValidState extends SignInState{}

class SignInErrorStateEmail extends SignInState{
  final String errorMessage ;
  SignInErrorStateEmail(this.errorMessage);
}


class SignInErrorStatePassword extends SignInState{
  final String errorMessage ;
  SignInErrorStatePassword(this.errorMessage);
}
