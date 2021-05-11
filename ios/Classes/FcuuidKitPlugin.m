#import "FcuuidKitPlugin.h"
#import <FCUUID/FCUUID.h>

@implementation FcuuidKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar> *)registrar {
    FlutterMethodChannel *channel = [FlutterMethodChannel
        methodChannelWithName:@"v7lin.github.io/fcuuid_kit"
              binaryMessenger:[registrar messenger]];
    FcuuidKitPlugin *instance = [[FcuuidKitPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    if ([@"uuid" isEqualToString:call.method]) {
        result([FCUUID uuid]);
    } else if ([@"uuidForKey" isEqualToString:call.method]) {
        NSString *key = call.arguments[@"key"];
        result([FCUUID uuidForKey:key]);
    } else if ([@"uuidForSession" isEqualToString:call.method]) {
        result([FCUUID uuidForSession]);
    } else if ([@"uuidForInstallation" isEqualToString:call.method]) {
        result([FCUUID uuidForInstallation]);
    } else if ([@"uuidForVendor" isEqualToString:call.method]) {
        result([FCUUID uuidForVendor]);
    } else if ([@"uuidForDevice" isEqualToString:call.method]) {
        result([FCUUID uuidForDevice]);
    } else if ([@"uuidForDeviceMigratingValue" isEqualToString:call.method]) {
        NSString *value = call.arguments[@"value"];
        NSNumber *commitMigration = call.arguments[@"commitMigration"];
        result([FCUUID uuidForDeviceMigratingValue:value commitMigration:commitMigration.boolValue]);
    } else if ([@"uuidForDeviceMigratingValueForKey" isEqualToString:call.method]) {
        NSString *key = call.arguments[@"key"];
        NSString *service = call.arguments[@"service"];
        NSString *accessGroup = call.arguments[@"accessGroup"];
        NSNumber *commitMigration = call.arguments[@"commitMigration"];
        if (service == nil || [service isEqual:[NSNull null]]) {
            result([FCUUID uuidForDeviceMigratingValueForKey:key commitMigration:commitMigration.boolValue]);
        } else if (accessGroup == nil || [accessGroup isEqual:[NSNull null]]) {
            result([FCUUID uuidForDeviceMigratingValueForKey:key service:service commitMigration:commitMigration.boolValue]);
        } else {
            result([FCUUID uuidForDeviceMigratingValueForKey:key service:service accessGroup:accessGroup commitMigration:commitMigration.boolValue]);
        }
    } else if ([@"uuidsOfUserDevices" isEqualToString:call.method]) {
        result([FCUUID uuidsOfUserDevices]);
    } else if ([@"uuidsOfUserDevicesExcludingCurrentDevice" isEqualToString:call.method]) {
        result([FCUUID uuidsOfUserDevicesExcludingCurrentDevice]);
    } else if ([@"uuidValueIsValid" isEqualToString:call.method]) {
        NSString *uuid = call.arguments[@"uuid"];
        result([NSNumber numberWithBool:[FCUUID uuidValueIsValid:uuid]]);
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
