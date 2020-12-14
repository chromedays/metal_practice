//
//  Renderer.m
//  metal_practice
//
//  Created by Ilgwon Ha on 12/14/20.
//

#import "Renderer.h"

@interface Renderer ()
{
    id<MTLDevice> device;
    id<MTLCommandQueue> commandQueue;
}

@end

@implementation Renderer

- (instancetype) init:(MTKView*)mtkView
{
    if (!(self = [super init])) {
        return nil;
    }

    device = mtkView.device;
    commandQueue = [device newCommandQueue];
    
    
    return self;
}

- (void)drawInMTKView:(MTKView *)view
{
    id<MTLCommandBuffer> commandBuffer = [commandQueue commandBuffer];
    MTLRenderPassDescriptor* renderPassDescriptor = view.currentRenderPassDescriptor;
    renderPassDescriptor.colorAttachments[0].clearColor = MTLClearColorMake(1, 0, 0, 1);
    id<MTLRenderCommandEncoder> renderEncoder = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
    [renderEncoder endEncoding];
    [commandBuffer presentDrawable:view.currentDrawable];
    [commandBuffer commit];
}

- (void)mtkView:(MTKView *)view drawableSizeWillChange:(CGSize)size
{
    
}
@end
