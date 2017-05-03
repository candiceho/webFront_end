<%
	String [] pro = new String[11];
	
	pro[0] = "Handbags";
	pro[1] = "New Arrival";
	pro[2] = "Sale";
	pro[3] = "Shoes";
	pro[4] = "Clothes";
	pro[5] = "Accessories";
	pro[6] = "Food";
	pro[7] = "Watches";
	pro[8] = "Jewelry";
	pro[9] = "Babies";
	pro[10] = "Gift";
	

	
	//read user input
	String product= request.getParameter("q");  //q is the name of the parameter from AJAX call

	//I am using UL/LI to return the data to xmlHttp object. Could be anything.
	String result = "<UL>";
	for (String currentPro: pro)   //new for loop
	{
		if (currentPro.contains(product))
		{
			result += "<LI><a href=\"\">" + currentPro + "</a></LI>";
		}
		else if(currentPro.toLowerCase().contains(product))
		{
			result += "<LI><a href=\"\">" + currentPro + "</a></LI>";
		}
	}
	result += "</UL>";
	
	out.println(result);   //send this to xmlHttp object
%>
