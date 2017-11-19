<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>请登录</title>
        <%
			String context = request.getContextPath();
		%>
        <script type="text/javascript" src="<%=context%>/js/jquery-easyui/jquery.min.js" ></script>
		<script type="text/javascript" src="<%=context%>/js/jquery-easyui/jquery.easyui.min.js" ></script>
		<script type="text/javascript" src="<%=context%>/js/jquery-easyui/locale/easyui-lang-zh_CN.js" ></script>
		<script type="text/javascript" charset="utf-8" src="<%=context%>/js/utils/utils.js"></script>
		<script type="text/javascript" charset="utf-8" src="<%=context%>/js/login/login.js"></script>
		<link rel="stylesheet" href="<%=context%>/js/jquery-easyui/themes/default/easyui.css" />
		<link rel="stylesheet" href="<%=context%>/js/jquery-easyui/themes/icon.css" />
		<link rel="stylesheet" href="<%=context%>/css/login/login.css"  media="none" onload="if(media!='all')media='all'" />
		<script type="text/javascript">
			var contextPath='${pageContext.request.contextPath}';
		</script>
    </head>
    <body>
    	<div class="top_login">
    		<a href="<%=context%>/index.jsp" class="link_button">返回首页</a>
    		<div class="top_regist">
    			<span>没有账户？</span>
    			<a href="<%=context%>/regist.jsp" class="link_button">去注册</a>
    		</div>
    	</div>
    	<div class="center_login">
    		<div class="logo_login">
    			<a href="<%=context%>/index.jsp">
					<img src="<%=context%>/images/logo.jpeg" width="160px" height="100px" />
    			</a>
    		</div>
    		<div class="text_login">
    			<form id="form_login" method="post">
    				<table class="table_login" cellspacing="15px">
    					<tr>
    						<td colspan="2">
    							<input name="accountCode" class="easyui-textbox" data-options="prompt:'手机号/用户名/邮箱',validType:'reAccound',iconCls:'icon-man'" style="width:340px;height:40px;"/>
    						</td>
    					</tr>
    					<tr>
    						<td colspan="2">
    							<span id="formatError" style="color: red;">用户名格式错误</span>
    						</td>
    					</tr>
    					
    					
    					<tr>
    						<td colspan="2">
    							<input name="accountPwd" class="easyui-textbox" data-options="type:'password',prompt:'请输入密码',validType:'rePwd',iconCls:'icon-lock'" style="width:340px;height:40px;" />
    						</td>
    					</tr>
    					<tr>
    						<td colspan="2">
    							<span id="pwdError" style="color: red;">密码格式错误</span>
    						</td>
    					</tr>
    					<tr>
    						<td colspan="2">
    							<span id="checkError" style="color: red;"></span>
    						</td>
    					</tr>
    					<tr>
    						<td style="vertical-align:middle;" align="left">
    							<span>验证码：</span>
								<input class="easyui-textbox" name="code" data-options="prompt:'验证码',validType:'verificationCode'" style="width:90px;height:30px;"/>
							</td>
								
							<td align="right">
								<img src="<%=context%>/account/code" id="img" width="70px" height="30px" />
								<input id="code" type="button" onclick="changeCode()" value="看不清" style="width: 60px;height: 30px;font-size: 16px;background-color: cornflowerblue;"/>
							</td>
		    			</tr>
		    			<tr>
    						<td colspan="2">
    							<span id="codeError" style="color: red;">验证码格式错误</span>
    						</td>
    					</tr>
		    			<tr>
    						<td colspan="2">
    							<span id="checkCodeError" style="color: red;"></span>
    						</td>
    					</tr>
		    			<tr>
		    				<td id="checkbox_login">
		    					<input type="checkbox" name="rememberMe"c/><span>下次自动登陆</span>
		    				</td>
		    				<td id="forget_login">
		    					<a href="<%=context%>/getBack.jsp" class="link-button">忘记密码</a>
		    				</td>
		    			</tr>
		    				<input type="button" value="登    录" style="width: 340px;height: 40px;font-size: 24px; onclick="login()" />
		    			</tr>
		    			
    				</table>
    			</form>
    			
    		</div>
    	</div>
 	</body>
</html>