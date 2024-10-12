# JSONCodable

Protocol JSONCodable base on Codable easily extend the Class/Struct with decode from json Data/String/URL and encode to json Data/String/URL.

# How to install

- Only support SPM
- Add below into dependencies of the Package.swift

```
.package(name: "JSONCodable", url: "https://github.com/coollazy/JSONCodable.git", from: "1.0.0"),
```

- Add below into dependencies of the target

```
.product(name: "JSONCodable", package: "JSONCodable"),
```

# How to use

### Import

```swift
import JOSNCodable
```

### Extension your Class/Struct

```swift
extension YourClass: JSONCodable {}
```

### Data

***decode from json data***

```swift
let jsonData: Data = {Your json data here}
let yourClass = try YourClass.decode(jsonData: jsonData)
```

***encode to json data***

```swift
let jsonData = try yourClass.jsonData()
```

***encode to pretty sorted json data***

```swift
let jsonData = try yourClass.jsonPrettySortedData()
```

### String

***decode from json string***

```swift
let jsonString: String = {Your json string here}
let yourClass = try YourClass.decode(jsonString: jsonString)
```

***encode to json string***

```swift
let jsonString = try yourClass.jsonString()
```

***encode to pretty sorted json string***

```swift
let jsonString = try yourClass.jsonPrettySortedString()
```

### URL

***decode from url with json file***

```swift
let jsonFileURL: URL = {Your json url here}
let yourClass = try YourClass.decode(url: jsonFileURL)
```

***encode to json file with url***

```swift
let fileURL: URL = {The file url you want}
let jsonString = try yourClass.encode(url: fileURL)
```

***encode to pretty sorted json file with url***

```swift
let fileURL: URL = {The file url you want}
let jsonString = try yourClass.encodePrettySorted(url: fileURL)
```

# Advanced

### Custom JSONDecoder or JSONEncoder

```swift
extension YourClass: JSONCodable {
    static var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        
        // Set the date formatter to timestamp in milliseconds
        decoder.dateDecodingStrategy = .millisecondsSince1970
        
        // Set the date formatter to timestamp in seconds
        decoder.dateDecodingStrategy = .secondsSince1970
        
        // Set the date formatter to ios8601
        decoder.dateDecodingStrategy = .iso8601
        
        return decoder
    }
    
    static var encoder: JSONEncoder {
        let encoder = JSONEncoder()
        
        // Set the date formatter to timestamp in milliseconds
        decoder.dateEncodingStrategy= .millisecondsSince1970
        
        // Set the date formatter to timestamp in seconds
        decoder.dateEncodingStrategy = .secondsSince1970
        
        // Set the date formatter to ios8601
        decoder.dateEncodingStrategy = .iso8601
        
        return encoder
    }
} 
```
