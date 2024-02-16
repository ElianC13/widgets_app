import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackBar( BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {},),
      duration: const Duration(seconds: 2),
      );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog( BuildContext context ) {

    showDialog(context: context,
    barrierDismissible: false,
     builder: (context) => AlertDialog(
      title: const Text('Estas seguro?'),
      content: const Text('Fugiat proident ad adipisicing culpa cupidatat amet. Consequat commodo nisi est commodo sit. Et id non cupidatat tempor ipsum ullamco sunt aliquip. Aute sunt aliquip veniam consequat ut in aliqua. Tempor culpa exercitation commodo eiusmod velit officia voluptate officia deserunt ut sunt. Elit occaecat consectetur excepteur ipsum nisi nulla sunt amet eu sunt labore reprehenderit aliqua est. Voluptate dolor excepteur anim nisi ex.'),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

        FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),

      ],
     ),
     );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text('Ex quis cillum incididunt cupidatat commodo non. Ad nostrud consectetur ea proident magna eu cillum est nulla magna incididunt amet. Eiusmod ea sit incididunt mollit non labore aliquip ut ut Lorem ex labore. Excepteur aute et excepteur consequat Lorem incididunt ex ex. Do exercitation sit nostrud aliqua sit fugiat anim in Lorem fugiat.')
                ]
                );
            }, 
            child: const Text('Licencias usadas')),

            FilledButton(onPressed: () => openDialog(context), 
            child: const Text('Mostrar dialogo'))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}