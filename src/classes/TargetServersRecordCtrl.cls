public with sharing class TargetServersRecordCtrl {
	
	private DataCenter__c dataCenter {set; get;}
		public List<Server_Map_Record__c> serverMapRecords {get; set;}
		public List<server__c> servers {set; get;}
		
		public TargetServersRecordCtrl(ApexPages.StandardController stdCtrl){
			this.dataCenter = (DataCenter__c)stdCtrl.getRecord();
			
			serverMapRecords = [select server__c from Server_Map_Record__c where id =:dataCenter.id];
			servers = [select id , name, power_down__c, power_level__c from server__c where id in (select server__c from Server_Map_Record__c where id =:dataCenter.id)];
			
		}
	
	
}