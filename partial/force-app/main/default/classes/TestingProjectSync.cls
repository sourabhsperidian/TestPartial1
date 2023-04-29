global class TestingProjectSync {
    
    //@future(callout=true)
  /*  public static void doCallout(String recId){
        Project__c proj = [SELECT Id, Name, Property_Area__c 
                           FROM Project__c WHERE Id =: recId];
        
        List<ContentDocument> lstContentDocs = [SELECT Id FROM ContentDocument WHERE parentId =: proj.Id];
        List<Id> lstIds = new List<Id>();
        for(ContentDocument conDoc : lstContentDocs){
            lstIds.add(conDoc.Id);
        }
        
         List<ContentVersion> a1 = [select id, FileExtension, FileType, Title, VersionData FROM ContentVersion
         WHERE FirstPublishLocationId =:recId];
         system.debug('--->'+a1);
         String body = '{"Project_Id":"' + proj.Id +  '", "Project_Name":"' + proj.Name +  '", "Project_Type":"' + proj.Property_Type__c +  '" , "Image_Url":"' + proj.Image_URL__c +  '", "Project_Area":"' + proj.Property_Area__c +  '",';
         
         String filesStr = '"files":[ ';
        for(ContentVersion conVer : a1){
            system.debug('----'+conVer.VersionData);
            filesStr = filesStr + '{ "File":"'+conVer.VersionData+ '"},';
        }
        filesStr = filesStr.removeEnd(',');
        filesStr = filesStr + '] ';
        
        body = body+ filesStr+'}';
        
        
        system.debug('Body : '+body);
        /*
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setHeader('Authorization','Security Token');
        request.setHeader('Accept','text/plain');
        request.setHeader('Content-Type', 'text/json');
        request.setHeader('Authorization', 'Bearer ');
        request.setEndpoint('');
        request.setBody(body);
        
        HttpResponse response = http.send(request);
        system.debug('response: ' + response);
    } */
    
    @future(callout=true)
    public static void doGetCallout(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://dxapi.speridian.com/api/projects');
        
        HttpResponse response = http.send(request);
        system.debug('response: ' + response);
        system.debug('response: ' + response.getBody());
    }
    
 /**************************************Monika: Create Method POC START, 20/12/2022 **************************/
    
    @future(callout=true)
    public static void doPostCallout(Set<String> RecId){
        
        List<Project__c> projList = [SELECT Id, Name, Property_Area__c 
                           FROM Project__c WHERE Id IN:RecId];
        reqwrapper reqList = New reqwrapper();
        List<datawrapper> datawrapper = New List<datawrapper>();
        String postbody;
        for(Project__c Proj : projList){
              datawrapper req = new datawrapper();
              req.Project_Id = proj.Id;
              req.Project_Name = proj.Name;
              datawrapper.add(req);
        }   
        reqList.data = datawrapper;
        System.debug('request:' +  reqList);
        postbody = JSON.serialize(reqList);       
        System.debug( postbody);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://dxapi.speridian.com/api/projects');
        request.setBody(postbody);
        system.debug('RequestBody: ' + postbody);
        system.debug('Request: ' + request);
        
        HttpResponse response = http.send(request);
        system.debug('response: ' + response.getBody());
        ProjectAPIResParser parsedResponse = (ProjectAPIResParser) JSON.deserialize(response.getBody(), ProjectAPIResParser.class); 
        system.debug('responseparse: ' + parsedResponse); 
        List<Project__c> resultList = new List<Project__c>();

        for( Integer i = 0; i< parsedResponse.data.size(); i++){
            Project__c obj = new Project__c();
            obj.Id = parsedResponse.data[i].Project_Id;             
            obj.Project_Id_DB__c = parsedResponse.data[i].Id;
            resultList.add(obj);
        }
        update resultList;  
    }
    
 /**************************************Monika: Update Method POC START, 20/12/2022 **************************/   
    @future(callout=true)
    public static void doUpdateCallout(Set<String> RecId){
        
        List<Project__c> projList = [SELECT Id,Project_Id_DB__c, Name, Property_Area__c 
                           FROM Project__c WHERE Id IN:RecId];
        reqUpdatewrapper reqList = New reqUpdatewrapper();
         List<dataUpdatewrapper> datawrapper = New List<dataUpdatewrapper>();
        String postbody;
        for(Project__c Proj : projList){
            dataUpdatewrapper req = new dataUpdatewrapper();
            req.id = proj.Project_Id_DB__c;
            req.Project_Id = proj.Id;
            req.Project_Name = proj.Name;
            datawrapper.add(req);
        }    
        reqList.data = datawrapper;
        postbody = JSON.serialize(reqList);
        System.debug('reqWrapper:' +  postbody);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('PUT');
        request.setHeader('Content-Type', 'application/json');
        request.setEndpoint('https://dxapi.speridian.com/api/projects');
        request.setBody(postbody);
        system.debug('RequestBody: ' + postbody);
        system.debug('Request: ' + request);
        
        HttpResponse response = http.send(request);
        system.debug('response: ' + response.getBody());  
    }
    
     /**************************************Monika: Update Method POC START, 20/12/2022 **************************/  

    
     /**************************************Monika: Wrapper Class, 20/12/2022 **************************/  
    global class reqwrapper{        
         
        global List<datawrapper> data;
    }
    global class datawrapper{
        global string Project_Name;        
        global string Project_Type;        
        global string Image_URL;        
        global Decimal Property_Area;
        global String Project_Id;
        //global String id; 
    }
    global class reqUpdatewrapper{        
         
        global List<dataUpdatewrapper> data;
    }

    global class dataUpdatewrapper{
        global String id;        
        global string Project_Name;        
        global string Project_Type;        
        global string Image_URL;        
        global Decimal Property_Area;
        global String Project_Id;  

    }
    
}