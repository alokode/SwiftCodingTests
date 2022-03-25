                                    
# Get all possible substrings

<h3>Get list of all possible substrings of a given string.</h3>
 

```
 Input : "abcd"
 Output : ["a","ab","abc","b","bc","bcd","c","cd","d"]
```

Solution 

```swift

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

```
