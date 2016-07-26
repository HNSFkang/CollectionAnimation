//
//  ViewController.m
//  CollectionVeiw12345
//
//  Created by 彭彭亮 on 16/7/25.
//  Copyright © 2016年 kang. All rights reserved.
//

#import "ViewController.h"

#import "SelfCollectionView.h"

#define KScreenHeight   [UIScreen mainScreen].bounds.size.height
#define KScreenWidth   [UIScreen mainScreen].bounds.size.width

@interface ViewController ()

@property (nonatomic, strong) SelfCollectionView *mycolecV;

@property (nonatomic, assign) NSInteger line;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self subviewMethod];

}

- (void)subviewMethod{

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, KScreenWidth, 50);
    [button setTitle:@"1" forState:(UIControlStateNormal)];
    button.backgroundColor = [UIColor blueColor];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 3;
    layout.minimumLineSpacing = 3;
    
    _line = 2;
    layout.itemSize = CGSizeMake((KScreenWidth-3*(_line-1))/_line, (KScreenWidth-3*(_line-1))/_line);
    
    CGFloat viewheight = 50;
    _mycolecV = [[SelfCollectionView alloc] initWithFrame:CGRectMake(0, viewheight, KScreenWidth, KScreenHeight - viewheight) collectionViewLayout:layout];
    
    NSMutableArray *dataArr = [NSMutableArray arrayWithObjects: @"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",nil];
    _mycolecV.elementArr = dataArr;
    
    _mycolecV.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_mycolecV];
    
    
}

- (void)btnClick:(UIButton *)button{

    _line ++;
    [button setTitle:[NSString stringWithFormat:@"%ld",_line] forState:UIControlStateNormal];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
     layout.itemSize = CGSizeMake((KScreenWidth-3*(_line-1))/_line, (KScreenWidth-3*(_line-1))/_line);
    layout.minimumLineSpacing = 3;
    layout.minimumInteritemSpacing = 3;
    [UIView animateWithDuration:0.3 animations:^{
        
        _mycolecV.collectionViewLayout = layout;
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
