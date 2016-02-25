//
//  TouchSensor.mm
//  CardboardSDK-iOS
//
//

#import "CBDViewController.h"
#import "TouchSensor.h"
#import "MagnetSensor.h"

@implementation CBDViewController (TouchSensor)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch = [touches anyObject];
	UIView *view = touch.view;
	CGSize size = view.frame.size;
	CGPoint loc = [touch locationInView:view];
	
	float xloc = loc.x / size.width;
	float yloc = loc.y / size.height;
	
	if(xloc > .4 && xloc < .6 && yloc < .2) {
		[[NSNotificationCenter defaultCenter]
		 postNotificationName:CardboardSDK::CBDTriggerPressedNotification
		 object:nil];
	}
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
}

@end
