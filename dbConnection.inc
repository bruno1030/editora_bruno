
<%

sub openDatabase
	set dbConnection = Server.CreateObject("ADODB.Connection")
	dbConnection.CursorLocation=3
	const dbAddress = "c:\inetpub\wwwroot\editora_bruno\dbEditora.mdb"      'informando onde está localizado o banco de dados
	dbConnection.open "driver={Microsoft Access Driver (*.mdb)};dbq=" & dbAddress
end sub


sub closeDatabase
	dbConnection.close
	set dbConnection = nothing
end sub

%>