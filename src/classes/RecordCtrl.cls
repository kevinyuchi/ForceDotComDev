public with sharing class RecordCtrl {
		
		public list<DataCenter__c> dataCenters {set; get;}
		public Integer second {set; get;}
		public RecordCtrl(){
			second = 0;
			dataCenters = [select name, location__c , server_number__c from DataCenter__c];
			
		}
		 
		public void pollerCall(){
			second += 7;
		}
}