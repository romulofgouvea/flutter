class TableKiosk {
  String? title;
  bool? isOpen;

  TableKiosk(this.title, this.isOpen);

  static List<TableKiosk> generateTableKiosk() {
    List<TableKiosk> tables = [];

    tables.add(TableKiosk('MESA 1', true));
    tables.add(TableKiosk('MESA 2', true));
    tables.add(TableKiosk('MESA 3', true));
    tables.add(TableKiosk('MESA 4', false));
    tables.add(TableKiosk('MESA 5', true));
    tables.add(TableKiosk('MESA 6', true));
    tables.add(TableKiosk('MESA 7', false));
    tables.add(TableKiosk('MESA 8', true));
    tables.add(TableKiosk('MESA 9', true));

    return tables;
  }
}
