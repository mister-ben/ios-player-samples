//
//  AppDelegate.m
//  BasicPlayerUIWithLogo
//
//  Created by Ben Clifford on 2016-03-30.
//  Copyright © 2016 Brightcove. All rights reserved.
//

#import "AppDelegate.h"

#import <AVFoundation/AVFoundation.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // We need the below code in order to ensure that audio plays back when we
    // expect it to. For example, without setting this code, we won't hear the video
    // when the mute switch is on. For simplicity in the sample, we are going to
    // put this in the app delegate.  Check out https://developer.apple.com/Library/ios/documentation/Audio/Conceptual/AudioSessionProgrammingGuide/Introduction/Introduction.html
    // for more information on how to use this in your own app.
    
    NSError *categoryError = nil;
    BOOL success = [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:&categoryError];
    
    if (!success)
    {
        NSLog(@"AppDelegate Debug - Error setting AVAudioSession category.  Because of this, there may be no sound. `%@`", categoryError);
    }
    
    return YES;
}

@end