//
//  MagicalCreature.m
//  MonsterMayhem
//
//  Created by Chris Erdos on 1/19/16.
//  Copyright © 2016 Chris Erdos. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature


-(instancetype) initWithname:(NSString *)name andDescription:(NSString *)monsterDescription {
	self = [super init];
	if (self) {
		self.name = name;
		self.monsterDescription = monsterDescription;
	}
	return self;
}

@end
