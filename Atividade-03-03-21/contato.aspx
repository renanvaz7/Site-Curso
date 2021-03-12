<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="Atividade_03_03_21.WebForm1" %>

<!DOCTYPE html>

<style>
    #form1{
        margin-top: 30px;
    }

    #Button1:hover{
        border:solid 1px black;
    }

</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>Formulário de contato</title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="container">
            <div class="form-group">
                <label for="fnome">Nome</label>
                <input type="text" name="fnome" id="fname" class="form-control" placeholder="Insira seu nome"/>
                <br />
                <label for="femail">Email</label>
                <input type="text" name="femail" id="femail" class="form-control" placeholder="email@email.com"/>
                <br />
                <label for="ftel">Telefone</label>
                <input type="text" name="ftel" id="ftel" class="form-control" placeholder="Insira seu telefone"/>
            </div>
            <div class="row">
                <div class="col-4"></div>
            <div class="col-4">
                <asp:Button ID="Button1" runat="server" Text="Enviar" Width="250px" Height="50px" Onclick="Button1_Click" BackColor="#66c2ff" BorderStyle="None"/>
            </div>
            <div class="col-4"></div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
