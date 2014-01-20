//
//  ViewController.m
//  TemperatureConverter
//
//  Created by Adam Tait on 1/19/14.
//  Copyright (c) 2014 Adam Tait. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)celsiusEditingChanged:(id)sender;
- (IBAction)fahrenheitEditingChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (float)convertCelsius:(float)temperatureInCelsius {
    return ((temperatureInCelsius * 1.8) + 32);
}

- (float)convertFahrenheit:(float)temperatureInFahrenheit {
    return ((temperatureInFahrenheit - 32) / 1.8);
}

- (IBAction)celsiusEditingChanged:(id)sender {
    float newFahrenheitValue = [self convertCelsius:[self.celsiusTextField.text floatValue]];
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%.0f", newFahrenheitValue];
}

- (IBAction)fahrenheitEditingChanged:(id)sender {
    float newCelsiusValue = [self convertFahrenheit:[self.fahrenheitTextField.text floatValue]];
    self.celsiusTextField.text = [NSString stringWithFormat:@"%.0f", newCelsiusValue];
}

@end
