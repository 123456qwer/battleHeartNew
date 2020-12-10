//
//  WDBaseNodeModel.m
//  BattleHeartNew
//
//  Created by Mac on 2020/12/7.
//  Copyright © 2020 Macdddd. All rights reserved.
//

#import "WDBaseNodeModel.h"

@implementation WDBaseNodeModel

- (void)setNormalTexturesWithName:(NSString *)name
                      standNumber:(int)standNumber
                        runNumber:(int)runNumber
                       walkNumber:(int)walkNumber
                       diedNumber:(int)diedNumber
{
    
    
    self.standArr = [self stateName:@"stand" textureName:name number:standNumber];
    self.runArr   = [self stateName:@"run" textureName:name number:runNumber];
    self.walkArr = [self stateName:@"walk" textureName:name number:walkNumber];
    self.diedArr = [self stateName:@"died" textureName:name number:diedNumber];

}

- (NSMutableArray *)stateName:(NSString *)stateName
                  textureName:(NSString *)name
                       number:(int)number
{
    NSMutableArray *textures = [NSMutableArray arrayWithCapacity:number];
    for (int i = 0; i < number; i ++) {
        NSString *textureName = [NSString stringWithFormat:@"%@_%@_%d",name,stateName,i];
        SKTexture *texture = [SKTexture textureWithImage:[UIImage imageNamed:textureName]];
        [textures addObject:texture];
    }
    
    return textures;
}



@end
