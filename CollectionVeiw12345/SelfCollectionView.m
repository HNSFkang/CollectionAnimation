//
//  SelfCollectionView.m
//  CollectionVeiw12345
//
//  Created by 彭彭亮 on 16/7/25.
//  Copyright © 2016年 kang. All rights reserved.
//

#import "SelfCollectionView.h"

#define KScreenHeight   [UIScreen mainScreen].bounds.size.height
#define KScreenWidth   [UIScreen mainScreen].bounds.size.width

@interface SelfCollectionView()<UICollectionViewDataSource,UICollectionViewDelegate>



@end

@implementation SelfCollectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {

        _elementArr = [NSMutableArray array];
        [self subveiwsMethod];
        self.delegate = self;
        self.dataSource = self;
        
        [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        
    }
    return self;
}
- (void)subveiwsMethod{
    
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return _elementArr.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UICollectionViewCell alloc] init];
    }
    
    cell.backgroundColor = [UIColor brownColor];
    return cell;
}
- (void)layoutSubviews{
    [super layoutSubviews];

    
}


@end
