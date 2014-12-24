public with sharing class RecordCtrl {
		
		public list<DataCenter__c> dataCenters {set; get;}
		
		public RecordCtrl(){
			
			dataCenters = [select name, location__c , server_number__c from DataCenter__c];
			
		}
		 
		
}