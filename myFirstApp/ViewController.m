//
//  ViewController.m
//  myFirstApp
//
//  Lab 1 | My First App
//
//  Created by Ricardo Ruiz on 11/3/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//  www.iosappsdev.org
//

#import "ViewController.h"

@implementation ViewController

// Here we add these lines of code so we can use our variable
// names directly like myLabel or myVariable.  If we dont add
// a @synthesize line our app will still run but when we need
// to access our properties.
@synthesize mylabel, myTextField, nameVariable, messageVariable;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Like setting the background color, customizing the
    // colors on UI and other stuff.
}

// This is the action or "IBAction" (IB stands for "Interface
// Builder"), triggered when our button is clicked and the code inside
// the opening and closing Curly Brace "{ }" is executed.
- (IBAction)changeGreeting:(id)sender {
    
    // Triggers our "makeItSo" method to execute.
    [self makeItSo];
}

// This piece of code handles what happens when the user hits
// the return key on the keyboard.
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // Triggers our "makeItSo" method to execute.
    [self makeItSo];
    // Dismiss Keyboard.
    [textField resignFirstResponder];
    return YES;
}

// Our Program Logic 
// Controls how our variables are set and how we use them.
-(void)makeItSo {
    
    // Sets our nameVariable equal to our textField's text input.
    nameVariable = myTextField.text;
    
    // Checking if user entered any text in the textbox.
    if (nameVariable.length == 0) {
        
        // Default Message.
        messageVariable = @"I'm Sorry Dave, I can't do that...";
        
        // Sets myLabel "equal" to our nameVariable.
        mylabel.text = messageVariable;
        
    // If the user does enter text into the text field we build
    // we a message with our messageVariable.
    } else {
        
        // Message Builder
        // The message builder builds a string(stringWithFormat) with 
        // some of our preset text and also uses a placeholder "%@"
        // followed by our nameVariable.
        messageVariable = [NSString stringWithFormat:@"Hello %@!", nameVariable];
        
        // Sets myLabel "equal" to our nameVariable.
        mylabel.text = messageVariable;
        
    }
}

@end
