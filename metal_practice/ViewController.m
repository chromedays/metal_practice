//
//  ViewController.m
//  metal_practice
//
//  Created by Ilgwon Ha on 12/14/20.
//

#import "ViewController.h"
#import "Renderer.h"
#import <MetalKit/MetalKit.h>

@interface ViewController ()
{
    MTKView* mtkView;
    id<MTLDevice> device;
    Renderer* renderer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    mtkView = (MTKView*)self.view;
    device = MTLCreateSystemDefaultDevice();
    mtkView.device = device;
    renderer = [[Renderer alloc] init:mtkView];
    mtkView.delegate = renderer;
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
