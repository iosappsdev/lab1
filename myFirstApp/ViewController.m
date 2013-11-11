//
//  ViewController.m
//  myFirstApp
//
//  Created by Ricardo Ruiz on 11/3/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mylabel, myTextField, nameVariable, messageVariable;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeGreeting:(id)sender {
    
    [self makeItSo];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self makeItSo];
    [textField resignFirstResponder];
    return YES;
}

-(void)makeItSo {
    
    //Sets our nameVariable equal to our textField's text input.
    nameVariable = myTextField.text;
    
    if (nameVariable.length == 0) {
        
        //Message Builder
        messageVariable = @"I'm Sorry Dave, I can't do that...";
        
        //Sets myLabel equal to our nameVariable
        mylabel.text = messageVariable;

    } else {
        
        //Message Builder
        messageVariable = [NSString stringWithFormat:@"Hello %@!", nameVariable];
        
        //Sets myLabel equal to our nameVariable
        mylabel.text = messageVariable;
        
    }
}

@end
