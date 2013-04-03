SwitchButton
============

create a realistic black switch button

这次教大家做一个仿真的开关按钮，先看做出的效果图。

[<img src="http://www.maccocoa.com/wp-content/uploads/2013/04/switchbutton.gif" alt="switchbutton" width="537" height="460" class="alignnone size-full wp-image-569" />][1]

# 介绍

Interface Builder里拖入一个按钮，选择类型为Switch，然后Image和Alternate里分别填上我们绘制好的2种状态的按钮图片，顺手把按钮大小调整好。 接下来就可以写代码了。

其实不写代码也可以，运行程序点击按钮已经可以切换了。只不过因为，我们希望用户点击按钮的时候可以尽量模拟真实按钮，对不同区域响应不同的行为。例如点击已经按下的部分，没有作用。而点击翘起的部分则会按下去。要实现这一交互细节的提高代码量非常之小。我们需要做的就是subclass一下NSButton然后重写mouseDown方法。接着在IB里把这个按钮的Class改成我们自己写的这个按钮类。

    #!objc
    - (void)mouseDown:(NSEvent *)theEvent
    {
        NSPoint loc = [self convertPoint:[theEvent locationInWindow] fromView:nil];
        if (self.state==NSOnState) {
            NSRect offRect=NSMakeRect(4, 42, self.frame.size.width-8, 37);
            if (NSPointInRect(loc, offRect)) {
                [super mouseDown:theEvent];
            }
        }else{
            NSRect onRect=NSMakeRect(4, 5, self.frame.size.width-8, 37);
            if (NSPointInRect(loc, onRect)) {
                [super mouseDown:theEvent];
            }
        }
    }
    

其实按钮的绘制才是关键。此例子中的按钮来自与Dribbble的[Billy][2]。


 [1]: http://www.maccocoa.com/wp-content/uploads/2013/04/switchbutton.gif
 [2]: http://dribbble.com/billymoren
 