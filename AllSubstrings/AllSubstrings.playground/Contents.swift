import UIKit

/*
 
 Get list off all possible substring of a given string
 Eg:
 Input : "abcd"
 Output : ["a","ab","abc","b","bc","bcd","c","cd","d"]
 
 */
func getArrayOfSubstring(input:String) -> [String] {
    var subStringArray = [String]()
    for index in 0..<input.count {
        let stringIndex = input.index(input.startIndex, offsetBy: index)
        var str = ""
        for i in 0..<input.count-index{
            str.append(input[input.index(stringIndex, offsetBy: i)])
            if str != input {
                subStringArray.append(str)
            }
            
        }
    }
    return subStringArray
}

print(getArrayOfSubstring(input: "abcd"))
