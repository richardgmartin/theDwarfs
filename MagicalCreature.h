//
//  MagicalCreature.h
//  MonsterMayhem
//
//  Created by Chris Erdos on 1/19/16.
//  Copyright © 2016 Chris Erdos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString *monsterDescription;
@property UIImage *image;


-(instancetype) initWithname:(NSString *)name andDescription:(NSString *)monsterDescription andImage:(UIImage *)image;

@end
