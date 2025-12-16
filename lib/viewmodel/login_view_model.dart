import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final List<String> otpValues = List.filled(6, "");
  bool showError = false;
  
  void updateOtp(int index, String value) {
    otpValues[index] = value;
    if (showError && value.isNotEmpty) {
      showError = false;
    
    }
    notifyListeners();
  }
  
  // Validation
  bool validateOtp() {
    for (String value in otpValues) {
      if (value.isEmpty) {
        showError = true;
        notifyListeners(); 
        return false;
      }
    }
    showError = false;
    notifyListeners(); 
    return true;
  }
  
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, String?> _errors = {};

  // Controller get karo
  TextEditingController getController(String fieldName) {
    if (!_controllers.containsKey(fieldName)) {
      _controllers[fieldName] = TextEditingController();
      _controllers[fieldName]!.addListener(() {
        // Jab user type kare to error clear ho jaye
        if (_errors[fieldName] != null) {
          _errors[fieldName] = null;
          notifyListeners();
        }
      });
    }
    return _controllers[fieldName]!;
  }

  // Error get karo
  String? getError(String fieldName) {
    return _errors[fieldName];
  }

  // MAIN VALIDATION FUNCTION - Empty text check karta hai
  bool validateField(String fieldName) {
    final controller = _controllers[fieldName];
    
    if (controller == null || controller.text.trim().isEmpty) {
      _errors[fieldName] = 'Enter your text';
      notifyListeners();
      return false;
    }
    
    _errors[fieldName] = null;
    notifyListeners();
    return true;
  }

  @override
  void dispose() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }
  
}