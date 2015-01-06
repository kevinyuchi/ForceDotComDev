public with sharing class RecordCtrl {
		
		public list<DataCenter__c> dataCenters {set; get;}
		public Integer second {set; get;}
		public String SelectedValue {get; set;}
		public Id TargetDataCenterID {get; set;}
		
		public RecordCtrl(){
			second = 0;
			//TargetDataCenterID = '';
			dataCenters = [select name, location__c , server_number__c from DataCenter__c];
		} 
		  
		public void pollerCall(){ 
			second += 7;
		}
		
		public pageReference setTargetId(){
			//this.TargetDataCenterID = TargetDataCenterID;
			return null;
		}
		
		public pageReference toTargetDataCenter(){
			//id targetId = id.valueOf(TargetDataCenterID);
			DataCenter__c dataCenter = new DataCenter__c(id=TargetDataCenterID);
			PageReference actionPage = new ApexPages.StandardController(dataCenter).view();
        	actionPage.setRedirect(true);
        	return actionPage;
			
			/*PageReference pg = new PageReference('/apex/RecordViewPage');
			pg.getParameters().put('id',TargetDataCenterID);
			pg.setRedirect(true);
			return pg;*/
		}
		
}