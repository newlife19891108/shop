﻿<%@ page language="C#" masterpagefile="~/zt.master" autoeventwireup="true" inherits="Login_aa, App_Web_vblrsmn6" title="会员登入" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="login_zt">
     <div class="border1_t"></div>
     <div class="border1_m_zt">
        <div class="border1_m_zt_l">
            <div class="login_l">
                <div style="margin-bottom:30px;"><img src="images/login1.jpg" /></div>
                <div>
                    <table style="margin-left:auto;margin-right:auto;">
                        <tr>
                            <td width="60">Email</td>
                            <td> <asp:TextBox ID="TextBox3" runat="server" Width="124px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>密码
                               </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="124px"></asp:TextBox></td>
                        </tr>
                         <tr>
                            <td>验证码
                               </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="62px"></asp:TextBox><img alt="验证码" src="shopValidateCode.aspx" title="点击" style=" margin-bottom:-5px; cursor:pointer;" onclick="this.src='shopValidateCode.aspx?id='"+Math.random()+"'" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:CheckBox ID="CheckBox1"  runat="server" Checked="True" />记住用户名 </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td style="height:60px;">
                                <asp:ImageButton ID="ImageButton1" runat="server"  
                                    ImageUrl="~/images/login2.jpg" onclick="ImageButton1_Click" /> 
                               </td>
                        </tr>
                    </table>

                </div>
                </div>
            <%--<div class="login_r">
                <img src="images/yqtx.gif" />友情提示：<br />
                哈啾实行会员制，如果您还没有注册，请点击“立即注册”按钮填写相关信息注册成为网站会员，注册之后您可以： <br />
                　　1. 保存您的个人资料<br />
                　　2. 收藏您关注的商品<br />
                　　3. 享受会员服务<br />
                　　4. 订阅本店商品信息<br />
            </div>--%>
        </div>
     </div>
     <div class="border1_b"></div>
</div>
</asp:Content>

