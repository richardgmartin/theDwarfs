//
//  DwarfViewController.m
//  MonsterMayhem
//
//  Created by Chris Erdos on 1/19/16.
//  Copyright © 2016 Chris Erdos. All rights reserved.
//

#import "DwarfViewController.h"

@interface DwarfViewController ()

@property (weak, nonatomic) IBOutlet UIButton *editDwarfButton;

@property (weak, nonatomic) IBOutlet UITextField *editDwarfNameTextField;

@end

@implementation DwarfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.descriptionLabel sizeToFit];
    
    self.descriptionLabel.text = self.dwarfItem.monsterDescription;
	self.title = self.dwarfItem.name;
    
    [self.editDwarfNameTextField setHidden:YES];
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [self performSegueWithIdentifier:@"goBack" sender:self];
}


- (IBAction)onEditButtonPressed:(UIButton *)sender {
    
    if ([sender.titleLabel.text isEqualToString:@"Edit Dwarf"]) {
        [self.editDwarfNameTextField setHidden:NO];
        [sender setTitle:@"Done Editing" forState:UIControlStateNormal];
        
    } else {
        [sender setTitle:@"Edit Dwarf" forState:UIControlStateNormal];
        self.dwarfItem.name = self.editDwarfNameTextField.text;
        self.title = self.dwarfItem.name;
    
        
    }
  
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewController *svc = segue.destinationViewController;
    svc.partTimeDwarf = self.dwarfItem;
    
    
    
    
}

@end
