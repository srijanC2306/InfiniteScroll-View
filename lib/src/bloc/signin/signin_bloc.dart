import 'package:base_code/src/bloc/signin/signin_event.dart';
import 'package:base_code/src/bloc/signin/signin_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent , SignInState>{

  SignInBloc():super(SignInInitialState()){

    on<SignInTextChangeEvent>((event, emit) => {
      if( !EmailValidator.validate(event.emailValue.trim())){
        emit(SignInErrorStateEmail("Please enter a valid email address"))
      }
      else  if(event.passwordValue.length <8){
        print("The password length is::${event.passwordValue.length}"),
        emit(SignInErrorStatePassword("Please length cannot be less than 8"))
      }else{
        emit(SignInValidState())
      }
    });
    on<SignInSubmittedEvent>((event, emit) => {
    });
    
  }
  
  
}