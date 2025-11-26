import { LightningElement,api } from 'lwc';

export default class ChildComponentLwc extends LightningElement {

    @api getMessageFromParent;
}