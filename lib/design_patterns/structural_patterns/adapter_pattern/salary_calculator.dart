

import 'package:learning_new_things/design_patterns/structural_patterns/adapter_pattern/models/salary.dart';

class SalaryCalculator{

  double calculateSalary(Employee employee){
    return employee.basicSalary! * 2;
  }
}