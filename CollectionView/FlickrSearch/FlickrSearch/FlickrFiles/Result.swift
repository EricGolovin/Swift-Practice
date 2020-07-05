//
//  Result.swift
//  FlickrSearch
//
//  Created by Eric Golovin on 7/6/20.
//

import Foundation

enum Result<ResultType> {
    case results(ResultType)
    case error(Error)
}
