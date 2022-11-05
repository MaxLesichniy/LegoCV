//
//  OCVMat+ImageProcessing.m
//  LegoCV
//
//  Created by Max Lesichniy on 22.04.2022.
//

#import "OCVMat+ImageProcessing.h"
#import "OCVImageOperation.h"

@implementation OCVMat (ImageProcessing)

- (OCVMat *)convertColor:(OCVColorConversionType)type {
    OCVMat* mat = [[OCVMat alloc] init];
    [OCVImageOperation convertColorFromSource:self toDestination:mat withType:type];
    return mat;
}

@end
