import 'package:flutter/material.dart';
import 'package:flutter_components/Widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first-name': 'Ricardo',
      'last-name': 'Perdomo',
      'email': 'rperdomo@gmail.com',
      'password': '12345',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre del usuario',
                      formProperty: 'first-name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 20),
                    CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Apellido del usuario',
                      formProperty: 'last-name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 20),
                    CustomInputField(
                      labelText: 'Email',
                      hintText: 'Email del usuario',
                      inpuType: 'email',
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 20),
                    CustomInputField(
                      labelText: 'Contrasena',
                      hintText: 'Contrasena',
                      inpuType: 'email',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 20),
                    DropdownButtonFormField(
                        value: 'Admin',
                        items: const [
                          DropdownMenuItem(
                              value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(
                              value: 'SuperUser', child: Text('Super user')),
                          DropdownMenuItem(value: 'Dev', child: Text('Dev')),
                          DropdownMenuItem(
                              value: 'JrDev', child: Text('Jr Dev')),
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        }),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                        } else {
                          // Imprimir valores
                          print(formValues);
                        }
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
