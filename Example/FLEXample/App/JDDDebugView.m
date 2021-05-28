//
//  JDDDebugView.m
//  Debug-FLEX
//
//  Created by curry on 2021/5/26.
//

#import "JDDDebugView.h"
@interface JDDDebugView ()

@property (weak, nonatomic) IBOutlet UILabel *envLabel;

@property (weak, nonatomic) IBOutlet UIButton *debugButton;
@property (weak, nonatomic) IBOutlet UIButton *preButton;
@property (weak, nonatomic) IBOutlet UIButton *releaseButton;


@end

@implementation JDDDebugView

+ (JDDDebugView *)customView
{
    static JDDDebugView *debugView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        debugView = (JDDDebugView *)[[[NSBundle mainBundle] loadNibNamed:@"JDDDebugView" owner:nil options:nil] firstObject];
        debugView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, CGRectGetHeight(debugView.bounds));
    });
    
    return debugView;
}

#pragma mark -

- (IBAction)envChange:(UIButton *)button {

}

- (IBAction)download:(id)sender {
    
}

@end
