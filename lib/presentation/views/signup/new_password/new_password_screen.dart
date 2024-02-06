import 'package:chelper_man/presentation/widgets/custom_button.dart';
import 'package:chelper_man/presentation/widgets/header.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _validate = false;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isMatch = true;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_checkPasswordMatch);
  }

  _checkPasswordMatch() {
    setState(() {
      isMatch = _passwordController.text == _confirmPasswordController.text;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(
            heading1: 'Tao mat khau moi',
            heading2: 'Nhap mot mat khau de nho',
          ),
          Form(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: const Text('Mat khau'),
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding: const EdgeInsets.all(8),
                      border: InputBorder.none,
                      errorText: _validate
                          ? 'Mat khau nen dai tu 8 ky tu tro len'
                          : null,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      setState(() {
                        _validate = value.length < 8;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    onChanged: (_) => _checkPasswordMatch(),
                    decoration: InputDecoration(
                      label: const Text('Xac nhan mat khau'),
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding: const EdgeInsets.all(8),
                      border: InputBorder.none,
                      errorText: isMatch ? null : 'Mat khau khong trung khop',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: CustomButton(
              label: 'Tiep tuc',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
