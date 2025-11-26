public without sharing class withoutsharing {
    public static integer getaccountswithout() {

        return [select id from account].size(); 
    }

    public static integer callinheritedmet(){

        return inheritedsharing.getacountscount();
    }
}