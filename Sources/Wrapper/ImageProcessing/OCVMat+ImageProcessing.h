//
//  OCVMat+ImageProcessing.h
//  LegoCV
//
//  Created by Max Lesichniy on 22.04.2022.
//

#import "OCVMat.h"
#import "OCVArrayables.h"
#import "OCVColorConversionType.h"

NS_ASSUME_NONNULL_BEGIN

@interface OCVMat (ImageProcessing)

- (OCVMat *)convertColor:(OCVColorConversionType)type;

@end

NS_ASSUME_NONNULL_END
