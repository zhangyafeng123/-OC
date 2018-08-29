//
//  ViewController.m
//  图文混排OC
//
//  Created by 张亚峰 on 2018/8/29.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLab;

@end
//目标 我 【爱你】
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1> Attachment - 附件
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    
    attachment.image = [UIImage imageNamed:@"d_aini"];
    //提示 lineHeight 大致和字体大小相等
    CGFloat height = self.textLab.font.lineHeight;
    attachment.bounds = CGRectMake(0, -4, height, height);
    
    // 2> 图像字符串
    NSAttributedString *imageStr = [NSAttributedString attributedStringWithAttachment:attachment];;
    // 3> 定义一个可变的属性字符串
    NSMutableAttributedString *attrStrM = [[NSMutableAttributedString alloc] initWithString:@"我"];
    // 4>拼接图片文本
    [attrStrM appendAttributedString:imageStr];
    [attrStrM appendAttributedString:[[NSAttributedString alloc] initWithString:@"66"]];
    //设置属性文本
    self.textLab.attributedText = attrStrM;
    
}
- (void)demo
{
    // farme: x, y 决定当前控件，相对父控件的位置
    // bounds: x, y 决定内部子控件相对原点的位置，就是 scrollView 的 contentOffset
    
    //测试bounds和 frame
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
    NSLog(@"frame : %@----bounds : %@",NSStringFromCGRect(v.frame),NSStringFromCGRect(v.bounds));
}




@end
