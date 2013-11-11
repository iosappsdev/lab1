//
//  ViewController.m
//  myFirstApp
//
//  Created by Ricardo Ruiz on 11/3/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize mylabel, myTextField, nameVariable, messageVariable;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeGreeting:(id)sender {
    
    //Triggers our "makeItSo" method to execute
    [self makeItSo];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self makeItSo];
    //Triggers our "makeItSo" method to execute
    [textField resignFirstResponder];
    return YES;
}

-(void)makeItSo {
    
    //Sets our nameVariable equal to our textField's text input.
    nameVariable = myTextField.text;
    
    //Checking if user entered any text in the textbox
    if (nameVariable.length == 0) {
        
        //Default Message
        messageVariable = @"I'm Sorry Dave, I can't do that...";
        
        //Sets myLabel "equal" to our nameVariable
        mylabel.text = messageVariable;

    } else {
        
        //Message Builder
        messageVariable = [NSString stringWithFormat:@"Hello %@!", nameVariable];
        
        //Sets myLabel equal to our nameVariable
        mylabel.text = messageVariable;
        
    }
}

@end
