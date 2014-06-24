#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize {
    // your code here
    
    // Create our character and add it to the screen
    character = (Character*)[CCBReader load:@"Character"]; // Will load a new Character from the CCB file we created for you named Character. CCB files are created by SpriteBuilder and describe the properties and appearance of in-game objects like our Flappy Bird.
    [physicsNode addChild:character];// Will add your character as a child of physicsNode so that physics will be applied to it.
    
    
    
    
    
    // Add the First Obstacle
    [self addObstacle];
    
    
    // Adding More Obstacles
    timeSinceObstacle = 0.0f; // Initalize the variable timeSinceObstacle
}


// Update Method
// In games built with Cocos2D, if your class has an update method like the one above, it will automatically get called 60 times a second.
- (void)update:(CCTime)delta {
    // This will be run every frame
    // delta is the time that has elapsed since the last time it was run.
    // put update code here
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f) {
        // Add a new obstacle
        [self addObstacle];
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
    }
}






// put new methods here
// Add touch input functionality so users can interact with the screen to play your game.
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    // touchBegan - This method is part of the Cocos2D game engine and whenever the player touches the screen, this method is called automatically -- all you need to do is fill it in.
    
    
    
    //this will get called every time the player touches the screen
    [character flap]; // Now, whenever a new touch begins, we will call the 'flap' method on our character which will apply an impulse to our character. This will be simulated by the physicsNode and the character will fly upwards.
}

@end
