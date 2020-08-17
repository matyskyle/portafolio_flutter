import 'package:flutter/material.dart';

    //pagina de alerta con los terminos y condiciones de uso
      void ContactPages(BuildContext context){
        final _sizeScreen = MediaQuery.of(context).size;
        //creamos la estructura de la ventana dialogo
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context){
            return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              content: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        const Text("Contact Me"),

                        FlatButton(
                          child: Icon(Icons.close, size: 13,),
                          onPressed: ()=> Navigator.of(context).pop()
                        ),
                      ],
                    ),
                  ),

                  Container(
                     height: _sizeScreen.height - 200,
                     child: SingleChildScrollView(
                       child: Column(
                         children:<Widget>[
                          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor congue urna non consectetur. Curabitur at nisl vel mi pharetra laoreet. Aenean maximus enim at scelerisque luctus. Nullam commodo at dui sit amet pulvinar. Etiam felis dolor, volutpat non leo id, varius consectetur velit. Vestibulum scelerisque velit non erat hendrerit, non dictum quam porta. Donec et ipsum ac neque fermentum suscipit a dignissim turpis. Curabitur finibus elementum pellentesque. Sed rhoncus aliquam elit et tempor. Pellentesque elementum libero commodo pretium porta. In quis ultricies augue, vel aliquam massa. Cras vel turpis sem.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,),
                          const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor congue urna non consectetur. Curabitur at nisl vel mi pharetra laoreet. Aenean maximus enim at scelerisque luctus. Nullam commodo at dui sit amet pulvinar. Etiam felis dolor, volutpat non leo id, varius consectetur velit. Vestibulum scelerisque velit non erat hendrerit, non dictum quam porta. Donec et ipsum ac neque fermentum suscipit a dignissim turpis. Curabitur finibus elementum pellentesque. Sed rhoncus aliquam elit et tempor. Pellentesque elementum libero commodo pretium porta. In quis ultricies augue, vel aliquam massa. Cras vel turpis sem.",
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.ltr,),
                         ],
                       ),
                   ),
                  ),
                ],
              ),
            );
          }
        );
      }