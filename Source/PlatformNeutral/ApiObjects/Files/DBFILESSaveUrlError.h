///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBFILESSaveUrlError;
@class DBFILESWriteError;

#pragma mark - API Object

///
/// The SaveUrlError union.
///
/// This class implements the DBSerializable protocol (serialize and deserialize instance methods),
/// which is required for all Obj-C SDK API route objects.
///
@interface DBFILESSaveUrlError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The DBFILESSaveUrlErrorTag enum type represents the possible tag states with which the
/// DBFILESSaveUrlError union can exist.
typedef NS_ENUM(NSInteger, DBFILESSaveUrlErrorTag) {
  /// (no description).
  DBFILESSaveUrlErrorPath,

  /// Failed downloading the given URL.
  DBFILESSaveUrlErrorDownloadFailed,

  /// The given URL is invalid.
  DBFILESSaveUrlErrorInvalidUrl,

  /// The file where the URL is saved to no longer exists.
  DBFILESSaveUrlErrorNotFound,

  /// (no description).
  DBFILESSaveUrlErrorOther,

};

/// Represents the union's current tag state.
@property(nonatomic, readonly) DBFILESSaveUrlErrorTag tag;

/// (no description). Ensure the isPath method returns true before accessing, otherwise a runtime
/// exception will be raised.
@property(nonatomic, readonly) DBFILESWriteError * _Nonnull path;

#pragma mark - Constructors

///
/// Initializes union class with tag state of Path.
///
/// @param path (no description).
///
/// @return An initialized DBFILESSaveUrlError instance.
///
- (nonnull instancetype)initWithPath:(DBFILESWriteError * _Nonnull)path;

///
/// Initializes union class with tag state of DownloadFailed.
///
/// About the DownloadFailed tag state: Failed downloading the given URL.
///
/// @return An initialized DBFILESSaveUrlError instance.
///
- (nonnull instancetype)initWithDownloadFailed;

///
/// Initializes union class with tag state of InvalidUrl.
///
/// About the InvalidUrl tag state: The given URL is invalid.
///
/// @return An initialized DBFILESSaveUrlError instance.
///
- (nonnull instancetype)initWithInvalidUrl;

///
/// Initializes union class with tag state of NotFound.
///
/// About the NotFound tag state: The file where the URL is saved to no longer exists.
///
/// @return An initialized DBFILESSaveUrlError instance.
///
- (nonnull instancetype)initWithNotFound;

///
/// Initializes union class with tag state of Other.
///
/// @return An initialized DBFILESSaveUrlError instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value Path.
///
/// @note Call this method and ensure it returns true before accessing the path property, otherwise
/// a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value Path.
///
- (BOOL)isPath;

///
/// Retrieves whether the union's current tag state has value DownloadFailed.
///
/// @return Whether the union's current tag state has value DownloadFailed.
///
- (BOOL)isDownloadFailed;

///
/// Retrieves whether the union's current tag state has value InvalidUrl.
///
/// @return Whether the union's current tag state has value InvalidUrl.
///
- (BOOL)isInvalidUrl;

///
/// Retrieves whether the union's current tag state has value NotFound.
///
/// @return Whether the union's current tag state has value NotFound.
///
- (BOOL)isNotFound;

///
/// Retrieves whether the union's current tag state has value Other.
///
/// @return Whether the union's current tag state has value Other.
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the DBFILESSaveUrlError union.
///
@interface DBFILESSaveUrlErrorSerializer : NSObject

///
/// Serializes DBFILESSaveUrlError instances.
///
/// @param instance An instance of the DBFILESSaveUrlError API object.
///
/// @return A json-compatible dictionary representation of the DBFILESSaveUrlError API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESSaveUrlError * _Nonnull)instance;

///
/// Deserializes DBFILESSaveUrlError instances.
///
/// @param dict A json-compatible dictionary representation of the DBFILESSaveUrlError API object.
///
/// @return An instantiation of the DBFILESSaveUrlError object.
///
+ (DBFILESSaveUrlError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end