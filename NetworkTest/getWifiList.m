//
//  getwifi.m
//  NetworkTest
//
//  Created by YANBO JIANG on 10/24/20.
//
#import "getwifi.h"
#import <NetworkExtension/NetworkExtension.h>

@implementation GetWifiList
- (void)getWifiList {
//    dispatch_queue_t queue = dispatch_queue_create("com.leopardpan.HotspotHelper", 0);
//    [NEHotspotHelper registerWithOptions:nil queue:queue handler: ^(NEHotspotHelperCommand * cmd) {
//        if(cmd.commandType == kNEHotspotHelperCommandTypeFilterScanList) {
//            for (NEHotspotNetwork* network  in cmd.networkList) {
//                NSLog(@"network.SSID = %@",network.SSID);
//            }
//        }
//    }];
    
    NSLog(@"1.Start");

        NSMutableDictionary* options = [[NSMutableDictionary alloc] init];
        [options setObject:@"EFNEHotspotHelperDemo" forKey: kNEHotspotHelperOptionDisplayName];
        dispatch_queue_t queue = dispatch_queue_create("EFNEHotspotHelperDemo", NULL);

        NSLog(@"2.Try");
        BOOL returnType = [NEHotspotHelper registerWithOptions: options queue: queue handler: ^(NEHotspotHelperCommand * cmd) {

            NSLog(@"4.Finish");
            NEHotspotNetwork* network;
            if (cmd.commandType == kNEHotspotHelperCommandTypeEvaluate || cmd.commandType == kNEHotspotHelperCommandTypeFilterScanList) {

                for (network in cmd.networkList) {
                    NSString* wifiInfoString = [[NSString alloc] initWithFormat: @"---------------------------\nSSID: %@\nMac address: %@\nsignal power: %f\nCommandType:%ld\n---------------------------\n\n", network.SSID, network.BSSID, network.signalStrength, (long)cmd.commandType];
                    NSLog(@"%@", wifiInfoString);

                }
            }
        }];


        NSLog(@"3.Result: %@", returnType == YES ? @"Yes" : @"No");
}
@end
