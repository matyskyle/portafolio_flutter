//VALIDACIONES
  String validateName(String value){
    const String patttern = r'(^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]+$)';
    final RegExp regExp = RegExp(patttern);
    if (value.isEmpty) {
      return "Obligatorio";
    } else if (!regExp.hasMatch(value.trim())) {
      return "Solo ingrese letras";
    }
    return null;
  }

  String validateMobile(String value) {
    const String patttern = r'(^[0-9]*$)';
    final RegExp regExp = RegExp(patttern);
    if (value.isEmpty) {
      return "Ingrese telefono";
    } else if(value.length != 9){
      return "Debe contener 9 digitos";
    }else if (!regExp.hasMatch(value)) {
      return "Supero el maximo de digitos";
    }
    return null;
  }

   String validateEmail(String value) {
    const String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Correo requerido";
    } else if(!regExp.hasMatch(value.trim())){
      return "Correo invalido";
    }else {
      return null;
    }
  }

  String validatePass(String value) {
    if (value.isEmpty) {
      return "Contraseña requerida";
    } else if (value.length < 6 && value.isNotEmpty) {
      return "Contraseña debe contener minimo 6 caracteres";
    }
    return null;
  }