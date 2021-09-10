class Table {
  String? title;

  Table(this.title);

  static List<Table> generateTable() {
    List<Table> tables = [];

    tables.add(Table('Table 1'));
    tables.add(Table('Table 2'));
    tables.add(Table('Table 3'));

    return tables;
  }
}
