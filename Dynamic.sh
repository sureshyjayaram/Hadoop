Sample File/Data
==========================================================

01      abc		abc			 10
02	xyz	        mnc			 20
03	qwe		rty			 50
==========================================================

#!/bin/bash
#########################################################################################################################################################
#    Version      Date              created By      					Description                         				 							#
#    --------     ----------        -------------    					-------------------                 				 							#
#    v1.0         2019-02-08          Suresh Yadagotti Jayaram    		        Dynamically Generate HTML Table and Send mail					 							#																																									
#########################################################################################################################################################

TZ=US/Eastern

#########################################################################################################################################################																															
# Variable Declaration                                                                                                      							#                                                                                                                          
#########################################################################################################################################################


export EMAIL_LIST="suresh.y.jayaram@gmail.com"
export EMAIL_SENDER="suresh.y.jayaram@gmail.com"

echo "
      <html>
        <head>
          <style>
		  table {
		    border-collapse: collapse;
		    width: 100%;
		    border: 2px solid green;
		  }

		  th, td {
		    text-align: left;
		    padding: 8px;
		    border: 2px solid green;
		  }

          	tr:nth-child(even){background-color: #f2f2f2}

		 th {
		    background-color: #4CAF50;
		    color: white;
		  }

		  hr { 
		      display: block;
		      margin-top: 0.5em;
		      margin-bottom: 0.5em;
		      margin-left: auto;
		      margin-right: auto;
		      border-style: inset;
		      border-width: 10px;
		  } 
          </style>
        </head>
        
	<body>
        <h2>Daily Job Report</h2> " > test.html
         
	awk 'BEGIN {print "<html><head><table> <tr><th>Id</th><th>Name</th><th>Location</th><th>Count</th></tr>"} {print "<tr>";for(i=1;i<=NF;i++)print "<td>" $i"</td>";print "</tr>"} END{print "</table> </head></html>"}' html_list.txt >>test.html

	echo "</body></html>" >>test.html

       {
        	printf "From: ${EMAIL_SENDER}\n"
        	printf "To: ${EMAIL_LIST}\n"
        	printf "Subject:Daily Job Report \n"
        	printf "Content-Type: text/html\n"
        	cat test.html
       } | /usr/sbin/sendmail -t -i
