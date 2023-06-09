import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DocumentUpload extends LightningElement {

    

    @api recordId;
    @api acceptedFileFormats;
    @api fileUploaded;

    handleUploadFinished() {
        this.dispatchEvent(new CustomEvent('uploadfinished', {
            composed: true,
            bubbles: true,
            cancelable: true,
            detail: {
                data: { recordId: this.recordId }
            }
        }));
        this.dispatchEvent(new ShowToastEvent({
            title: 'Completed',
           message:  'File has been uploaded',
           variant: 'success'
        }));
        this.fileUploaded = true; //Monika for uploaded file
    }
}