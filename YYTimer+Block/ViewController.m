//
//  ViewController.m
//  YYTimer+Block
//
//  Created by lzf on 2020/2/16.
//  Copyright © 2020 bnu. All rights reserved.
//

#import "ViewController.h"
#import "YYTimer+Block.h"

@interface ViewController ()
@property (strong) YYTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.timer = [YYTimer timerWithTimeInterval:1 target:self selector:@selector(timerHandler:) repeats:YES];
    self.timer = [YYTimer timerWithTimeInterval:1 repeats:YES usingBlock:^(YYTimer * _Nonnull timer) {
        static int times = 0;
        if (times < 10) {
            NSLog(@"Hey! %@", timer);
        } else {
            [timer invalidate];
        }
        times++;
    }];
    // Do any additional setup after loading the view.
}

- (void)timerHandler:(YYTimer *)timer {
    static int times = 0;
    if (times < 10) {
        NSLog(@"Hey! %@", timer);
    } else {
        [timer invalidate];
    }
    times++;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
