///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGetFileMetadataBatchResult.h"
#import "DBSHARINGGetFileMetadataIndividualResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGGetFileMetadataBatchResult

#pragma mark - Constructors

- (instancetype)initWithFile:(NSString *)file result:(DBSHARINGGetFileMetadataIndividualResult *)result {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

  self = [super init];
  if (self) {
    _file = file;
    _result = result;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGGetFileMetadataBatchResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGGetFileMetadataBatchResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGGetFileMetadataBatchResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGGetFileMetadataBatchResultSerializer

+ (NSDictionary *)serialize:(DBSHARINGGetFileMetadataBatchResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"file"] = valueObj.file;
  jsonDict[@"result"] = [DBSHARINGGetFileMetadataIndividualResultSerializer serialize:valueObj.result];

  return jsonDict;
}

+ (DBSHARINGGetFileMetadataBatchResult *)deserialize:(NSDictionary *)valueDict {
  NSString *file = valueDict[@"file"];
  DBSHARINGGetFileMetadataIndividualResult *result =
      [DBSHARINGGetFileMetadataIndividualResultSerializer deserialize:valueDict[@"result"]];

  return [[DBSHARINGGetFileMetadataBatchResult alloc] initWithFile:file result:result];
}

@end
