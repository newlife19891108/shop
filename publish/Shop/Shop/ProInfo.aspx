﻿<%@ page language="C#" masterpagefile="~/zt.master" autoeventwireup="true" inherits="ProInfo, App_Web_t9irx0hh" title="产品信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script src="js/jquery-1.3.2.js" type="text/javascript"></script>
    <script src="js/cloud-zoom.1.0.2.min.js" type="text/javascript"></script>
    <link href="js/cloud-zoom.css" rel="stylesheet" type="text/css" />


    <style type="text/css">
        .colo {
            background-color: #eee;
        }


        .style1 {
            width: 83px;
        }

        .cctelist {
            text-align: center;
            line-height: 40px;
            background-color: #450b0b;
            margin: 5px 0 0 0;
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
                background-color: #450b0b;
                margin: 3px 0 0 0;
            }

                .cc li a {
                    text-decoration: none;
                    color: white;
                    display: block;
                }

                    .cc li a:hover {
                        background-color: #bbbcc8;
                    }
    </style>
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


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="in_t_l">
        
        <div class="pro_ys">
            <img src="images/carLogo.jpg" /></div>
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
    <div class="pro_r">
        <div class="info_t_t"></div>
        <div class="info_t_b">
            <div class="info_t_b_l">
                <a href=' <%=img_url.Text%>' class='cloud-zoom' id='zoom1' rel="adjustX:10, adjustY:0,zoomWidth:300,zoomHeight:160,showTitle:false">

                    <asp:Image ID="Image_1" runat="server" Height="320px" Width="280px" />
                </a>
            </div>
            <div class="info_t_b_r">
                <div style="text-align: center;">
                    <asp:Label ID="title_l" runat="server" Text=""></asp:Label>
                    <asp:Label ID="img_url" runat="server" Text="Label" Visible="False"></asp:Label>
                </div>
                <div>
                    <table class="table_detail">

                        <tbody>
                            <tr>
                                <th class="style1">编号：</th>
                                <td width="300">
                                    <asp:Label ID="image_id" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="sizeid" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="uid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th class="style1">市场价格：</th>
                                <td width="300">￥<asp:Label ID="market" runat="server" Font-Overline="False"
                                    Font-Strikeout="True" ForeColor="Black"></asp:Label>元</td>
                            </tr>
                            <tr>
                                <th class="style1">本站价格：</th>
                                <td>￥<asp:Label ID="local" runat="server"></asp:Label>元</td>
                            </tr>

                            <tr>
                                <th class="style1">类型：</th>
                                <td>
                                    <asp:Label ID="cate_name" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <th valign="top" class="style1">颜色：</th>
                                <td valign="top">
                                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                            &nbsp;<asp:LinkButton ID="b_color" runat="server" ForeColor="Black" Height="20px"
                                                CssClass="colo" OnCommand="b_color_Command" CommandArgument='<%#Eval("_sizeid") %>'><%#Eval("_color") %></asp:LinkButton>&nbsp;&nbsp;
                                       　
                                        </ItemTemplate>
                                    </asp:DataList></td>
                            </tr>
                            <tr>
                                <th class="style1">&nbsp;</th>
                                <td style="color: #450b0b;">（颜色以配件单品图为准）</td>
                            </tr>
                           
                            <th style="color: #450b0b;" class="style1">已选择：</th>
                            <td>颜色：<asp:Label ID="d_color" runat="server" ForeColor="#000099"></asp:Label></td>

                            </th>
                              </tr>           
                        </tbody>
                    </table>
                </div>
                <div class="submit">

                    <div class="submit" style="float: left; width: 70px; display: block; padding: 8px 10px; padding: 9px 10px 7px 10px; border: 1px #D99DB7 solid; background: #fff; text-align: center; color: #888;">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">加入购物车</asp:LinkButton>
                    </div>
                    <div class="submit" style="float: left; margin-left: 10px; width: 70px; display: block; padding: 8px 10px; padding: 9px 10px 7px 10px; border: 1px #D99DB7 solid; background: #fff; text-align: center; color: #888;">
                        <asp:LinkButton ID="LinkButton1" runat="server"
                            OnCommand="LinkButton1_Command" OnClick="LinkButton1_Click1">加入收藏夹</asp:LinkButton>
                    </div>
                    <div style="clear: left;"></div>
                    &nbsp;<%-- <asp:LinkButton ID="LinkButton1" runat="server" ></asp:LinkButton>--%>
                </div>
            </div>
        </div>
        <div class="info_t_f"></div>
        <div class="clear"></div>
        <div style="text-align: center">
            <asp:Label ID="content_s" runat="server"></asp:Label>
            <br />
        </div>
    </div>
    <div class="clear"></div>
</asp:Content>

