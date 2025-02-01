<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorApp.aspx.cs" Inherits="calculatorApp2.CalculatorApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Calculator</title>

<style>
*{
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body{
	width: 100vw;
	height: 100vh;
	position:relative;
}

.calic {
	position:relative;
	width:500px;
	height: 350px;
	background-color: white;
	top: 50%;
	left: 50%;
	transform: translateX(-50%) translateY(-50%);
	display:flex;
	align-content:center;
	justify-content:space-evenly;
	flex-direction:column;
	padding:20px;
	border: 2px solid black;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3);
}
div{
	width:100%;
	display: flex;
	justify-content:space-between;
	align-items:center;
}

.text_box{
	width: 60%;
	height: 30px;
}
.btn{
	width: 100px;
	height: 40px;
}
</style>
</head>
<body>
	<form id="form1" runat="server" class="calic">
		<div>
			<label for="firstNum">Your First Number</label>
			<asp:TextBox ID="firstNum" runat="server" CssClass="text_box"></asp:TextBox>
		</div>
		<div>
			<label for="secondNum">Your Second Number</label>
			<asp:TextBox ID="secondNum" runat="server" CssClass="text_box"></asp:TextBox>
		</div>
		<div>
			<asp:Button ID="additionBtn" runat="server" CssClass="btn" Text="Addition" onclick="Button_Click"/>
			<asp:Button ID="divisionBtn" runat="server" CssClass="btn" Text="Division" onclick="Button_Click"/>
			<asp:Button ID="subtractionBtn" runat="server" CssClass="btn" Text="Subtraction" onclick="Button_Click"/>
			<asp:Button ID="multiplicationBtn" runat="server" CssClass="btn" Text="Multiplication" onclick="Button_Click"/>
		</div>
		<div>
			<label for="output">Output</label>
			<asp:TextBox ID="Output" runat="server" CssClass="text_box" ReadOnly="true"></asp:TextBox>
		</div>
	</form>
</body>
</html>
