trigger testtrigger1 on Contact (after update) {
        
        for(Contact con  : Trigger.New)
            {   
                //Trigger Action Logic
                List<Account> accList = [Select Phone from Account where id =: con.AccountId];      
                for(Account acc : accList)
                    {
                        acc.Phone = con.Phone;
                    }
                update accList;    
           
            }
 }