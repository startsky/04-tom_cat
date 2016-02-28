//
//  ViewController.m
//  04-tom猫
//
//  Created by 1 on 16/1/5.
//  Copyright © 2016年 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomImg;

@end

@implementation ViewController

- (IBAction)eatBird:(UIButton *)eat {
    
    [self tomAction:@"eat" withImgNum:40];
//    NSMutableArray *eatBirdImgArry = [NSMutableArray array];
//    for (int i = 0; i < 40; i++) {
////        NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"eat_%02d.jpg",i] ofType:nil];
////        self.tomImg.image = [UIImage imageWithContentsOfFile:path];
//        NSString *imgName = [NSString stringWithFormat:@"eat_%02d.jpg",i];
//        UIImage *img = [UIImage imageNamed:imgName];
//        [eatBirdImgArry addObject:img];
//    }
//    self.tomImg.animationImages = eatBirdImgArry;
//    
//    
//    self.tomImg.animationRepeatCount = 1;
//    self.tomImg.animationDuration = self.tomImg.animationImages.count * 0.075;
//    [self.tomImg startAnimating];
    
}

- (IBAction)konckHead:(UIButton *)sender {
    
    [self tomAction:@"knockout" withImgNum:40];
//    NSMutableArray *imgArry = [NSMutableArray array];
//    for (int i = 0; i < 81; i++) {
//        //        NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"eat_%02d.jpg",i] ofType:nil];
//        //        self.tomImg.image = [UIImage imageWithContentsOfFile:path];
//        NSString *imgName = [NSString stringWithFormat:@"knockout_%02d.jpg",i];
//        UIImage *img = [UIImage imageNamed:imgName];
//        [imgArry addObject:img];
//    }
//    self.tomImg.animationImages = imgArry;
//    
//    
//    self.tomImg.animationRepeatCount = 1;
//    self.tomImg.animationDuration = self.tomImg.animationImages.count * 0.075;
//    [self.tomImg startAnimating];
}

-(void) tomAction:(NSString *) actionName withImgNum:(NSInteger) count
{
    if (self.tomImg.isAnimating) {
        return;
    }
    NSMutableArray *imgArry = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@_%02d.jpg",actionName,i] ofType:nil];
        UIImage *img = [UIImage imageWithContentsOfFile:path];
//        NSString *imgName = [NSString stringWithFormat:@"%@_%02d.jpg",actionName, i];
//        UIImage *img = [UIImage imageNamed:imgName];
        [imgArry addObject:img];
    }
    self.tomImg.animationImages = imgArry;
    
    
    self.tomImg.animationRepeatCount = 1;
    self.tomImg.animationDuration = self.tomImg.animationImages.count * 0.075;
    [self.tomImg startAnimating];
}

-(IBAction)tomCatAction:(UIButton *)actionButton
{
    NSString *actionName = [actionButton currentTitle];
    NSInteger imageNum = actionButton.tag;
    [self tomAction:actionName withImgNum:imageNum];
}
@end
