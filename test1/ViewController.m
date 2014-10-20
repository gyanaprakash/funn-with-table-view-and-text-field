//
//  ViewController.m
//  test1
//
//  Created by Bsetecip10 on 17/10/14.
//  Copyright (c) 2014 Bsetecip10. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController
@synthesize textfield;
- (void)viewDidLoad
{
    textfield.userInteractionEnabled=true;
    [textfield setKeyboardAppearance:UIKeyboardAppearanceLight];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    [textfield setKeyboardAppearance:UIKeyboardAppearanceLight];
//    
//}
- (IBAction)resignkeyboard:(id)sender
{
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@" did end editing :");
    [textfield resignFirstResponder];
        
}
//button clike method
- (IBAction)buttonclicked:(id)sender
{
    
    if (textfield.text.length==0)
    {
        NSLog(@"text filed empty");
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Warning !" message:@"Enter the value" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
    else
    {
        CGFloat y=150;
        int i;
        
        for (i=0; i<[textfield.text intValue]; i++)
        {
            UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(40, y, 100, 40)];
            
            // increase the y value according to loop
            y=y+50;
            
            // pass the interger value to the string
            [lable setText:[NSString stringWithFormat:@"%d",i+1]];
            [self.view addSubview:lable];
        }
        
    }
}
@end
