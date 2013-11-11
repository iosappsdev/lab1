//
//  ViewController.h
//  myFirstApp
//
//  Lab 1 | My First App
//
//  Created by Ricardo Ruiz on 11/3/13.
//  Copyright (c) 2013 iOS Apps Development. All rights reserved.
//  www.iosappsdev.org
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Textfield
@property (nonatomic,strong)IBOutlet UITextField *myTextField;
//Label
@property (nonatomic,strong)IBOutlet UILabel *mylabel;
//Text Variable
@property (nonatomic,strong)NSString *nameVariable;
//Message Variable
@property (nonatomic,strong)NSString *messageVariable;
//Button Action
-(IBAction)changeGreeting:(id)sender;

-(void)makeItSo;

@end
