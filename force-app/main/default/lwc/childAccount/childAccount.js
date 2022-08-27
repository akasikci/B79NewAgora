import { LightningElement, wire, api } from 'lwc';
import getChildAccounts from '@salesforce/apex/getAccountandContacts.getChildAccounts';

export default class ChildAccount extends LightningElement {

@api recordId

@wire (getChildAccounts,{
    parentAccId:'$recordId'
}) childAccounts;


}