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
           
            }
    

}