class FieldValidator {
    static bool validateFirstName(String value) {
        if (value.isEmpty) return false;
        
        return true;
    }
    
    static bool validateLastName(String value) {
        if (value.isEmpty) return false;
        
        return true;
    }
    
    static bool validateEmail(String value) {
        if (value.isEmpty) return false;
        
        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
        if (!emailValid) {
            return false;
        }
        
        return true;
    }
    
    static bool validatePhone(String value) {
        if (value.isEmpty) return false;
        
        return true;
    }
}


