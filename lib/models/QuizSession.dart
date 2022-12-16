/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the QuizSession type in your schema. */
@immutable
class QuizSession extends Model {
  static const classType = const _QuizSessionModelType();
  final String id;
  final String? _sessionCategory;
  final String? _sessionDifficulty;
  final String? _numQuestions;
  final TemporalDate? _sessionDate;
  final String? _sessionScore;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  QuizSessionModelIdentifier get modelIdentifier {
      return QuizSessionModelIdentifier(
        id: id
      );
  }
  
  String get sessionCategory {
    try {
      return _sessionCategory!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sessionDifficulty {
    try {
      return _sessionDifficulty!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get numQuestions {
    try {
      return _numQuestions!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDate get sessionDate {
    try {
      return _sessionDate!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sessionScore {
    try {
      return _sessionScore!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const QuizSession._internal({required this.id, required sessionCategory, required sessionDifficulty, required numQuestions, required sessionDate, required sessionScore, createdAt, updatedAt}): _sessionCategory = sessionCategory, _sessionDifficulty = sessionDifficulty, _numQuestions = numQuestions, _sessionDate = sessionDate, _sessionScore = sessionScore, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory QuizSession({String? id, required String sessionCategory, required String sessionDifficulty, required String numQuestions, required TemporalDate sessionDate, required String sessionScore}) {
    return QuizSession._internal(
      id: id == null ? UUID.getUUID() : id,
      sessionCategory: sessionCategory,
      sessionDifficulty: sessionDifficulty,
      numQuestions: numQuestions,
      sessionDate: sessionDate,
      sessionScore: sessionScore);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizSession &&
      id == other.id &&
      _sessionCategory == other._sessionCategory &&
      _sessionDifficulty == other._sessionDifficulty &&
      _numQuestions == other._numQuestions &&
      _sessionDate == other._sessionDate &&
      _sessionScore == other._sessionScore;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("QuizSession {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("sessionCategory=" + "$_sessionCategory" + ", ");
    buffer.write("sessionDifficulty=" + "$_sessionDifficulty" + ", ");
    buffer.write("numQuestions=" + "$_numQuestions" + ", ");
    buffer.write("sessionDate=" + (_sessionDate != null ? _sessionDate!.format() : "null") + ", ");
    buffer.write("sessionScore=" + "$_sessionScore" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  QuizSession copyWith({String? sessionCategory, String? sessionDifficulty, String? numQuestions, TemporalDate? sessionDate, String? sessionScore}) {
    return QuizSession._internal(
      id: id,
      sessionCategory: sessionCategory ?? this.sessionCategory,
      sessionDifficulty: sessionDifficulty ?? this.sessionDifficulty,
      numQuestions: numQuestions ?? this.numQuestions,
      sessionDate: sessionDate ?? this.sessionDate,
      sessionScore: sessionScore ?? this.sessionScore);
  }
  
  QuizSession.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _sessionCategory = json['sessionCategory'],
      _sessionDifficulty = json['sessionDifficulty'],
      _numQuestions = json['numQuestions'],
      _sessionDate = json['sessionDate'] != null ? TemporalDate.fromString(json['sessionDate']) : null,
      _sessionScore = json['sessionScore'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'sessionCategory': _sessionCategory, 'sessionDifficulty': _sessionDifficulty, 'numQuestions': _numQuestions, 'sessionDate': _sessionDate?.format(), 'sessionScore': _sessionScore, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'sessionCategory': _sessionCategory, 'sessionDifficulty': _sessionDifficulty, 'numQuestions': _numQuestions, 'sessionDate': _sessionDate, 'sessionScore': _sessionScore, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<QuizSessionModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<QuizSessionModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField SESSIONCATEGORY = QueryField(fieldName: "sessionCategory");
  static final QueryField SESSIONDIFFICULTY = QueryField(fieldName: "sessionDifficulty");
  static final QueryField NUMQUESTIONS = QueryField(fieldName: "numQuestions");
  static final QueryField SESSIONDATE = QueryField(fieldName: "sessionDate");
  static final QueryField SESSIONSCORE = QueryField(fieldName: "sessionScore");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "QuizSession";
    modelSchemaDefinition.pluralName = "QuizSessions";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QuizSession.SESSIONCATEGORY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QuizSession.SESSIONDIFFICULTY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QuizSession.NUMQUESTIONS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QuizSession.SESSIONDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: QuizSession.SESSIONSCORE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _QuizSessionModelType extends ModelType<QuizSession> {
  const _QuizSessionModelType();
  
  @override
  QuizSession fromJson(Map<String, dynamic> jsonData) {
    return QuizSession.fromJson(jsonData);
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [QuizSession] in your schema.
 */
@immutable
class QuizSessionModelIdentifier implements ModelIdentifier<QuizSession> {
  final String id;

  /** Create an instance of QuizSessionModelIdentifier using [id] the primary key. */
  const QuizSessionModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'QuizSessionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is QuizSessionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}