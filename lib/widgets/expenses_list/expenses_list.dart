import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    required this.expense,
    required this.onRemoveExpense,
    super.key,
  });
  final List<Expense> expense;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        child: Dismissible(
          background: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Container(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          onDismissed: (direction) => onRemoveExpense(expense[index]),
          key: ValueKey(expense[index]),
          child: ExpenseItem(
            expense[index],
          ),
        ),
      ),
    );
  }
}
