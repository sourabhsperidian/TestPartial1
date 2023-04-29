public class TestDruceclass {

    public Integer pageNo = 1;
   // public String httpresponse;
    
     public  TestDruceclass(Integer pageNo)
    {
        this.pageNo = pageNo;
    }
    
    //Method for MultiPicklist
    public static string pickVal(String unitRecord ,String St){
         if(unitRecord !=null)
           unitRecord = unitRecord  + ';' + St; 
                         else
                            unitRecord = St;
        	return unitRecord;
    }
    
    public static void executecls() {
    	// tries to make the REST call
    	try{
            
                String rs = '{\"_embedded\":[{\"id\":\"OXF200008\",\"created\":\"2018-12-12T12:30:23.0000000Z\",\"modified\":\"2019-01-08T12:30:34.0000000Z\",\"marketingMode\":\"sellingAndLetting\",\"currency\":\"GBP\",\"alternateId\":\"10001\",\"address\":{\"buildingName\":null,\"buildingNumber\":\"15\",\"line1\":\"Examplestreet\",\"line2\":\"Solihull\",\"line3\":\"WestMidlands\",\"line4\":\"\",\"postcode\":\"B912XX\",\"countryId\":\"GB\",\"localTimeZone\":null,\"geolocation\":{\"latitude\":52.4158586,\"longitude\":1.7773383}},\"areaId\":\"BRM\",\"strapline\":null,\"description\":\"WearedelightedtoofferforsalethisEXTENDEDTHREEBEDROOMEDSEMIDETACHEDPROPERTYsituatedinamuchsoughtafterresidentiallocationofGreasby,havingthebenefitsoftwoseparateentertainingrooms,morningroom,extendedkitchen.Tothefirstfloortherearethreebedrooms,spaciousfamilybathroom,gascentralheatinggardensfrontandrearandoffroadparking.\",\"longDescription\":\"Thegroundflooraccommodationcomprisesofaspaciousreceptionhallwithawetbar,agranddrawingroom,masterbedroomsuiteandafurtherbedroomsuite.Thelowerfloorcomprisesofaneatinkitchenleadingtoconvertedvaultswhichcouldbeusedasstaffaccommodationorastudy.Thereisalsoseparatediningroomandafurtherbedroomsuite.\",\"localAuthorityCompanyId\":null,\"summary\":null,\"departmentId\":\"G\",\"negotiatorId\":\"JAS\",\"bedrooms\":4,\"bedroomsMax\":6,\"receptions\":1,\"receptionsMax\":2,\"bathrooms\":2,\"bathroomsMax\":3,\"numberOfUnits\":null,\"parkingSpaces\":0,\"councilTax\":\"A\",\"disabledPortalIds\":[\"LM\",\"MT\"],\"internetAdvertising\":true,\"isExternal\":false,\"viewingArrangements\":\"Accompaniedviewingsafter3PMonly\",\"videoUrl\":\"https://www.example.com/property/123/videoTour\",\"videoCaption\":\"Virtualpropertytour\",\"video2Url\":\"https://www.example.com/property/123/3dVideoTour\",\"video2Caption\":\"3dvirtualpropertytour\",\"notes\":\"Propertywasonthemarketpreviouslywithanotheragentbutstruggledtogetmuchinterest\",\"boardStatus\":\"FS\",\"boardNotes\":\"Includesoldinaweekslip\",\"featuredImageUrl\":null,\"url\":\"https://www.example.com/property/15-example-street/OXF200008\",\"urlCaption\":\"ViewPropertyonWebsite\",\"groundRent\":24,\"groundRentComment\":\"Payableintwobi-annualinstalments\",\"groundRentReviewDate\":\"2021-10-05\",\"groundRentIncrease\":24.55,\"serviceCharge\":24,\"serviceChargeComment\":\"Payableintwobi-annualinstalments\",\"boardUpdated\":\"2021-07-02\",\"valuation\":\"2021-04-05\",\"archivedOn\":null,\"fromArchive\":false,\"rural\":{\"tenureId\":\"LH\",\"buildingsDescription\":\"2barnsandastable\",\"landDescription\":\"400acresofmixedarable\"},\"externalArea\":{\"type\":\"acres\",\"min\":1,\"max\":2},\"internalArea\":{\"type\":\"squareFeet\",\"min\":1500,\"max\":2000},\"epc\":{\"exempt\":false,\"eer\":45,\"eerPotential\":71,\"eir\":53,\"eirPotential\":81},\"selling\":{\"instructed\":\"2018-11-18\",\"price\":250000,\"priceTo\":null,\"reservationFee\":0,\"qualifier\":\"askingPrice\",\"status\":\"underOffer\",\"disposal\":\"privateTreaty\",\"completed\":\"2019-08-27\",\"exchanged\":\"2019-08-15\",\"accountPaid\":\"2019-08-29\",\"tenure\":{\"type\":\"leasehold\",\"expiry\":\"2019-05-01\"},\"vendorId\":\"OXF123001\",\"agency\":\"ownToSell\",\"agencyId\":null,\"agreementExpiry\":\"2019-01-20\",\"fee\":{\"type\":\"fixed\",\"amount\":2000},\"exchangedCompanyFee\":2000,\"recommendedPrice\":550000,\"valuationPrice\":null,\"brochureId\":\"DOC21000002\",\"publicBrochureUrl\":null,\"exchangedPrice\":null,\"exchangedOfficeId\":null,\"decoration\":null,\"sharedOwnership\":{\"sharedPercentage\":55.44,\"rent\":1250.55,\"rentFrequency\":\"weekly\"}},\"letting\":{\"instructed\":\"2018-11-18\",\"availableFrom\":\"2018-12-26\",\"availableTo\":\"2019-03-23\",\"rent\":750,\"rentFrequency\":\"monthly\",\"furnishing\":[\"furnished\",\"partFurnished\"],\"term\":\"long\",\"status\":\"toLet\",\"agentRole\":\"managed\",\"landlordId\":\"OXF123001\",\"worksOrderNote\":\"Pleasearrangeaccesstopropertydirectlywiththetenant\",\"minimumTerm\":12,\"propertyManagerId\":\"JAS\",\"managementCompanyIds\":[\"CMP21000001\",\"OXF21000004\"],\"brochureId\":\"DOC21000001\",\"publicBrochureUrl\":null,\"managementFee\":{\"type\":\"percentage\",\"amount\":7.5},\"lettingFee\":{\"type\":\"fixed\",\"amount\":155},\"qualifier\":\"askingRent\",\"utilities\":{\"hasGas\":true,\"gasCompanyId\":\"OXF21000001\",\"gasMeterPoint\":\"123\",\"electricityCompanyId\":\"OXF21000003\",\"electricityMeterPoint\":\"789\",\"waterCompanyId\":\"OXF21000002\",\"waterMeterPoint\":\"456\",\"telephoneCompanyId\":\"OXF21000006\",\"internetCompanyId\":\"OXF21000004\",\"cableTvCompanyId\":\"OXF21000005\"},\"deposit\":{\"type\":\"months\",\"amount\":1}},\"commercial\":null,\"regional\":null,\"type\":[\"house\"],\"style\":[\"detached\"],\"situation\":[\"garden\",\"land\",\"patio\"],\"parking\":[\"secure\",\"doubleGarage\"],\"age\":[\"period\"],\"locality\":[\"rural\",\"village\"],\"specialFeatures\":null,\"unmappedAttributes\":null,\"rooms\":[{\"name\":\"Kitchen\",\"dimensions\":\"4.5mx5.2m\",\"dimensionsAlt\":null,\"description\":\"Thebreakfastkitchen,withutility,comprisesamatchingrangeofwallandbaseunitswithceramichobandeyeleveldoubleoven.Asidedoorleadstothefrontcourtyardarea.\"},{\"name\":\"Lounge\",\"dimensions\":\"6.5mx7.8m\",\"dimensionsAlt\":null,\"description\":\"Thelounge,withabrickfeaturefireplacehousingaClearviewstove,providesanidealspacetorelaxandunwind,whilstenjoyingviewsovertheGolfCourse.\"},{\"name\":\"DiningRoom\",\"dimensions\":\"5.1mx6.2m\",\"dimensionsAlt\":null,\"description\":\"Theformaldiningroomistheperfectspacetoentertainandprovidesaccesstotheusefulstudy.\"}],\"roomDetailsApproved\":false,\"officeIds\":[\"OXF\",\"SOL\"],\"lostInstructionDate\":\"2021-02-23\",\"lostInstructionNote\":\"Otheragentcharged£300less\",\"metadata\":{\"CustomField1\":\"CustomValue1\",\"CustomField2\":true},\"extrasField\":null,\"_eTag\":null,\"_links\":{\"self\":{\"href\":\"/properties/OXF200008\"},\"images\":{\"href\":\"/propertyImages/?propertyId=OXF200008\"},\"documents\":{\"href\":\"/documents/?associatedType=property&associatedId=OXF200008\"},\"offers\":{\"href\":\"/offers/?propertyId=OXF200008\"},\"appointments\":{\"href\":\"/appointments/?propertyId=OXF200008\"},\"negotiator\":{\"href\":\"/negotiators/JAS\"},\"offices\":{\"href\":\"/offices/?id=OXF&id=SOL\"},\"department\":{\"href\":\"/departments/G\"},\"vendor\":{\"href\":\"/vendors/OXF123001\"},\"landlord\":{\"href\":\"/landlords/OXF123001\"},\"area\":{\"href\":\"/areas/BRM\"},\"sellingBrochure\":{\"href\":\"/documents/DOC21000002\"},\"lettingBrochure\":{\"href\":\"/documents/DOC21000001\"},\"boardStatus\":{\"href\":\"/configuration/boardStatuses/FS\"},\"ruralTenure\":{\"href\":\"/configuration/ruralTenancyTypes/LH\"},\"portalType\":{\"href\":\"/configuration/portalTypes/?id=LM&id=MT\"},\"gasCompany\":{\"href\":\"/companies/OXF21000001\"},\"electricityCompany\":{\"href\":\"/companies/OXF21000003\"},\"waterCompany\":{\"href\":\"/companies/OXF21000002\"},\"internetCompany\":{\"href\":\"/companies/OXF21000004\"},\"telephoneCompany\":{\"href\":\"/companies/OXF21000006\"},\"cableTvCompany\":{\"href\":\"/companies/OXF21000005\"},\"propertyManager\":{\"href\":\"/negotiators/JAS\"},\"managementCompanies\":{\"href\":\"/companies/?id=CMP21000001&id=OXF21000004\"}},\"_embedded\":null}],\"pageNumber\":1,\"pageSize\":1,\"pageCount\":1,\"totalPageCount\":1,\"totalCount\":25,\"_links\":{\"self\":{\"href\":\"/properties/?PageNumber=1&PageSize=1\"},\"first\":{\"href\":\"/properties/?PageNumber=1&PageSize=1\"},\"next\":{\"href\":\"/properties/?PageNumber=2&PageSize=1\"},\"last\":{\"href\":\"/properties/?PageNumber=25&PageSize=1\"}}}';
                rs = rs.replaceAll('_embedded','embedded');
                rs = rs.replace('currency', 'currencyCode');
             	rs = rs.replace('_eTag', 'eTag');
             	rs = rs.replace('_links', 'links');
                system.debug('Response Body ::'+rs);
               // httpresponse = rs;
                Druce_FetchReapitDataWrapper exnew = (Druce_FetchReapitDataWrapper)JSON.deserialize(rs, Druce_FetchReapitDataWrapper.class);
                system.debug('Wrapper :: '+exnew);
                List<Unit__c> lstUnit = new List<Unit__c>();
                
                Map<String, Letting__c> mapLettings = new Map<String, Letting__c>();
                Map<String, Selling__c> mapSellings = new Map<String, Selling__c>();
            	List<Map<String, Room__c>> maproomLists = new List<Map<String, Room__c>>();
                
                List<String> unitIds = new List<String>();
            
              /******************Unit Details******************************/
               for(Druce_FetchReapitDataWrapper.embedded exnewVar : exnew.embedded){
                    system.debug('---->'+exnewVar.Id);
                     String defaultVal;
                    unitIds.add(exnewVar.Id);
                    Unit__c unit = new Unit__c();
              	    unit.RecordTypeId = Druce_Constants.SECONDARY_UK;
                    unit.Project_Unit_Type__c = 'a070T000003NSzSQAW';
                   	List<String> posString = exnewVar.address.postcode.split(' ');
                  	system.debug('posString[0]' + posString[0]);
                    unit.Name = 'Test' + exnewVar.address.line1 + ' ' + exnewVar.address.line2 + ' ' +exnewVar.address.line3 + ' ' +exnewVar.address.line4 + ' ' +
                        		posString[0];
                    unit.Reapit_Id__c = exnewVar.Id;
                    unit.Reapit_Created_Date__c = exnewVar.created;
                    unit.Reapit_Modified_Date__c = exnewVar.modified;
                    unit.Reapit_Marketing_Mode__c = exnewVar.marketingMode;
                    unit.CurrencyIsoCode = exnewVar.currencyCode;
                    unit.Reapit_Alternate_Id__c = exnewVar.alternateId;
                    unit.Reapit_Area_Id__c = exnewVar.areaId;
                    unit.Unit_Description__c = exnewVar.description + ',' + exnewVar.longDescription;
                    unit.Local_Authority__c = exnewVar.localAuthorityCompanyId;
            //        unit.Summary__c = exnewVar.summary;
                    unit.Reapit_Department_Id__c = exnewVar.departmentId;
                    unit.Reapit_Negotiator_Id__c = exnewVar.negotiatorId;
                    unit.No_of_Bedrooms__c	 = exnewVar.bedrooms;
                    unit.Bedrooms_Max__c = exnewVar.bedroomsMax;
                    unit.Reception__c = exnewVar.receptions;
                    unit.Receptions_Max__c = exnewVar.receptionsMax;
                    unit.No_of_Washrooms__c	 = exnewVar.bathrooms;
                    unit.Bathrooms_Max__c = exnewVar.bathroomsMax;
                    unit.Number_Of_Units__c = exnewVar.numberOfUnits;
                    unit.Parking_Spaces__c = exnewVar.parkingSpaces;
                    unit.Council_Tax_Band__c = exnewVar.councilTax;
                    unit.Reapit_Disabled_Portal_Ids__c = String.valueOf(exnewVar.disabledPortalIds);
                    unit.Reapit_Internet_Advertising__c = exnewVar.internetAdvertising;
                    unit.Is_External__c = exnewVar.isExternal;
               //     unit.Viewing_Arrangements__c = exnewVar.viewingArrangements;
                    unit.Video_Url__c = exnewVar.videoUrl;
                    unit.Video_Caption__c = exnewVar.videoCaption;
                    unit.Video2Url__c = exnewVar.video2Url;
                    unit.Video2Caption__c = exnewVar.video2Caption;
                    unit.Notes__c = exnewVar.notes;
                    unit.Board_Status__c = exnewVar.boardStatus;
                    unit.Board_Notes__c = exnewVar.boardNotes;
                    unit.Featured_Image_Url__c = exnewVar.featuredImageUrl;
                    unit.URL__c = exnewVar.url;
                    unit.URL_Caption__c = exnewVar.urlCaption;
                    unit.Ground_Rent__c = exnewVar.groundRent;
                    unit.Ground_Rent_Comment__c = exnewVar.groundRentComment;
                    unit.Ground_Rent_Review_Date__c = exnewVar.groundRentReviewDate;
                    unit.Ground_Rent_Increase__c = exnewVar.groundRentIncrease;
                    unit.Service_Charge__c = exnewVar.serviceCharge;
                    unit.Service_Charge_Comment__c = exnewVar.serviceChargeComment;
                    unit.Board_Updated__c = exnewVar.boardUpdated;
                    unit.Valuation__c = exnewVar.valuation;
                    unit.Archived_On__c = exnewVar.archivedOn;
                    unit.From_Archive__c = exnewVar.fromArchive;
                    unit.Rural__c = String.valueOf(exnewVar.rural);
                    unit.External_Area__c = String.valueOf(exnewVar.externalArea);
                    unit.Internal_Area__c = String.valueOf(exnewVar.internalArea);
                    unit.EPC__c = String.valueOf(exnewVar.epc);
                    unit.Commercial__c = exnewVar.commercial;
                    unit.Regional__c = exnewVar.regional;
                     for(String type: exnewVar.type)
                         unit.Type__c = unit.Type__c + ';' + type;
                     
                     for(String style: exnewVar.style)
                     {
                         if(unit.Style__c !=null){
                         unit.Style__c = unit.Style__c  + ';' + style;
                         }
                         else
                             unit.Style__c = style;
                     }
                   for(String situat: exnewVar.situation){ 
                             unit.Situation__c = pickVal(unit.Situation__c ,situat);
                   }
                     for(String park: exnewVar.parking){
                         unit.Parking__c =  unit.Parking__c + ';'+ park;  
                     }
                     for(String age: exnewVar.age){
                         unit.Age__c =  unit.Age__c + ';'+ age;  
                     }                  
                     for(String locality: exnewVar.locality)
                    unit.Locality__c = unit.Locality__c + ';'+ locality;
                                        
                    unit.KeyFeatureRich__c = String.valueOf(exnewVar.specialFeatures);
                    unit.Unmapped_Attributes__c = String.valueOf(exnewVar.unmappedAttributes);
                 // unit.Unmapped_Attributes__c = String.valueOf(exnewVar.rooms);
                    unit.Room_Details_Approved__c = exnewVar.roomDetailsApproved;
                     
                     for(String officeIds: exnewVar.officeIds)
                    unit.Office_Ids__c = unit.Office_Ids__c + ';'+ officeIds;

                    unit.Lost_Instruction_Date__c = exnewVar.lostInstructionDate;
                    unit.Lost_Instruction_Note__c = exnewVar.lostInstructionNote;
                    unit.Extras_Field__c = String.valueOf(exnewVar.extrasField);
                    unit.eTag__c = String.valueOf(exnewVar.eTag);
                    unit.Links__c = String.valueOf(exnewVar.links);
                    unit.eTag__c = String.valueOf(exnewVar.eTag);
	   	 		//	unit.metadata__c = String.valueOf(exnewVar.metadata);
                    unit.Unit_Number__c = exnewVar.address.buildingNumber;
                    unit.Unit_Address__City__s = exnewVar.address.line2 + ', ' + exnewVar.address.line3;
                    unit.Unit_Address__Street__s = exnewVar.address.line1 + ', ' +exnewVar.address.line4;
                    unit.Unit_Address__PostalCode__s = exnewVar.address.postcode;
                    unit.Unit_Address__CountryCode__s = exnewVar.address.countryId;
                    unit.Unit_Address__Latitude__s = exnewVar.address.geolocation.latitude;
                    unit.Unit_Address__Longitude__s	 = exnewVar.address.geolocation.longitude;

                    List<Room__c> roomList = new List<Room__c>();
                   	
					if(exnewVar.rooms !=null){
                            for( Druce_FetchReapitDataWrapper.rooms room : exnewVar.rooms){
                                Room__c rm = new Room__c();
                                Map<String, Room__c> maproom = new Map<String, Room__c>();
                                rm.Reapit_Id__c = unit.Reapit_Id__c;
                                rm.Name = room.name;
                                rm.Dimensions__c = room.dimension;
                                rm.Dimensions_Alt__c = room.dimensionsAlt;
                                rm.Description__c = room.description;
                                maproom.put(unit.Reapit_Id__c,rm);
                                roomList.add(rm);
                                maproomLists.add(maproom);
                            }
					}

				                  
                 //   unit.Reapit_Response__c = String.valueOf(exnewVar);
                                        /******************Letting Details******************************/
                        
                        Druce_FetchReapitDataWrapper.letting lettingWrap = new Druce_FetchReapitDataWrapper.letting();
                        lettingWrap = exnewVar.letting;
                       	
                        Letting__c letting = new Letting__c();
                  		if(lettingWrap!=null){
                        letting.RecordTypeId = Druce_Constants.Reapitletting;
                        letting.Reapit_Id__c = unit.Reapit_Id__c;
                        letting.Instructed__c = lettingWrap.instructed;
                        letting.Available_From__c = lettingWrap.availableFrom;
                        letting.Available_To__c = lettingWrap.availableTo;
                        letting.Rent__c = lettingWrap.rent;
                        letting.Rent_Frequency__c = lettingWrap.rentFrequency;
                        for(String furnishing: lettingWrap.furnishing){
                        letting.Furnishing__c =  letting.Furnishing__c + ';'+ furnishing;  
                     	}
                        letting.Term__c = lettingWrap.term;
                        letting.Status__c = lettingWrap.Status;
                        letting.Agent_Role__c = lettingWrap.agentRole;
                        letting.Landlord_Id__c = lettingWrap.landlordId;
                        letting.Works_Order_Note__c = lettingWrap.worksOrderNote;
                        letting.Minimum_Term__c = lettingWrap.minimumTerm;
                        letting.Property_Manager_Id__c = lettingWrap.propertyManagerId;
                        letting.Status__c = lettingWrap.Status;
                     if(lettingWrap.managementCompanyIds !=null){
                        for(String mgComp: lettingWrap.managementCompanyIds){
                        letting.Management_Company_Ids__c =  letting.Management_Company_Ids__c + ';'+ mgComp;  
                        }}
                        letting.Brochure_Id__c = lettingWrap.brochureId;
                        letting.Public_Brochure_Url__c = lettingWrap.publicBrochureUrl;
                     if(lettingWrap.managementFee!=null){
                         letting.Management_Fee_Percentage__c = lettingWrap.managementFee.amount;}
                    // 	letting.Management_Fee__c = lettingWrap.managementFee;
                     if(lettingWrap.lettingFee!=null){
                     	letting.Letting_Fee__c = lettingWrap.lettingFee.amount;
                         letting.Letting_Fee_Type__c = lettingWrap.lettingFee.type;}
                    // 	letting.Letting_Fee_Percentage__c = lettingWrap.managementFee;
                    	letting.Qualifier__c = lettingWrap.qualifier;
                     if(lettingWrap.deposit!=null){
                        letting.Deposit_Type__c = lettingWrap.deposit.type;
                         letting.Deposit__c = lettingWrap.deposit.amount;}
                        
                        letting.Has_Gas__c = lettingWrap.utilities.hasGas;
                        letting.Gas_Company_Id__c = lettingWrap.utilities.gasCompanyId;
                        letting.Gas_Meter_Point__c = lettingWrap.utilities.gasMeterPoint;
                        letting.Electricity_Company_Id__c = lettingWrap.utilities.electricityCompanyId;
                        letting.Electricity_Meter_Point__c = lettingWrap.utilities.electricityMeterPoint;
                        letting.Internet_Company_Id__c = lettingWrap.utilities.waterCompanyId;
                        letting.Water_Meter_Point__c = lettingWrap.utilities.waterMeterPoint;
                        letting.Water_Company_Id__c = lettingWrap.utilities.internetCompanyId;
                        letting.CableTv_Company_Id__c = lettingWrap.utilities.cableTvCompanyId;
                        letting.Telephone_Company_Id__c = lettingWrap.utilities.telephoneCompanyId;
                            
                        }//Letting wrap end here
                     	unit.Gas__c = lettingWrap.utilities.hasGas;
                        unit.Gas_Company_Id__c = lettingWrap.utilities.gasCompanyId;
                        unit.Gas_Meter_Point__c = lettingWrap.utilities.gasMeterPoint;
                        unit.Electricity_Company_Id__c = lettingWrap.utilities.electricityCompanyId;
                        unit.Electricity_Meter_Point__c = lettingWrap.utilities.electricityMeterPoint;
                        unit.Water_Company_Id__c = lettingWrap.utilities.waterCompanyId;
                        unit.Water_Meter_Point__c = lettingWrap.utilities.waterMeterPoint;
                        unit.Telephone_Company_Id__c = lettingWrap.utilities.telephoneCompanyId;
                        unit.Internet_Company_Id__c = lettingWrap.utilities.internetCompanyId;
                        unit.CableTv_Company_Id__c = lettingWrap.utilities.cableTvCompanyId;
                        
                //        mapLettings.put(unit.Reapit_Id__c,letting );
                    
                    
                    /******************Selling Details******************************/
                     Druce_FetchReapitDataWrapper.selling sellingWrap = new Druce_FetchReapitDataWrapper.selling();
                     sellingWrap = exnewVar.selling;
                     
                     Selling__c selling = new Selling__c();
                     if(sellingWrap!=null){
                     selling.Reapit_Id__c = unit.Reapit_Id__c;
                 	 selling.RecordTypeId = Druce_Constants.Reapitselling;
                     selling.Instructed__c = sellingWrap.instructed;
                     selling.Price__c = sellingWrap.price;
                     selling.Price_To__c = sellingWrap.priceTo;
                     selling.Reservation_Fee__c = sellingWrap.reservationFee;
                     selling.Qualifier__c = sellingWrap.qualifier;
                     selling.Status__c = sellingWrap.status;
                     selling.Disposal__c = sellingWrap.disposal;
                     selling.Completed__c = sellingWrap.completed;
                     selling.Exchanged__c = sellingWrap.exchanged;
                     selling.Account_Paid__c = sellingWrap.accountPaid;
                 //    selling.Tenure__c = sellingWrap.tenure.type;
                  //   selling.Tenure_Expiry__c = sellingWrap.tenure.expiry;
                     selling.Vendor_Id__c = sellingWrap.vendorId;
                     selling.Agency__c = sellingWrap.agency;
                     selling.Agency_Id__c = sellingWrap.agencyId;
                     selling.Agreement_Expiry__c = sellingWrap.agreementExpiry;
                  // selling.Fee__c = sellingWrap.fee.type;
                  //   selling.Fee__c = sellingWrap.fee.amount;
                     selling.Exchanged_Company_Fee__c = sellingWrap.exchangedCompanyFee;
                     selling.Recommended_Price__c = sellingWrap.recommendedPrice;
                     selling.Valuation_Price__c = sellingWrap.valuationPrice;
                     selling.Brochure_Id__c = sellingWrap.brochureId;
                     selling.Public_Brochure_Url__c = sellingWrap.publicBrochureUrl;
                     selling.Exchanged_Price__c = sellingWrap.exchangedPrice;
                     selling.Exchanged_Office_Id__c = sellingWrap.exchangedOfficeId;
               //      selling.Decoration__c = sellingWrap.decoration[0];
               //      selling.Brochure_Id__c = sellingWrap.sharedOwnership.sharedPercentage;
               //      selling.Brochure_Id__c = sellingWrap.sharedOwnership.rent;
               //      selling.Brochure_Id__c = sellingWrap.sharedOwnership.rentFrequency;

                     
                     //     mapSellings.put(unit.Reapit_Id__c, selling);
                     }//Selling wrap end here
                     
                 
                     
                     if(exnewVar.marketingMode == 'letting'){
                         unit.RecordTypeId = Druce_Constants.RENTAL_UK;
                         mapLettings.put(unit.Reapit_Id__c,letting );
                     }else
                     if(exnewVar.marketingMode == 'selling'){
                         mapSellings.put(unit.Reapit_Id__c, selling);
                     }else
                     if(exnewVar.marketingMode == 'sellingAndLetting'){
                         mapSellings.put(unit.Reapit_Id__c, selling);
                         mapLettings.put(unit.Reapit_Id__c,letting );
                     }
                    //  insert unit;
                    lstUnit.add(unit);
                }
                
                upsert lstUnit Reapit_Id__c;
                //Process Images 
                
       //         Druce_ReapitImagesService.createImages(unitIds, ex.access_token);
                
                List<Selling__c> lstSellings = new List<Selling__c>();
                List<Letting__c> lstLettings = new List<Letting__c>();
            	List<Room__c> lstRooms = new List<Room__c>();
            	
                
                for(Unit__c unit :lstUnit){
                //    List<Room__c> lstRooms = new List<Room__c>();
                    if(mapSellings.containsKey(unit.Reapit_Id__c)){
                        Selling__c sellings = mapSellings.get(unit.Reapit_Id__c);
                        sellings.Unit__c = unit.Id;
                        lstSellings.add(sellings);
                    }
                    
                    if(mapLettings.containsKey(unit.Reapit_Id__c)){
                        Letting__c letting = mapLettings.get(unit.Reapit_Id__c);
                        letting.Unit__c = unit.Id;
                        lstLettings.add(letting);
                    }
                    for(Map<String, Room__c> mapRoom: maproomLists){
                    if(mapRoom.containsKey(unit.Reapit_Id__c)){
                        Room__c room = mapRoom.get(unit.Reapit_Id__c);
                        room.Unit__c = unit.Id;
                        lstRooms.add(room);
                    }
                    }
                }
                
                
                if(!lstSellings.isEmpty()){
                   upsert lstSellings Reapit_Id__c;
                }
                if(!lstLettings.isEmpty()){
                    upsert lstLettings Reapit_Id__c;
                }
                if(!lstRooms.isEmpty()){
                    system.debug('lstRooms' + lstRooms);
                    upsert lstRooms;
                }
            	
               
        }catch(Exception e){
           system.debug('Exception '+e.getMessage()); 
           system.debug('Line Number '+e.getLineNumber()); 
        }
	}
	
    
    
    public class wrapperAuth {
        public String access_token;
        public Integer expire_in;
        public string token_type;
    }
}