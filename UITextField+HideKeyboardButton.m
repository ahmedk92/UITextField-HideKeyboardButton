#import "UITextField+HideKeyboardButton.h"

@implementation UITextField (HideKeyboardButton)

- (void)hkb_addHideKeyboardButtonWithTitle:(NSString *)title {
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 0, 32)];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    [button addTarget:self action:@selector(hkb_hideKeyboardButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    self.inputAccessoryView = button;
}

- (void)hkb_hideKeyboardButtonTapped:(UIButton*)sender {
    [self resignFirstResponder];
}

@end
