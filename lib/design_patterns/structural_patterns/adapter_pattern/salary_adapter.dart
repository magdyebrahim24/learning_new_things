import 'package:learning_new_things/design_patterns/structural_patterns/adapter_pattern/models/machine_operator.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/adapter_pattern/models/salary.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/adapter_pattern/salary_calculator.dart';

class SalaryAdapter extends SalaryCalculator {
  Employee? _employee;

  double calcSalary(MachineOperator machineOperator) {
    _employee = Employee();

    _employee?.name = machineOperator.name;
    _employee?.basicSalary = machineOperator.basicSalary;

    double salary = super.calculateSalary(_employee!);

    return salary;
  }
}




void main() {
  String name = "Magdy";
  double salary = 1000;
  String shiftCode = "123456";

  MachineOperator machineOperator = MachineOperator();

  machineOperator.name = name;
  machineOperator.basicSalary = salary;
  machineOperator.shiftCode = shiftCode;

  SalaryAdapter salaryAdapter = SalaryAdapter();

  double employeeSalaryAfterFeuss = salaryAdapter.calcSalary(machineOperator);

  print('employeeSalaryAfterFeuss ===> $employeeSalaryAfterFeuss');
}
