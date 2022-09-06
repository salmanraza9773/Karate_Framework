package com.telus.getrequest;

import com.intuit.karate.junit5.Karate;

class RunnerForGetRequest {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("GetJobDetails", "GetJobDetailsHeaderImplementation","GetJobDetailsPathBackground","GetJobDetailsResponse","ValidateGetDetails").relativeTo(getClass());
    }    

}
