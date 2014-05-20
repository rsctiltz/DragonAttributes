//
//  Dragon.h
//  DragonFashion
//
//  Created by Ryan Tiltz on 5/20/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property  NSString *signatureClothingItem;
@property NSString *dragonMood;

-(Dragon *) initWithFullName: (NSString *) fullName;

-(Dragon *) initWithFullName:(NSString *)fullName signatureClothingItem:(NSString *)signatureClothingItem dragonMood:(NSString *)dragonMood;

//colon is the paramater, then the type of parameter, then name of string and then after (NSString *) is the variable name

@end
