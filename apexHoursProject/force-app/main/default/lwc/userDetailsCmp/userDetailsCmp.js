import { LightningElement ,wire} from 'lwc';
import UserCls from '@salesforce/apex/UserRecordsFetch.userInfo';

const columns = [
    {label:'UserId' , fieldName:'Id'},
    {label:'UserName' , fieldName:'Username',editable:true},
    {label:'Email' , fieldName:'Email'},
];

export default class UserDetailsCmp extends LightningElement {




@wire(UserCls) users;

columns=columns;

}