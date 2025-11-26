public with sharing class withsharing {
    public static integer getAccounts() {

        return [select id from account].size();    

    }

    public static integer callinheritedmethod(){

        return inheritedsharing.getacountscount();
    }
}