//
//  ViewController.m
//  actionsheet
//
//  Created by 熊野修太 on 2015/01/27.
//  Copyright (c) 2015年 anaguma.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)action:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *message;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    
    UIAlertController *ac =
    [UIAlertController alertControllerWithTitle:@"ActionSheetSample"
                                        message:@"Using UIAlertController, There are 3 type style of button."
                                 preferredStyle:UIAlertControllerStyleActionSheet];
    
    // on cancel
    UIAlertAction *cancelAction =[UIAlertAction actionWithTitle:@"Cancel"
                                                         style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction *action){
                                                           [self sayHello:@"Cancel"];
                                                       }];
    // on push default style
    UIAlertAction *def = [UIAlertAction actionWithTitle:@"Default"
                                                    style:UIAlertActionStyleDefault
                                                  handler:^(UIAlertAction *action) {
                                                      [self sayHello:@"Default"];
                                                  }];
    // on push destructure
    UIAlertAction *destructure = [UIAlertAction actionWithTitle:@"Destructive"
                                                          style:UIAlertActionStyleDestructive
                                                        handler:^(UIAlertAction *action) {
                                                            [self sayHello: @"Destructive"];
                                                        }];
    // register action to UIAlertController
    [ac addAction:cancelAction];
    [ac addAction:def];
    [ac addAction:destructure];
    
    [self presentViewController:ac animated:YES completion:nil];
    
}


- (void)sayHello: (NSString*) message {
    NSLog(@"%@", message);
    self.message.text = message;
}

@end
