import 'package:flutter/material.dart';

import 'data.dart';

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 10,
      headingRowColor: WidgetStateProperty.all(Colors.green[300]),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      columns: const [
        DataColumn(label: Text('Team')),
      ],
      rows: [
        ...teamsData.map((team) => DataRow(
              cells: [
                DataCell(Text(
                  '${team.position.toString()}  ${team.name}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ))
      ],
    );
  }
}