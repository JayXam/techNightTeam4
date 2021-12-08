class FieldValidator {
    static String validateFirstName(String value) {
        if (value.isEmpty) return 'Enter First Name!';
        
        return null;
    }
    
    static String validateLastName(String value) {
        if (value.isEmpty) return 'Enter Last Name!';
        
        return null;
    }
    
    static String validateEmail(String value) {
        if (value.isEmpty) return 'Enter Email!';
        
        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
        if (!emailValid) {
            return 'Enter Valid Email!';
        }
        
        return null;
    }
    
    static String validatePhone(String value) {
        if (value.isEmpty) return 'Enter Phone Number!';
        
        return null;
    }
}


