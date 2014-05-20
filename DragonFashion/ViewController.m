//
//  ViewController.m
//  DragonFashion
//
//  Created by Ryan Tiltz on 5/20/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"
#import "DragonViewController.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *dragonsTableView;


@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    Dragon *dragon1 = [[Dragon alloc] init];
    dragon1.fullName = @"Puff";
    dragon1.signatureClothingItem = @"Red Scarf";
    Dragon *dragon2 = [[Dragon alloc] init];
    dragon2.fullName = @"Don";
    dragon2.signatureClothingItem = @"Stress Ball";
    Dragon *dragon3 = [[Dragon alloc] init];
    dragon3.fullName = @"Smaug";
    dragon3.signatureClothingItem = @"Dorky Glasses";
    Dragon *dragon4 = [[[Dragon alloc]init] initWithFullName:@"Charzard"];
    dragon4.signatureClothingItem = @"High Heels";
    Dragon *dragon5 = [[Dragon alloc]initWithFullName:@"Love Dragon" signatureClothingItem:@"monocle" dragonMood:@"Fire Angry"];
    Dragon *dragon6 = [[Dragon alloc] initWithFullName:@"Falcor" signatureClothingItem:@"Saddle" dragonMood:@"Super Friendly"];

                       self.dragons = [NSArray arrayWithObjects:dragon1, dragon2, dragon3, dragon3, dragon5, dragon6, nil];

    for (Dragon *dragon in self.dragons)
    {
        NSLog(@"dragon: %@", dragon);
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dragons.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.signatureClothingItem;
    return cell;

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *selectedIndexPath = self.dragonsTableView.indexPathForSelectedRow;
    Dragon *selectedDragon = [self.dragons objectAtIndex:selectedIndexPath.row];
    DragonViewController *dragonViewController = segue.destinationViewController;
    dragonViewController.dragon = selectedDragon;
    
}


@end
