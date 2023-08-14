//
//  Fibonacci.h
//  
//
//  Created by Alexander Kosmachyov on 14.08.23.
//

#import <Foundation/Foundation.h>

#pragma once

@interface ObjFibonacci : NSObject

@property (nonatomic, assign) BOOL printInvocation;

- (instancetype)initWithPrintInvocation:(BOOL)printInvocation;
- (double)fibonacci:(double)value;
- (double)cppFibonacci:(double)value;

@end

