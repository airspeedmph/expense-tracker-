import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense_model.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(title: "Physics Course", amount: 10.99, date: DateTime.now(), category: Category.work),
    ExpenseModel(title:"Cinema", amount: 15, date: DateTime.now(), category: Category.leisure)

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [const Text("The chart "),
       Expanded(child: ExpensesList(expenses: _registeredExpenses))]),
    );
  }
}
