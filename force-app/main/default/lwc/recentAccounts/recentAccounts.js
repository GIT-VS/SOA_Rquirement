import { LightningElement, wire} from 'lwc';
import recentAccount from '@salesforce/apex/accountController.recentAccount'
export default class accountData extends LightningElement{
    clist=[];
    tabcols=[
        {fieldName:"Name",label:"Account Name", type:"text"},
        {fieldName:"BillingCity",label:"Billing City", type:"text"},
        {fieldName:"AnnualRevenue",label:"Annual Revenue", type:"text"},
        {fieldName:"CreatedDate",label:"Date of Creation", type:"text"}
    ];
    connectedCallback()
    {
        recentAccount().then(
            result=>{this.clist=result;}
        );
    }
}