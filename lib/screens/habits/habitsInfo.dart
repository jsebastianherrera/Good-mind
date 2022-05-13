// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HabitsInfo extends StatelessWidget {
  const HabitsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text("Buen ambiente para dormir",
            style: TextStyle(fontSize: 15.sp)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
                "https://www.wikihow.com/images/thumb/1/13/Get-Great-Sleep-Step-1-Version-2.jpg/aid844938-v4-728px-Get-Great-Sleep-Step-1-Version-2.jpg"),
            SizedBox(
              height: 2.h,
            ),
            RichText(
              text: const TextSpan(
                  text: "1. Manten tu entorno limpio: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.normal),
                      text:
                          "ormir en una habitación calurosa es una fórmula para terminar con sábanas retorcidas y sueños febriles, mientras que un ambiente frío y oscuro te ayudará a quedarte dormido más rápidamente y tener un mejor sueño",
                    ),
                  ]),
            ),
            SizedBox(
              height: 2.h,
            ),
            Image.network(
                "https://www.wikihow.com/images/thumb/2/2a/Have-a-Good-Night%27s-Sleep-Step-7.jpg/aid844938-v4-728px-Have-a-Good-Night%27s-Sleep-Step-7.jpg"),
            SizedBox(
              height: 2.h,
            ),
            RichText(
              text: const TextSpan(
                  text:
                      "2. Cerciórate de que tus almohadas y tu colchón sean cómodos: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.normal),
                      text:
                          " Si tu cama te parece incómoda, no es sorpresa que tengas problemas para quedarte dormido. Reflexiona si es tiempo para invertir en un nuevo colchón: uno que sea más duro o más suave, dependiendo de tus necesidades. Una alternativa es voltear el que tienes actualmente, pues la parte de abajo podría tener menos bultos. Las personas que tienen problemas de cuello o espalda podrían beneficiarse de las almohadas de espuma viscoelástica, que se amoldan a la forma corporal de cada uno y les proporciona el soporte que necesitan.",
                    ),
                  ]),
            ),
            SizedBox(
              height: 2.h,
            ),
            Image.network(
                "https://www.wikihow.com/images/thumb/0/05/Have-a-Good-Night%27s-Sleep-Step-8.jpg/aid844938-v4-728px-Have-a-Good-Night%27s-Sleep-Step-8.jpg"),
            SizedBox(
              height: 2.h,
            ),
            RichText(
              text: const TextSpan(
                text: "3. Apaga todas las luces y los aparatos electrónicos :",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                children: [
                  TextSpan(
                      style: TextStyle(fontWeight: FontWeight.normal),
                      text:
                          "La oscuridad ayuda a tu cerebro a procesar que ya es hora de dormir, lo que provoca que este libere hormonas que inducen al sueño. Si hay mucha luz en tu habitación o te quedas mirando una pantalla por mucho tiempo antes de irte a la cama, estas hormonas podrían tardarse en salir, lo que, a su vez, impedirá que te quedes dormido. Para combatir este efecto, ten tu habitación lo más oscura posible y apaga todos los aparatos electrónicos al menos una hora antes de dormir."),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Image.network(
                "https://www.wikihow.com/images/thumb/e/e7/Have-a-Good-Night%27s-Sleep-Step-9.jpg/aid844938-v4-728px-Have-a-Good-Night%27s-Sleep-Step-9.jpg"),
          ],
        ),
      ),
    );
  }
}
