Lab 1 | My First App
==========
<h4>In this lab you will learn how to do the following:</h4>
- How to create Properties w/IBOutlets
- How to create Variables
- How to create IBActions
 - Using storyboard and using code
- How to use NSLog


```objectivec

//Textfield
@property (nonatomic,strong) IBOutlet UITextField *myTextField;
//Label
@property (nonatomic,strong) IBOutlet UILabel *mylabel;
//Text Variable
@property (nonatomic,strong) NSString *nameVariable;
//Message Variable
@property (nonatomic,strong) NSString *messageVariable;
//Button Action
-(IBAction)changeGreeting:(id)sender;
//Custom Method 
-(void)makeItSo;

```

<h4><a href="https://github.com/ruizrica/myFirstApp/archive/master.zip"> - Download Project</a></h4>

==========

<h4><strong>Goal:</strong></h4> Create a app that gets “text” from User via 
<strong>UITextField</strong> and updates a <strong>UILabel</strong> to display text and  must also dismiss the <strong>Keyboard</strong>.
when user does one of the following actions:

- Taps the “Return” key
- Taps the “Change Greeting” button
- Taps anywhere else in the background

==========
<img src="https://dl.dropboxusercontent.com/u/14303/webLayout_lab01.001.jpg" alt="Lab 1 Screenshot">
