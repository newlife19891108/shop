<%@ page language="C#" masterpagefile="~/zt.master" autoeventwireup="true" inherits="index, App_Web_vblrsmn6" title="原原首页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript">
        $(function () {
            $(".in_t_l_sr").hover;
        });
    </script>



    <script src="js/swfobject.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        function expand(el) {
            childObj = document.getElementById(el);

            if (childObj.style.display == 'none') {
                childObj.style.display = 'block';
            }
            else {

            }
            return;
        }
        function expand1(el) {
            childObj = document.getElementById(el);

            if (childObj.style.display == 'block') {
                childObj.style.display = 'none';
            }
            else {

            }
            return;
        }
    </script>
    <style type="text/css">
        .cctelist {
            text-align: center;
            line-height: 40px;
            background-color: #450b0b;
            margin:5px 0 0 0;
        }

            .cctelist a {
                text-decoration: none;
                color: white;
                display: block;
            }

                .cctelist a:hover {
                    padding-left: 10px;
                    background-color: #bbbcc8;
                }

        .cc {
        }

            .cc li {
                height: 25px;
                text-align: center;
                line-height: 25px;
                background-color:#450b0b;
                margin: 3px 0 0 0;
            }

                .cc li a {
                    text-decoration: none;
                    color:white;
                    display: block;
                }

                    .cc li a:hover {
                        background-color: #bbbcc8;
                    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="in_t_l">

        <div>


            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div onmouseout="expand1(<%#Eval("_fathercateid") %>)" onmouseover="expand(<%#Eval("_fathercateid")%>)">

                        <div style="width: 90px" class="cctelist">
                            <a href="#"><%#Eval("_fathername") %></a>
                        </div>

                        <div id="<%#Eval("_fathercateid")%>" style="margin: 0  0 0 10px; width: 85px; display: none;">
                            <ul class="cc">
                                <%# datas(Eval("_fathercateid").ToString()) %>
                            </ul>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


        </div>


    </div>

    <div class="in_t_c">

        <div id="jquery-script-menu"></div>
        <div class="slider">
            <link rel="stylesheet" href="css/style.css">
            <div class="slider-container">
                <div class="slider-wrapper">
                    <div class="slide">
                        <img src="images/img1.jpg" alt="jQuery Slider with CSS Transitions">
                    </div>
                    <div class="slide">
                        <img src="images/img2.jpg" alt="jQuery Slider with CSS Transitions">
                    </div>
                    <div class="slide">
                        <img src="images/img3.jpg" alt="jQuery Slider with CSS Transitions">
                    </div>
                    <div class="slide">
                        <img src="images/img4.jpg" alt="jQuery Slider with CSS Transitions">
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/slider.js"></script>
        <script type="text/javascript">
            (function () {
                Slider.init({
                    target: $('.slider'),
                    time: 6000
                });
            })();
        </script>
        <![CDATA[
	
	var so = new SWFObject("swf/main.swf ","STYLE ARENA", "640px", "380px", "8", "#ffffff");
	so.addParam("quality", "high");
	so.addParam("salign", "");
	so.addParam("scale", "noscale");
	so.addParam("wmode", "transparent");
	so.addParam("allowScriptAccess", "always");
	so.write("top_flash");
	
	// ]]>
	</script>
	
    </div>

    <%--右边最新广告--%>
    <div class="in_t_r">
        <div style="padding-bottom: 10px;"><a href=" http://www.mercedes-benz.com.cn/">
            <img src="images/index_top_right_01.jpg"/></a></div>
        <div style="padding-bottom: 13px; padding-top: 13px;"><a href=" https://www.tesla.cn/">
            <img src="images/index_top_right_02_703.jpg" /></a></div>
        <div style="padding-top: 10px;"><a href="https://www.lamborghini.com/cn-en/">
            <img src="images/index_top_right_03_0726.jpg"/></a></div>

    </div>

    <div class="clear"></div>

    <%--促销广告--%>
    <%--<asp:Repeater ID="Repeater1" runat="server">--%>

    <%-- 新商品--%>
    <div class="piczt">
        <div class="pic_list" style="background: -webkit-linear-gradient(left, black , #450b0b); height: 32px;">
            <div class="center" style="color: white; font-family: SimHei; font-size: 20px; text-align: left; padding-left: 20px">新商品</div>
        </div>
        <div class="pic_list_y">
            <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal"
                RepeatColumns="5">
                <ItemTemplate>
                    <div style="margin-left: 26px;">
                        <div class="pic">
                            <a href='ProInfo.aspx?uid=<%#Eval("_id") %>' target="_blank">
                                <asp:Image ID="Image1" ImageUrl='<% # bd(Eval("_imageid").ToString())%>' runat="server" Style="width: 160px; height: 200px;" /></a>
                        </div>
                        <div style="padding-left: 42px;">
                            <img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                        <div style="padding-left: 53px;"><%#Eval("_title") %></div>
                        <div class="tit"><a href="#" target="_blank"></a></div>
                        <div style="padding-left: 48px;">
                            ￥<%#Eval(" _localprice ","{0:N2}")%></div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <%--热销推荐--%>
    <div class="piczt">
        <div class="pic_list" style="background: -webkit-linear-gradient(left, black , #450b0b); height: 32px;">
            <div class="center" style="color: white; font-family: SimHei; font-size: 20px; text-align: left; padding-left: 20px">热销推荐</div>
            <%--<img src="images/lxtj.gif" />--%>
        </div>
        <div class="pic_list_y">
            <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal"
                RepeatColumns="5">
                <ItemTemplate>
                    <div style="margin-left: 26px;">
                        <div class="pic">
                            <a href='ProInfo.aspx?uid=<%#Eval("_id") %>' target="_blank">
                                <asp:Image ID="Image1" ImageUrl='<% #bd(Eval("_imageid").ToString())%>' runat="server" Style="width: 160px; height: 200px;" /></a>
                        </div>
                        <div style="padding-left: 42px;">
                            <img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                        <div style="padding-left: 53px;"><%# Eval("_title")%></div>
                        <div class="tit"><a href="#" target="_blank"></a></div>
                        <div style="padding-left: 48px;">
                            ￥<%#Eval("_localprice ","{0:N2}")%></div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

    <%--特价促销--%>
    <div class="piczt">
        <div class="pic_list" style="background: -webkit-linear-gradient(left, black , #450b0b); height: 32px;">
            <div class="center" style="color: white; font-family: SimHei; font-size: 20px; text-align: left; padding-left: 20px">特价促销</div>
            <%--<img src="images/tjcx.gif" />--%>
        </div>
        <div class="pic_list_y">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal"
                RepeatColumns="5">
                <ItemTemplate>
                    <div style="margin-left: 26px;">
                        <div class="pic">
                            <a href='ProInfo.aspx?uid=<%#Eval("_id") %>' target="_blank">
                                <asp:Image ID="Image3" ImageUrl='<% # bd(Eval("_imageid").ToString())%>' runat="server" Style="width: 160px; height: 200px;" /></a>
                        </div>
                        <div style="padding-left: 42px;">
                            <img src="images/1263192879102787928.gif" title="NEW" border="0"></div>
                        <div style="padding-left: 53px;"><%#Eval("_title") %></div>
                        <div class="tit"><a href="#" target="_blank"></a></div>
                        <div style="padding-left: 48px;">
                            ￥<%#Eval(" _localprice ","{0:N2}")%></div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>

