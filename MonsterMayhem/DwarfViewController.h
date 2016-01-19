//
//  DwarfViewController.h
//  MonsterMayhem
//
//  Created by Chris Erdos on 1/19/16.
//  Copyright © 2016 Chris Erdos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"
#import "ViewController.h"

@interface DwarfViewController : UIViewController

@property MagicalCreature *dwarfItem;

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end
