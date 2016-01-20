//
//  ViewController.m
//  MonsterMayhem
//
//  Created by Chris Erdos on 1/19/16.
//  Copyright © 2016 Chris Erdos. All rights reserved.
//

#import "ViewController.h"
#import "DwarfViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *creaturesArray;
@property NSMutableArray *imagesArray;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextfField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;


@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
    
    
    MagicalCreature *dwarfOne = [[MagicalCreature alloc] initWithname:@"Dopey" andDescription:@"The dumbest dwarf." andImage:[UIImage imageNamed:@"dopey"]];
	MagicalCreature *dwarfTwo = [[MagicalCreature alloc] initWithname:@"Doc" andDescription:@"He wears glasses." andImage:[UIImage imageNamed:@"doc"]];
	MagicalCreature *dwarfThree = [[MagicalCreature alloc] initWithname:@"Bashful" andDescription:@"Shy and sweet and cute." andImage:[UIImage imageNamed:@"bashful"]];
	MagicalCreature *dwarfFour = [[MagicalCreature alloc] initWithname:@"Grumpy" andDescription:@"The largest nosed dwarf; he is mad." andImage:[UIImage imageNamed:@"grumpy"]];
	MagicalCreature *dwarfFive = [[MagicalCreature alloc] initWithname:@"Sneezy" andDescription:@"Allergic to everything." andImage:[UIImage imageNamed:@"sneezy"]];
	MagicalCreature *dwarfSix = [[MagicalCreature alloc] initWithname:@"Sleepy" andDescription:@"Insomniac and lethargic." andImage:[UIImage imageNamed:@"sleepy"]];
	MagicalCreature *dwarfSeven = [[MagicalCreature alloc] initWithname:@"Happy" andDescription:@"On ecstasy." andImage:[UIImage imageNamed:@"happy"]];

	self.creaturesArray = [NSMutableArray arrayWithObjects: dwarfOne, dwarfTwo, dwarfThree, dwarfFour, dwarfFive, dwarfSix, dwarfSeven, nil];
    
    NSLog(@"%@", self.creaturesArray);
    
    
//    dwarfOne.image = [UIImage imageNamed:@"dopey"];
//    dwarfTwo.image = [UIImage imageNamed:@"doc"];

    
    NSLog(@"%@", self.creaturesArray);
    
    
    self.partTimeDwarf = [MagicalCreature new];
    
}


-(void)viewWillAppear:(BOOL)animated {
    
    [self.tableView reloadData];
    
}

- (IBAction)onAddButtonPress:(UIButton *)sender {
	if ([self.nameTextField.text isEqualToString:@""] || [self.descriptionTextfField.text isEqualToString:@""]) {
		return;
	}
	
	MagicalCreature *dwarfNew = [[MagicalCreature alloc] initWithname:self.nameTextField.text andDescription:self.descriptionTextfField.text andImage:[UIImage imageNamed:@"1"]];
	[self.creaturesArray addObject:dwarfNew];
	

	self.nameTextField.text = nil;
	self.descriptionTextfField.text = nil;
	[self.tableView reloadData];
}

#pragma mark Table View Delegates
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
	MagicalCreature *dwarf = [self.creaturesArray objectAtIndex:indexPath.row];
	cell.textLabel.text = dwarf.name;
	cell.detailTextLabel.text = dwarf.monsterDescription;
	
	return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.creaturesArray.count;
}

#pragma mark Segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	DwarfViewController *dvc = segue.destinationViewController;
	NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
	self.partTimeDwarf = [self.creaturesArray objectAtIndex:indexPath.row];
	
	dvc.dwarfItem = self.partTimeDwarf;
    dvc.descriptionLabel.text = self.partTimeDwarf.monsterDescription;
    
    
}

-(IBAction)goback:(UIStoryboardSegue *)sender {
    
}
	

@end
