// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'data/dtos/note_dto.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 5029622172655255750),
      name: 'NoteDto',
      lastPropertyId: const obx_int.IdUid(6, 3334130018022395304),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 8764876856175494434),
            name: 'id',
            type: 9,
            flags: 34848,
            indexId: const obx_int.IdUid(1, 6142825143459520983)),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5132195153303215120),
            name: 'title',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 6689294794947529494),
            name: 'content',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 4004667195727821167),
            name: 'timestamp',
            type: 10,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 7502669661512086804),
            name: 'internalId',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 3334130018022395304),
            name: 'embedding',
            type: 28,
            flags: 8,
            indexId: const obx_int.IdUid(2, 5001080746216765540),
            hnswParams: obx_int.ModelHnswParams(
              dimensions: 512,
            ))
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(1, 5029622172655255750),
      lastIndexId: const obx_int.IdUid(2, 5001080746216765540),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    NoteDto: obx_int.EntityDefinition<NoteDto>(
        model: _entities[0],
        toOneRelations: (NoteDto object) => [],
        toManyRelations: (NoteDto object) => {},
        getId: (NoteDto object) => object.internalId,
        setId: (NoteDto object, int id) {
          object.internalId = id;
        },
        objectToFB: (NoteDto object, fb.Builder fbb) {
          final idOffset = fbb.writeString(object.id);
          final titleOffset = fbb.writeString(object.title);
          final contentOffset = fbb.writeString(object.content);
          final embeddingOffset = fbb.writeListFloat32(object.embedding);
          fbb.startTable(7);
          fbb.addOffset(0, idOffset);
          fbb.addOffset(1, titleOffset);
          fbb.addOffset(2, contentOffset);
          fbb.addInt64(3, object.timestamp.millisecondsSinceEpoch);
          fbb.addInt64(4, object.internalId);
          fbb.addOffset(5, embeddingOffset);
          fbb.finish(fbb.endTable());
          return object.internalId;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final contentParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final timestampParam = DateTime.fromMillisecondsSinceEpoch(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));
          final idParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 4, '');
          final embeddingParam =
              const fb.ListReader<double>(fb.Float32Reader(), lazy: false)
                  .vTableGet(buffer, rootOffset, 14, []);
          final object = NoteDto(
              title: titleParam,
              content: contentParam,
              timestamp: timestampParam,
              id: idParam,
              embedding: embeddingParam)
            ..internalId =
                const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [NoteDto] entity fields to define ObjectBox queries.
class NoteDto_ {
  /// See [NoteDto.id].
  static final id =
      obx.QueryStringProperty<NoteDto>(_entities[0].properties[0]);

  /// See [NoteDto.title].
  static final title =
      obx.QueryStringProperty<NoteDto>(_entities[0].properties[1]);

  /// See [NoteDto.content].
  static final content =
      obx.QueryStringProperty<NoteDto>(_entities[0].properties[2]);

  /// See [NoteDto.timestamp].
  static final timestamp =
      obx.QueryDateProperty<NoteDto>(_entities[0].properties[3]);

  /// See [NoteDto.internalId].
  static final internalId =
      obx.QueryIntegerProperty<NoteDto>(_entities[0].properties[4]);

  /// See [NoteDto.embedding].
  static final embedding =
      obx.QueryHnswProperty<NoteDto>(_entities[0].properties[5]);
}
