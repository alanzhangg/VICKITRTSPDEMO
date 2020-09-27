//
//  ViewController.m
//  RTSPFWDemo
//
//  Created by zyyk on 2020/9/27.
//

#import "ViewController.h"
#import <MobileVLCKit/MobileVLCKit.h>

@interface ViewController ()<VLCMediaPlayerDelegate>{
    VLCMediaPlayer *_mediaplayer;
}
@property (weak, nonatomic) IBOutlet UIView *movieView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mediaplayer = [[VLCMediaPlayer alloc] init];
    _mediaplayer.delegate = self;
    _mediaplayer.drawable = self.movieView;

    /* create a media object and give it to the player */
    _mediaplayer.media = [VLCMedia mediaWithURL:[NSURL URLWithString:@"rtsp://222.128.10.126:554/live"]];
    
    [_mediaplayer play];
}

- (IBAction)playandPause:(id)sender
{
    if (_mediaplayer.isPlaying)
        [_mediaplayer pause];

    [_mediaplayer play];
}



@end
