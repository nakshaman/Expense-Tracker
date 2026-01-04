import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _regiteredExpense = [
    Expense(
      title: 'Flutter Course',
      amount: 700,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Movie Ticket',
      amount: 200,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _addExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expense Tracker',
          textAlign: TextAlign.center,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: _addExpense,
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ExpensesList(expense: _regiteredExpense)),
        ],
      ),
    );
  }
}
