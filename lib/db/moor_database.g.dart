// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Transaction extends DataClass implements Insertable<Transaction> {
  final String type;
  final String description;
  final DateTime createDate;
  final int id;
  final int amount;
  final int categoryIndex;
  Transaction(
      {@required this.type,
      @required this.description,
      this.createDate,
      @required this.id,
      @required this.amount,
      @required this.categoryIndex});
  factory Transaction.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return Transaction(
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}create_date']),
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      amount: intType.mapFromDatabaseResponse(data['${effectivePrefix}amount']),
      categoryIndex: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}category_index']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createDate != null) {
      map['create_date'] = Variable<DateTime>(createDate);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<int>(amount);
    }
    if (!nullToAbsent || categoryIndex != null) {
      map['category_index'] = Variable<int>(categoryIndex);
    }
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createDate: createDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createDate),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      categoryIndex: categoryIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryIndex),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Transaction(
      type: serializer.fromJson<String>(json['type']),
      description: serializer.fromJson<String>(json['description']),
      createDate: serializer.fromJson<DateTime>(json['createDate']),
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<int>(json['amount']),
      categoryIndex: serializer.fromJson<int>(json['categoryIndex']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'description': serializer.toJson<String>(description),
      'createDate': serializer.toJson<DateTime>(createDate),
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<int>(amount),
      'categoryIndex': serializer.toJson<int>(categoryIndex),
    };
  }

  Transaction copyWith(
          {String type,
          String description,
          DateTime createDate,
          int id,
          int amount,
          int categoryIndex}) =>
      Transaction(
        type: type ?? this.type,
        description: description ?? this.description,
        createDate: createDate ?? this.createDate,
        id: id ?? this.id,
        amount: amount ?? this.amount,
        categoryIndex: categoryIndex ?? this.categoryIndex,
      );
  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('createDate: $createDate, ')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('categoryIndex: $categoryIndex')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      type.hashCode,
      $mrjc(
          description.hashCode,
          $mrjc(
              createDate.hashCode,
              $mrjc(id.hashCode,
                  $mrjc(amount.hashCode, categoryIndex.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.type == this.type &&
          other.description == this.description &&
          other.createDate == this.createDate &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.categoryIndex == this.categoryIndex);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<String> type;
  final Value<String> description;
  final Value<DateTime> createDate;
  final Value<int> id;
  final Value<int> amount;
  final Value<int> categoryIndex;
  const TransactionsCompanion({
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.createDate = const Value.absent(),
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.categoryIndex = const Value.absent(),
  });
  TransactionsCompanion.insert({
    @required String type,
    @required String description,
    this.createDate = const Value.absent(),
    this.id = const Value.absent(),
    @required int amount,
    @required int categoryIndex,
  })  : type = Value(type),
        description = Value(description),
        amount = Value(amount),
        categoryIndex = Value(categoryIndex);
  static Insertable<Transaction> custom({
    Expression<String> type,
    Expression<String> description,
    Expression<DateTime> createDate,
    Expression<int> id,
    Expression<int> amount,
    Expression<int> categoryIndex,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (description != null) 'description': description,
      if (createDate != null) 'create_date': createDate,
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (categoryIndex != null) 'category_index': categoryIndex,
    });
  }

  TransactionsCompanion copyWith(
      {Value<String> type,
      Value<String> description,
      Value<DateTime> createDate,
      Value<int> id,
      Value<int> amount,
      Value<int> categoryIndex}) {
    return TransactionsCompanion(
      type: type ?? this.type,
      description: description ?? this.description,
      createDate: createDate ?? this.createDate,
      id: id ?? this.id,
      amount: amount ?? this.amount,
      categoryIndex: categoryIndex ?? this.categoryIndex,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createDate.present) {
      map['create_date'] = Variable<DateTime>(createDate.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (categoryIndex.present) {
      map['category_index'] = Variable<int>(categoryIndex.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('createDate: $createDate, ')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('categoryIndex: $categoryIndex')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  final GeneratedDatabase _db;
  final String _alias;
  $TransactionsTable(this._db, [this._alias]);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createDateMeta = const VerificationMeta('createDate');
  GeneratedDateTimeColumn _createDate;
  @override
  GeneratedDateTimeColumn get createDate =>
      _createDate ??= _constructCreateDate();
  GeneratedDateTimeColumn _constructCreateDate() {
    return GeneratedDateTimeColumn(
      'create_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  GeneratedIntColumn _amount;
  @override
  GeneratedIntColumn get amount => _amount ??= _constructAmount();
  GeneratedIntColumn _constructAmount() {
    return GeneratedIntColumn(
      'amount',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoryIndexMeta =
      const VerificationMeta('categoryIndex');
  GeneratedIntColumn _categoryIndex;
  @override
  GeneratedIntColumn get categoryIndex =>
      _categoryIndex ??= _constructCategoryIndex();
  GeneratedIntColumn _constructCategoryIndex() {
    return GeneratedIntColumn(
      'category_index',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [type, description, createDate, id, amount, categoryIndex];
  @override
  $TransactionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'transactions';
  @override
  final String actualTableName = 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('create_date')) {
      context.handle(
          _createDateMeta,
          createDate.isAcceptableOrUnknown(
              data['create_date'], _createDateMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount'], _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('category_index')) {
      context.handle(
          _categoryIndexMeta,
          categoryIndex.isAcceptableOrUnknown(
              data['category_index'], _categoryIndexMeta));
    } else if (isInserting) {
      context.missing(_categoryIndexMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Transaction map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Transaction.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TransactionsTable _transactions;
  $TransactionsTable get transactions =>
      _transactions ??= $TransactionsTable(this);
  TransactionDao _transactionDao;
  TransactionDao get transactionDao =>
      _transactionDao ??= TransactionDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [transactions];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$TransactionDaoMixin on DatabaseAccessor<AppDatabase> {
  $TransactionsTable get transactions => attachedDatabase.transactions;
}
