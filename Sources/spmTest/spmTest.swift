import UIKit
import Alamofire


public struct spmTest {
    public private(set) var text = "Test"

    public init() {
    }
    
    public func sayHello(completion: @escaping (String) -> Void) -> Void {
        Alamofire.request("https://httpbin.org/get").response { response in
            DispatchQueue.main.async {
                completion(response.response?.description ?? "")
            }
        }
    }
}
