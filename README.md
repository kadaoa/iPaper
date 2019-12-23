# iPaper

纯SwiftUI

  SwiftUI技术还不是很成熟，一些常用的组件比如TextFieldView WebView还需要借助UIKit，Apple官方应该会在后续更新
并且对于Model和ViewModel的部分还有些欠缺，在View中无法将一个数组遍历绑定，理想情况是只有主界面直接和整
个Model打交道，其余的SubView各取所需从主界面获取Model的一部分并且由ViewModel实现双向的绑定，但是实际
情况导致主界面的第一层子组件也需要引入Model的环境，然后还需要从主界面获取一个传值的实例副本来判断在Model
的Index

页面会显示简历名称和完成度
![image](/images/1.png)
点击下方按钮就能添加新的简历
![image](/images/2.png)
![image](/images/3.png)
左滑删除
![image](/images/4.png)
单击左侧可以进入编辑模式编辑简历名称
![image](/images/5.png)
![image](/images/6.png)
点击链接后可以进入编辑和预览简历页面
![image](/images/7.png)
![image](/images/8.png)

