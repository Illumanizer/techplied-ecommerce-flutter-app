class Validator{
  static String? validateEmail(String? value){
    if(value!.isEmpty){
      return 'Email is required';
    }
    if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
      return 'Please enter a valid email';
    }
    return null;
  }
  static String? validatePassword(String? value){
    if(value!.isEmpty){
      return 'Password is required';
    }
    if(value.length<6){
      return 'Password must be at least 6 characters long';
    }

    if(!RegExp(r'^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
      return 'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character';
    }


    return null;
  }

  static String? validPhoneNumber(String? value){
    if(value!.isEmpty){
      return 'Phone number is required';
    }
    if(!RegExp(r'^[0-9]{10}$').hasMatch(value)){
      return 'Please enter a valid phone number';
    }
    return null;
  }
}