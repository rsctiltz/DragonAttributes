//
//  DragonViewController.m
//  DragonFashion
//
//  Created by Ryan Tiltz on 5/20/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "DragonViewController.h"

@interface DragonViewController ()
@property (strong, nonatomic) IBOutlet UILabel *dragonFriendlinessLabel;

@end

@implementation DragonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@", [self dragon]);
    self.title = self.dragon.fullName;
    self.dragonFriendlinessLabel.text = self.dragon.dragonMood;
    
}
@end
