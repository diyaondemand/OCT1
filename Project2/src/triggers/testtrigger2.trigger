trigger testtrigger2 on Account (after update) {
        
        for(Account acc : Trigger.New)
            {   
                //Trigger Action Logic
                List<Contact> listCon = [Select Fax from Contact where AccountId =: acc.id];      
                for(Contact con : listCon)
                    {
                        con.Fax = acc.Fax;
                    }
                update listCon;  
                //set 1 from eclipse
                //set 2 from eclipse
                //set 3 from eclipse creating branch1
                //set 4 from eclipse committing to branch 1 again
                //change commit #5 of branch1 off master
               
           
            }
    

}