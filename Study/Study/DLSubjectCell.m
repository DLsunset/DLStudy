//
//  DLSubjectCell.m
//  Study
//
//  Created by qyhy on 2018/7/4.
//  Copyright © 2018年 QYhengye. All rights reserved.
//

#import "DLSubjectCell.h"

@interface DLSubjectCell ()

@property (nonatomic, strong) UILabel *name;
@property (nonatomic, strong) UILabel *options;
@property (nonatomic, strong) UILabel *answer;

@end

@implementation DLSubjectCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {

    UILabel *name = [UILabel DL_UncertaintyLabelWithFontSize:RealValue(14)];
    _name = name;
    name.font = [UIFont systemFontOfSize:RealValue(14) weight:1];
    name.textColor = THEMECOLOR;
    [self.contentView addSubview:name];
    [name mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.offset(RealValue(15));
        make.right.offset(RealValue(-15));
    }];
    
    UILabel *options = [UILabel DL_UncertaintyLabelWithFontSize:RealValue(12)];
    _options = options;
    options.textColor = [UIColor darkGrayColor];
    [self.contentView addSubview:options];
    [options mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(RealValue(15));
        make.right.offset(RealValue(-15));
        make.top.equalTo(name.mas_bottom).offset(RealValue(15));
    }];
    
    UILabel *answer = [UILabel DL_UncertaintyLabelWithFontSize:RealValue(14)];
    _answer = answer;
    answer.font = [UIFont systemFontOfSize:RealValue(14) weight:1];
    answer.textColor = THEMECOLOR;
    [self.contentView addSubview:answer];
    [answer mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(RealValue(15));
        make.top.equalTo(options.mas_bottom).offset(RealValue(15));
        make.right.bottom.offset(RealValue(-15));
    }];
    
}

- (void)setModel:(SubjectModel *)model {
    _model = model;
    _name.text = model.name;
    _options.text = model.options;
    _answer.text = model.answer;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
