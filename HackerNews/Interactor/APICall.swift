//
//  APICall.swift
//  HackerNews
//
//  Created by Anurita Srivastava on 28/11/18.
//  Copyright © 2018 Anurita Srivastava. All rights reserved.
//
import Foundation
import Alamofire
import ObjectMapper

class APICall: NSObject{
    weak var presenter: APIManagerDelegate?

    func fetchNews() {
        let url = Constant.url+Constant.topStories
        Alamofire.request(url).responseJSON { response in
print(response.request?.url)
            if(response.response?.statusCode == 200){
                if let json = response.result.value as AnyObject? {
print(json)
                }
            }else {
              //  self.presenter?.noticeFetchFailed()
            }
        }
    }
}
