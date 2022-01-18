import UIKit
import Alamofire


public struct spmTest {
    public private(set) var text = "GCP"

    public init() {
    }
    
    public func sayHello(completion: @escaping (String) -> Void) -> Void {
        AF.request("https://httpbin.org/get").response { response in
            DispatchQueue.main.async {
                completion(response.description)
            }
        }
    }
}
