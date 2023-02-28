import { LightningElement, track, api } from 'lwc';
import fetchPrice from '@salesforce/apex/CaseTriggerHandler.displayProductdetails';

export default class Fetchcountrybasedprice extends LightningElement {

    @api recordId;
    pricingDetails = {};
    connectedCallback() {
        this.onload();
    }

    onload() {
        let params1 = {
            csId: this.recordId
        };
        fetchPrice(params1)
            .then(result => {
                this.pricingDetails = result;
            })
    }

}