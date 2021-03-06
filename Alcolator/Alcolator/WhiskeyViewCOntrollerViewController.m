//
//  WhiskeyViewCOntrollerViewController.m
//  Alcolator
//
//  Created by Sean Craig on 8/10/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "WhiskeyViewCOntrollerViewController.h"

@interface WhiskeyViewCOntrollerViewController ()

@end

@implementation WhiskeyViewCOntrollerViewController

- (void)buttonPressed:(UIButton *)sender;
{
    [self.beerPercentageTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCounterSlider.value;
    int ouncesInOneBeerGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentageTextField.text floatValue];
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1;  // a 1oz shot
    float alcoholPercentageOfWhiskey = 0.4;  // 40% is average
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    
    NSString *whiskeyText;
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount == 1) {
        whiskeyText = NSLocalizedString(@"shot", @"singular shot");
    } else {
        whiskeyText = NSLocalizedString(@"shots", @"plural of shot");
    }
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% alcohol) contains as much alcohol as %.1f %@ of whiskey.", nil), numberOfBeers, beerText, [self.beerPercentageTextField.text floatValue], numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;
    
    
    
    
    
    
    
    
    
}

@end
