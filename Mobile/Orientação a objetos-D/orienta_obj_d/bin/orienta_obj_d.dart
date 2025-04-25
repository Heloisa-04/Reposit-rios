class User{

}


abstract class Auth{
  User login(String email, String senha);
  User registro(String email, String senha);
  User alterarSenha(String senhaAntiga, String senhaNova);
  void logout();
}

class AuthViaApi implements Auth{
  @override

  User alterarSenha(String senhaAntiga, String senhaNova) {

   return User();
  }

  @override
  User login(String email, String senha) {

    return User();
  }

  @override
  void logout() {

  }

  @override
  User registro(String email, String senha) {
    
    return User();
  }
}



class AuthViaBd implements Auth{
  @override
  User alterarSenha(String senhaAntiga, String senhaNova) {
    
    return User();
  }

  @override
  User login(String email, String senha) {
   
    return User();
  }

  @override
  void logout() {
    
  }

  @override
  User registro(String email, String senha) {
   
    return User();
  }


}

class AuthViaCsv implements Auth{
  @override
  User alterarSenha(String senhaAntiga, String senhaNova) {
    // TODO: implement alterarSenha
    throw UnimplementedError();
  }

  @override
  User login(String email, String senha) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void logout() {
    // TODO: implement logout
  }

  @override
  User registro(String email, String senha) {
    // TODO: implement registro
    throw UnimplementedError();
  }

  
}
void main(){ 
  Auth auth = AuthViaCsv();
  User user= auth.login ('Heloisa','Audiocodes405!!');
  print(user);
}