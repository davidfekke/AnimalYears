//
//  Convert.swift
//  AnimalYears
//
//  Created by David Fekke on 8/13/22.
//

import Foundation

// A utility class for converting actual years into cat and dog years
public struct Convert {
    
    /**
     Calculates the human age equivalent of a dog's age and weight.
     
     - Parameters:
        - dogYears: The dog's age in years.
        - doggyWeight: The dog's weight in pounds.
     
     - Returns: The dog's age in human years.
     */
    public static func calculate(dogyears dogYears: Float, weight doggyWeight: Float) -> Float {
        let focalLength: Float = 413.1781
        let startAge: Float = 25.48807
        let startIncOffset: Float = -2.35626
        let eqCorrection: Float = 134.9106
        let ageIncOff: Float = 2.369763
        let startAgeOffset: Float = 585.2361
        let cutOffYear: Float = 3
        let cutOffMonths: Float = cutOffYear * 12
        var dogWeight = doggyWeight
        
        if dogWeight < 5 {
            dogWeight = 5
        }
        
        let originalDogAge: Float = dogYears
        var dogAge: Float = originalDogAge
        
        if dogAge < cutOffYear {
            dogAge = cutOffYear
        }
        
        let zb: Float = ((dogWeight + startAgeOffset) * (dogWeight + startAgeOffset))/(eqCorrection * focalLength)
        let winc: Float = zb + startIncOffset
        
        var humanAge: Float = (winc * (dogAge - ageIncOff)) + startAge
        
        if originalDogAge < 3 {
            let humanAgeAt3: Float = humanAge;
            let underThreeFl: Float = (humanAgeAt3 * humanAgeAt3)/(4 * cutOffMonths);
            let dogAgeInMonths: Float = originalDogAge * 12
            humanAge = sqrt(4 * dogAgeInMonths * underThreeFl)
        }
        
        return humanAge
    }
    
    /**
     Calculates the human age equivalent of a cat's age.
     
     - Parameters:
        - originalCatAge: The cat's age in years.
     
     - Returns: The cat's age in human years.
     */
    public static func calculate(catyears originalCatAge: Float) -> Float {
        return (originalCatAge>=2) ? (25+((originalCatAge-2)*4)) : (originalCatAge>1 ? ((originalCatAge-1)*10+15) : originalCatAge * 15)
    }
    
}
