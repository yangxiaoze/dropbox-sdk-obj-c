///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGAccessLevel.h"
#import "DBSHARINGChangeFileMemberAccessArgs.h"
#import "DBSHARINGMemberSelector.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGChangeFileMemberAccessArgs

#pragma mark - Constructors

- (instancetype)initWithFile:(NSString *)file
                      member:(DBSHARINGMemberSelector *)member
                 accessLevel:(DBSHARINGAccessLevel *)accessLevel {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

  self = [super init];
  if (self) {
    _file = file;
    _member = member;
    _accessLevel = accessLevel;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGChangeFileMemberAccessArgsSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGChangeFileMemberAccessArgsSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGChangeFileMemberAccessArgsSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGChangeFileMemberAccessArgsSerializer

+ (NSDictionary *)serialize:(DBSHARINGChangeFileMemberAccessArgs *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"file"] = valueObj.file;
  jsonDict[@"member"] = [DBSHARINGMemberSelectorSerializer serialize:valueObj.member];
  jsonDict[@"access_level"] = [DBSHARINGAccessLevelSerializer serialize:valueObj.accessLevel];

  return jsonDict;
}

+ (DBSHARINGChangeFileMemberAccessArgs *)deserialize:(NSDictionary *)valueDict {
  NSString *file = valueDict[@"file"];
  DBSHARINGMemberSelector *member = [DBSHARINGMemberSelectorSerializer deserialize:valueDict[@"member"]];
  DBSHARINGAccessLevel *accessLevel = [DBSHARINGAccessLevelSerializer deserialize:valueDict[@"access_level"]];

  return [[DBSHARINGChangeFileMemberAccessArgs alloc] initWithFile:file member:member accessLevel:accessLevel];
}

@end
