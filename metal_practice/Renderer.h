//
//  Renderer.h
//  metal_practice
//
//  Created by Ilgwon Ha on 12/14/20.
//

#import <Foundation/Foundation.h>
#import <MetalKit/MetalKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct _Vertex {
    vector_float4 position;
    vector_float4 color;
} Vertex;

@interface Renderer : NSObject<MTKViewDelegate>
- (instancetype) init:(MTKView*)mtkView;
@end

NS_ASSUME_NONNULL_END
