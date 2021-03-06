///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBFILESSaveCopyReferenceArg;

#pragma mark - API Object

///
/// The `SaveCopyReferenceArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESSaveCopyReferenceArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// A copy reference returned by `dCopyReferenceGet`.
@property (nonatomic, readonly, copy) NSString * _Nonnull dCopyReference;

/// Path in the user's Dropbox that is the destination.
@property (nonatomic, readonly, copy) NSString * _Nonnull path;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param dCopyReference A copy reference returned by `dCopyReferenceGet`.
/// @param path Path in the user's Dropbox that is the destination.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithDCopyReference:(NSString * _Nonnull)dCopyReference path:(NSString * _Nonnull)path;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `SaveCopyReferenceArg` struct.
///
@interface DBFILESSaveCopyReferenceArgSerializer : NSObject

///
/// Serializes `DBFILESSaveCopyReferenceArg` instances.
///
/// @param instance An instance of the `DBFILESSaveCopyReferenceArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESSaveCopyReferenceArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESSaveCopyReferenceArg * _Nonnull)instance;

///
/// Deserializes `DBFILESSaveCopyReferenceArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESSaveCopyReferenceArg` API object.
///
/// @return An instantiation of the `DBFILESSaveCopyReferenceArg` object.
///
+ (DBFILESSaveCopyReferenceArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
