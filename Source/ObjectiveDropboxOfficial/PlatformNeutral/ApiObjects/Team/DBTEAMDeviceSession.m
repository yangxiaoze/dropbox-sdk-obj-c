///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMDeviceSession.h"

#pragma mark - API Object

@implementation DBTEAMDeviceSession

#pragma mark - Constructors

- (instancetype)initWithSessionId:(NSString *)sessionId
                        ipAddress:(NSString *)ipAddress
                          country:(NSString *)country
                          created:(NSDate *)created
                          updated:(NSDate *)updated {

  self = [super init];
  if (self) {
    _sessionId = sessionId;
    _ipAddress = ipAddress;
    _country = country;
    _created = created;
    _updated = updated;
  }
  return self;
}

- (instancetype)initWithSessionId:(NSString *)sessionId {
  return [self initWithSessionId:sessionId ipAddress:nil country:nil created:nil updated:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMDeviceSessionSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMDeviceSessionSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMDeviceSessionSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMDeviceSessionSerializer

+ (NSDictionary *)serialize:(DBTEAMDeviceSession *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"session_id"] = valueObj.sessionId;
  if (valueObj.ipAddress) {
    jsonDict[@"ip_address"] = valueObj.ipAddress;
  }
  if (valueObj.country) {
    jsonDict[@"country"] = valueObj.country;
  }
  if (valueObj.created) {
    jsonDict[@"created"] = [DBNSDateSerializer serialize:valueObj.created dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  }
  if (valueObj.updated) {
    jsonDict[@"updated"] = [DBNSDateSerializer serialize:valueObj.updated dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  }

  return jsonDict;
}

+ (DBTEAMDeviceSession *)deserialize:(NSDictionary *)valueDict {
  NSString *sessionId = valueDict[@"session_id"];
  NSString *ipAddress = valueDict[@"ip_address"] ?: nil;
  NSString *country = valueDict[@"country"] ?: nil;
  NSDate *created = valueDict[@"created"]
                        ? [DBNSDateSerializer deserialize:valueDict[@"created"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"]
                        : nil;
  NSDate *updated = valueDict[@"updated"]
                        ? [DBNSDateSerializer deserialize:valueDict[@"updated"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"]
                        : nil;

  return [[DBTEAMDeviceSession alloc] initWithSessionId:sessionId
                                              ipAddress:ipAddress
                                                country:country
                                                created:created
                                                updated:updated];
}

@end
