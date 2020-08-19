import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portafolio_flutter/src/pages/validaciones/validacion_form.dart';


  final TextEditingController _name =  TextEditingController();
  final TextEditingController _emailc =  TextEditingController();

  String _nombre;
  String _correo;


    //pagina de alerta con los terminos y condiciones de uso
      // ignore: non_constant_identifier_names
      Future<void> ContactPages(BuildContext context) async {
        final _sizeScreen = MediaQuery.of(context).size;
        //creamos la estructura de la ventana dialogo
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context){
            return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                actions: <Widget> [
                  Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Text("Contact Me", style: TextStyle(fontSize: 20),),

                          FlatButton(
                            child: Icon(Icons.close, size: 20,),
                            onPressed: ()=> Navigator.of(context).pop()
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: 400,
                       height: _sizeScreen.height/2,
                       child: SingleChildScrollView(
                         child: Column(
                           children:<Widget>[
                              _email(_correo),
                              _texto('Escriba su mensaje', 'Me gustaria contactarle para...', const Icon(Icons.text_fields, color: Colors.white,),TextInputType.text, _nombre,_name),
                              _btnEnviar(context),
                           ],
                         ),
                     ),
                    ),
                  ],
                ),
                ]
            );
          }
        );
      }

  //widget que creara la caja numerica para el telefono
  Widget _texto(String a, String b, Icon i, TextInputType t, String s, TextEditingController ed){
    //caja de texto que obtiene los parametros del widget
    final texto = TextFormField(
        validator: validateName,
        onSaved: (val) => ed.text = s = val,
        controller: ed,
        keyboardType: t,
        maxLength: 300,
        maxLines: 10,
        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0), 
          ),
          labelText: a,
          hintText: b,
          icon: i,
          alignLabelWithHint: true,
          labelStyle: const TextStyle(color: Colors.white,),
          hintStyle: const TextStyle(color: Colors.white),
          fillColor: Colors.white24, 
          filled: true,
        )
    );

    //retorna container con una caja de texto llamada en el chiel
    return SafeArea(
      child: Container(
        width: 350.0,
        child: texto,
      ),
    );
  }

  Widget _email(String c){
    final texto = TextFormField(
        validator: validateEmail,
        onSaved: (val) => _emailc.text = c = val,
        controller: _emailc,
        keyboardType: TextInputType.emailAddress,
        maxLength: 50,
        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0), 
          ),
          labelText: 'Correo',
          hintText: 'Ingrese su correo',
          icon: const Icon(Icons.email, color: Colors.white,),
          labelStyle: const TextStyle(color: Colors.white,),
          hintStyle: const TextStyle(color: Colors.white),
          fillColor: Colors.white24, 
          filled: true,
        )
    );

    //retorna container con una caja de texto llamada en el chiel
    return SafeArea(
      child: Container(
        width: 350.0,
        child: texto,
      ),
    );
  }

  Widget _btnEnviar(BuildContext context){

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width/4.5,
        child: OutlineButton(
          borderSide: const BorderSide(
            color: Colors.white
          ),
          textColor: Colors.white,
           shape: const StadiumBorder(),
          onPressed: (){
          },
          child: const Text("Send", style: TextStyle(fontSize: 20.0),),
        ),
      ),
    );
  }