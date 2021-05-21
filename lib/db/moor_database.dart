import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Transactions extends Table {
  TextColumn get type => text()(); // expense or income
  TextColumn get description => text()(); // description
  DateTimeColumn get createDate => dateTime().nullable()(); // created date
  IntColumn get id => integer().autoIncrement()();
  IntColumn get amount => integer()();
  IntColumn get categoryIndex => integer()(); // 0,1,2,...etc
}

@UseMoor(tables: [Transactions], daos: [TransactionDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));
  int get schemaVersion => 1;
}

@UseDao(tables: [Transactions], queries: {})
class TransactionDao extends DatabaseAccessor<AppDatabase>
    with _$TransactionDaoMixin {
  final AppDatabase db;

  TransactionDao(this.db) : super(db);

  Future<List<Transaction>> getAllTransactions() => select(transactions).get();

  Future insertTransaction(Transaction transaction) =>
      into(transactions).insert(transaction);

  Future updateTransaction(Transaction transaction) =>
      update(transactions).replace(transaction);

  Future deleteTransaction(Transaction transaction) =>
      delete(transactions).delete(transaction);
}
