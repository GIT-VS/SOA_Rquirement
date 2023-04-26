@isTest
public class countRelatedContactTest{
    @istest static void related_Count_test() 
    {
        Account Acc = new Account();
        Acc.Name = 'Test';
        insert Acc;
        
        list<contact> lstcon = new list<Contact>();
        
        Contact con1 = new Contact();
        con1.LastName = 'Test1';
        con1.AccountId = Acc.id ;
        lstcon.add(con1);
        
        Contact con2 = new Contact();
        con2.LastName = 'Test2';
        con2.AccountId = Acc.id ;
        lstcon.add(con2);
        insert lstcon;
        system.assertEquals(2,lstcon.size());
        lstcon.remove(1);
        system.assertEquals(1,lstcon.size());
        }
}