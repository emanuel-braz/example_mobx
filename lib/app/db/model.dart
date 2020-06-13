import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';
part 'model.g.dart';

const pessoa = SqfEntityTable(
    tableName: 'Pessoa',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    useSoftDeleting: true,
    fields: [
      SqfEntityField('idServer', DbType.integer, defaultValue: -1),
      SqfEntityField('sync', DbType.bool, defaultValue: true),
      SqfEntityField('nome', DbType.text),
      SqfEntityField('nomeFantasia', DbType.text),
    ]);

const seqIdentity =
    SqfEntitySequence(sequenceName: 'identity', maxValue: 9007199254740991);

@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
    modelName: 'AppDatabase',
    databaseName: 'AppDatabase.db',
    databaseTables: [pessoa],
    sequences: [seqIdentity],
    bundledDatabasePath: null);
