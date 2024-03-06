<%@ Page Language="C#" AutoEventWireup="true" CodeFile="首页sy.aspx.cs" Inherits="首页sy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css2/iconfont.css" />
    <link rel="stylesheet" href="../css/首页.css" />
    <script type="text/javascript" src="../js/首页.js"></script>
    <script>
        function sy() {
            alert('hao');
        }
    </script>
</head>
<body>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button"/>
    </div>
    <form id="form1" runat="server">
        <%--记得吧所有的url改过来--%>
        <div class="topbox">
            <div class="loge">
                <img src="img/好.jpg" />
                <div class="wz">排课系统</div>
            </div>
            <div class="topcen">
                <ul>
                    <li><a class="xz" href="javascript:;" onclick="huanye(0);">首页</a></li>
                    <li><a href="javascript:;" onclick="huanye(1);">使用教程</a></li>
                    <li><a href="javascript:;" onclick="huanye(2);">问题答疑</a></li>
                    <li><a href="javascript:;" onclick="huanye(3);">联系我们</a></li>
                </ul>
            </div>
            <div class="yh">
                <div class="yhimg"></div>
                <a href="初始页面/登录.aspx">尚未登录,请点击登录</a>
            </div>
        </div>
        <div class="cenbox">
            <div class="beijin">
                <img src="img/sy.jpg" />
            </div>
            <div>&nbsp;</div>
            <div class="wz1">基于图论的排课系统</div>
            <div class="wz2">提升排课效率 削减排课成本 节省排课时间</div>
        </div>
        <div class="bottbox">
            <div class="souye">
                <div class="souye1">
                    <ul class="shouye1">
                    <li>
                        <a href="javascript:alert('请先登录');">
                            <span>课程与教师录入</span>
                            <i class="i1"></i>
                            <span>根据提示输入，此为必填<br/>支持一次输入多对数据<br/>如需更改由教务人员于个人中心更改</span>
                            <i class="iconfont icon-clipboard_line"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:alert('请先登录');">
                            <span>班级与教室录入</span>
                            <i class="i1"></i>
                            <span>根据提示输入，此为必填<br/>支持一次输入多对数据<br/>如需更改由教务人员于个人中心更改</span>
                            <i class="iconfont icon-clipboard_line"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:alert('请先登录');">
                            <span>课表生成及其管理</span>
                            <i class="i1"></i>
                            <span>自动生成课表<br/>支持手动对生成课表更改与excel文件生成</span>
                            <i class="iconfont icon-data_preview_line"></i>
                        </a>
                    </li>
                </ul>
                </div>
                <div class="syjc">
                    <div class="top1">
                        <h2>注册</h2>
                        <i></i>
                        <span>点击首页右上方进入登录界面，进入登陆界面后点击注册根据提示完成注册</span>
                        <img src="img/zcjc1.png" />
                        <span>点击首页右上方进入登录界面</span>
                        <img src="img/zcjc2.png" />
                    </div>
                    <div class="top1">
                        <h2>登录</h2>
                        <i></i>
                        <span>完成注册后会自动跳转登录界面，在登录界面完成登录</span>
                        <img src="img/dljc.png" />
                    </div>
                    <div class="top1">
                        <h2>数据录入</h2>
                        <i></i>
                        <span>完成登录后即可进行数据登录，进入相应界面后根据提示输入即可</span>
                        <img src="img/sjlrjc.png" />
                    </div>
                    <div class="top1">
                        <h2>课表生成</h2>
                        <i></i>
                        <span>数据录入完成后即可在课表生成界面生成课表</span>
                        <img src="img/kbscjc1.png" />
                        <span>若要对已生成课表进行修改以及excel文件生成，点击相应按钮即可</span>
                        <span>修改课表</span>
                        <img src="img/gkbjc1.png"/>
                        <img src="img/gkbjc2.png"/>
                        <span>excel文件生成(文件格式为xlsx)</span>
                        <img src="img/xlsxjc1.png"/>
                        <img src="img/xlsxjc2.png"/>
                    </div>
                </div>
                <div class="wtdy">
                    <div class="wtdyn">
                        <div class="wt">
                            <h2><i class="iconfont icon-chat_line"></i>游客可以使用排课系统吗?</h2>
                            <span><i class="iconfont icon-customer-service"></i>暂不支持游客使用</span>
                        </div>
                        <div class="wt">
                            <h2><i class="iconfont icon-chat_line"></i>为什么注册时显示真实姓名重复，如何解决?</h2>
                            <span><i class="iconfont icon-customer-service"></i>出现名字重复可能是学校名填写错误、真实姓名填写错误。若同一学校有两位教师同名的情况，请与教务人员商议后在真实姓名栏添加人为标识。若以上解决办法均无法解决问题请联系客服</span>    
                        </div>
                        <div class="wt">
                            <h2><i class="iconfont icon-chat_line"></i>为什么我的教授课程在我未更改的情况下发生了更改？</h2>
                            <span><i class="iconfont icon-customer-service"></i>如在自己未更改的情况下发生了更改，请联系所在学校的教务人员是否更改了自己的所授课程。</span>
                        </div>
                        <div class="wt">
                            <h2><i class="iconfont icon-chat_line"></i>课表生成后可以手动更改吗?</h2>
                            <span><i class="iconfont icon-customer-service"></i>可以</span>
                        </div>
                        <div class="wt">
                            <h2><i class="iconfont icon-chat_line"></i>教务人员在对教师，课程，班级间的关系进行调整后，课表会自动刷新吗？</h2>
                            <span><i class="iconfont icon-customer-service"></i>不会，教务人员对教师，课程，班级间的关系进行调整后，需在课表生成界面重新生成课表，此时原课表会被删除</span>
                        </div>
                    </div>
                </div>
                <div class="lxwm">
                    <div class="lxwmn">
                        <h2>联系我们</h2>
                        <div class="lxfs"><i class="iconfont icon-customer-service"></i>联系方式</div>
                        <div><span><i class="iconfont icon-qq_line"></i>3533055856</span></div>
                        <div><span><i class="iconfont icon-phone_line"></i>18084330571</span></div>
                        <div><span><i class="iconfont icon-wechat_line"></i>wxid_inrtdbdf2yut22</span></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
