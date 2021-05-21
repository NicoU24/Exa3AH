import 'package:flutter/material.dart';

class RESULTADO extends StatefulWidget {
  final int contador;
  const RESULTADO(this.contador, [Key key]) : super(key: key);

  @override
  _RESULTADOState createState() => _RESULTADOState();
}

class _RESULTADOState extends State<RESULTADO> {

   int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    calificacion = widget.contador;
    print(calificacion);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RESULTADOS")),
        backgroundColor: Colors.red,
      ),
      body: Column(children: <Widget>[
        cuerpo(calificacion),
      ],
     )
    );
  }
}

Widget cuerpo(int calificacion1){
  return Container(
    child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Text("Gracias por Evaluarnos",
        style: TextStyle(fontSize: 30.0),
        textAlign: TextAlign.center,
        ),
      ),

      Text("El resultado obtenido es:",
      style: TextStyle(fontSize: 25.0),
      textAlign: TextAlign.center,),
      resultado(calificacion1)
    ],),
  );
}

Widget resultado(int calificacion1){
  if (calificacion1 <= 5){
   return Container(
      child: Image.asset('assets/5.png'),);
  }else if(calificacion1 >= 6 && calificacion1 <=10){
    return Container(
      child: Image.asset('assets/4.png'),);
  }else if(calificacion1 >= 11 && calificacion1 <=15){
    return Container(
      child: Image.asset('assets/3.png'),);
  }else if(calificacion1 >= 16 && calificacion1 <=20){
    return Container(
      child: Image.asset('assets/2.png'),);
  }else if(calificacion1 >= 21 && calificacion1 <=25){
    return Container(
      child: Image.asset('assets/1.png'),);
  }
}


