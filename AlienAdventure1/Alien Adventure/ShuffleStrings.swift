//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {

    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {

        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }

        if shuffle.characters.count != s1.characters.count + s2.characters.count {
            return false
        }

        var s1Index = s1.startIndex
        var s2Index = s2.startIndex

        let s1End = s1.endIndex
        let s2End = s2.endIndex

        for character in shuffle.characters {
            var noIncrement = true

            if s1Index <  s1End {
                if character == s1[s1Index] {
                    s1Index = s1Index.successor()
                    noIncrement = false
                }
            }

            if noIncrement && s2Index < s2End {
                if character == s2[s2Index] {
                    s2Index = s2Index.successor()
                    noIncrement = false
                }
            }

            if noIncrement {
                return false
            }
        }

        return true
        
    }
}
