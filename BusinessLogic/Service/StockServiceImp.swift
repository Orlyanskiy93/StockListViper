//
//  MyServiceImp.swift
//  StockListViper
//
//  Created by Дмитрий Орлянский on 11.03.2021.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit

class StockServiceImp: StockService {
    static let token = "pk_742e2bcb078b4ef7bbce73527a98c2a3"
    let baseUrl = URL(string: "https://cloud.iexapis.com/stable")!
        
    static let shared = StockServiceImp()
    private init(){}
    
    func getList(_ type: StockType) -> Promise<[Stock]> {
        return Promise { seal in
            let url = baseUrl.appendingPathComponent(type.routeUrlString)
            let parametrs: Parameters = ["token": StockServiceImp.token]

            AF.request(url, parameters: parametrs).validate().responseJSON { (response) in
                switch response.result {
                case.success(let data):
                    do {
                        let stocks = try Mapper<Stock>().mapArray(JSONObject: data)
                        seal.fulfill(stocks)
                    } catch {
                        seal.reject(error)
                    }
                case .failure(let error):
                    guard let data = response.data,
                          let string = try? JSONSerialization.jsonObject(with: data, options: []) as? String else {
                        seal.reject(error)
                        return
                    }
                    let errorMesssage = StockError.custom(string)
                    seal.reject(errorMesssage)
                }
            }
        }
    }
    
    func getLogoUrl(symbol: String) -> Promise<URL> {
        return Promise { seal in
            let url = baseUrl.appendingPathComponent("stock/\(symbol)/logo")
            let parametrs: Parameters = ["token": StockServiceImp.token]
            
            AF.request(url, parameters: parametrs).validate().responseJSON { (response) in
                switch response.result {
                case.success(let data):
                    do {
                        guard let dict = data as? [String: Any],
                              let logoUrlString = dict["url"] as? String else {
                            throw StockError.maping
                        }
                        let logoUrl = URL(string: logoUrlString)!
                        seal.fulfill(logoUrl)
                    } catch {
                        seal.reject(error)
                    }
                case.failure(let error):
                    guard let data = response.data,
                          let string = try? JSONSerialization.jsonObject(with: data, options: []) as? String else {
                        seal.reject(error)
                        return
                    }
                    let errorMesssage = StockError.custom(string)
                    seal.reject(errorMesssage)
                }
            }
        }
    }
}
