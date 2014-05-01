//
//  prerCustomCell.m
//  PreR
//
//  Created by Mark Anthony Corpuz on 4/28/14.
//
//

#import "prerCustomCell.h"

@implementation prerCustomCell

@synthesize serviceLabel, hospitalLabel, cptLabel, priceLabel, distanceLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
