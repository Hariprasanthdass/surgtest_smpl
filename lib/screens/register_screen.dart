import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              const SizedBox(
                height: 170,
              ),
              Center(
                child: Image.asset(
                  'assets/images/surgtest_splashscreen.png',
                  width: 160,
                  height: 80,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              '+91',
                              style: TextStyle(fontSize: 18),
                            ),
                            InkWell(
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: Colors.grey,
                          width: 45,
                          height: 1.5,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    // width: 290,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text('Mobile Number'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Text Field cannot be empty';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Email'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Text Field cannot be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 135, 93, 233),
                  ),
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
