//
//  Dragon.m
//  DragonFashion
//
//  Created by Ryan Tiltz on 5/20/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon
-(Dragon *) initWithFullName: (NSString *) fullName
{
    self.fullName = fullName;
    return self;
}
    //here what we did was create a string for the dragons name.  So that we didn't have to initialize each one and we could just add it to the string. So this is in the Dragon.m file and then copied into the ViewController.m

-(Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem dragonMood:(NSString *)dragonMood;
{
    self.fullName = fullName;
    self.signatureClothingItem = signatureClothingItem;
    self.dragonMood = dragonMood;
    
    //here what we did was create two strings together to declare the method for the dragons name and the signatureClothingLine.  So that we didn't have to initialize each one and we could just add it to the string. So this is in the Dragon.m file and then copied into the ViewController.m

    return self;
}

-(NSString *) description
{
    return [NSString stringWithFormat:@"%@: %@", self.fullName, self.signatureClothingItem];

}
@end
