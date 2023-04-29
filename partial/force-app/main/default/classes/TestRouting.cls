public class TestRouting {

    public static void routingCasesToAgents(List<String> LeadIds){
        //Create PSR
        //Add skills to the request for the case
        //Push it to queue
        List<Lead> casesInserted = [SELECT id,Lead_Type__c from Lead where ID IN: LeadIds];
        LIst<Skill> allSkills = [SELECT id,MasterLabel from Skill];
      
        for(Lead caseR : casesInserted){
       //  PendingServiceRouting psr = [select Id from PendingServiceRouting where workItemId = '00Q0T000003OBZ6UAO'];

           PendingServiceRouting psr= new PendingServiceRouting();
       		String strChannelId = 
            psr.workItemId = caseR.Id;
            psr.RoutingType = 'SkillsBased';
            psr.RoutingPriority = 1;
            psr.CapacityWeight = 1;
            psr.ServiceChannelId = '0N90T0000008OVOSA2'; //Use your own Service Channel ID
            psr.RoutingModel = 'MostAvailable';
            psr.IsReadyForRouting = FALSE; //DRAFT state
            Insert psr; //First Step is completed*/
           
            //Find Out The Skills Required for a fiven Case based on its Subject
            List<String> matchingSkillIds = new List<String>();
            for(Skill skillR: allSkills){
                if(caseR.Lead_Type__c.contains(skillR.MasterLabel)){
                    matchingSkillIds.add(skillR.Id);
                }
            }
			system.debug(matchingSkillIds);
           
            List<SkillRequirement> skillToInsert = new List<SkillRequirement>();
            //Associate matching skills with PSR request
            for(String matchingSkillId: matchingSkillIds){
                SkillRequirement skillReq = new SkillRequirement();
                skillReq.SkillId = matchingSkillId;
                skillReq.RelatedRecordId = psr.id;
                skillReq.SkillLevel = 5;
                skillToInsert.add(skillReq);
            }
            system.debug('skillToInsert: ' + skillToInsert);
            system.debug('PSR: ' + PSR);
            Insert skillToInsert;
            //Push our request in to the queue
            psr.IsReadyForRouting = TRUE;
            Update PSR;
			system.debug('PSR: ' + PSR);
           
        }
    }

}