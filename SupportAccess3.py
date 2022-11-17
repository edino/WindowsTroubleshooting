## Text menu in Python
      
def print_menu():       ## Your menu design here
    print ("1 Enable Support Access")
    print ("2 Enable Support Access for 1 day")
    print ("3 Enable Support Access for 2 days")
    print ("4 Enable Support Access for 1 week")
    print ("5 Enable Support Access for 2 weeks")
    print ("6 Enable Support Access for 1 month")
    print ("7 Enable Support Access for 2 months")
    print ("0. Exit")
  
loop=True      
  
while loop:          ## While loop which will keep going until loop = False
    print_menu()    ## Displays menu
    choice = input("Enter your choice [1-7]: ")
     
    if choice==1:     
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1";" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==2:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1day';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==3:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2days';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==4:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1week';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==5:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2week';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==6:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '1month';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here
    elif choice==7:
        print (psql -U nobody -d corporate -c "update tblsupportaccess set isenable ="1",lifetime_duration= '2months';" && nservice supportaccess:start -ds nosync)
        ## You can add your code or functions here        
        loop=False # This will make the while loop to end as not value of loop is set to False
    else:
        # Any integer inputs other than values 1-5 we print an error message
        raw_input("Wrong option selection. Enter any key to try again..")