//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    // Let's declare variables for a character and a physics node.
    // This code declares two different variables in the class scope, meaning they can be accessed
    // anywhere in the GamePlayScene class.

    Character* character; // This variable will store an instance of our Flappy bird.
    CCPhysicsNode* physicsNode; // Will reference a node that simulates physics.

    
    
    // Adding more obstacles
    // 
    float timeSinceObstacle;
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
