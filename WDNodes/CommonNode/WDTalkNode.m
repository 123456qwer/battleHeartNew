//
//  WDTalkNode.m
//  BattleHeartNew
//
//  Created by Mac on 2020/12/17.
//  Copyright © 2020 Macdddd. All rights reserved.
//

#import "WDTalkNode.h"

@implementation WDTalkNode

- (void)setText:(NSString *)text
{
    SKLabelNode *last = (SKLabelNode *)[self childNodeWithName:@"text"];
    [last removeFromParent];
    //NSArray *fontArr = [UIFont familyNames];
    NSString *fontName = @"Noteworthy";
    
 
    
    SKLabelNode *node = [SKLabelNode labelNodeWithFontNamed:fontName];
    node.name = @"text";
    node.numberOfLines = 0;
    node.text = text;
    node.fontColor = [UIColor blackColor];
    node.zPosition = 100;
    node.colorBlendFactor = 1;
    node.fontSize = 30;
    node.color = [SKColor orangeColor];
    [self addChild:node];
    
    CGFloat height = node.frame.size.height;
    
    while (self.size.width / 3.0 < node.frame.size.width) {
        node.fontSize -- ;
    }
    
    node.position = CGPointMake(0, -height / 2.0 + 10);
   
    NSLog(@"textWidth: %lf textHeight:%lf",node.frame.size.width,node.frame.size.height);
    NSLog(@"selfW: %lf, selfH: %lf",self.size.width,self.size.height);
}

@end
