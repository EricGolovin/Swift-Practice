//
//  Flickr.swift
//  FlickrSearch
//
//  Created by Eric Golovin on 7/6/20.
//

import UIKit

let apiKey = "ed00813b8a7429e08bcb1fb73b739c5b"
// Secret: faa83d70bbbf0e82

class Flickr {
    
    enum Error: Swift.Error {
        case unknownAPIResponse
        case generic
    }
    
    func searchFlickr(for searchTerm: String, completion: @escaping (Result<FlickrSearchResults>) -> Void) {
        guard let searchURL = flickrSearchURL(for: searchTerm) else {
            completion(Result.error(Error.unknownAPIResponse))
            return
        }
        
        let searchRequest = URLRequest(url: searchURL)
        
        URLSession.shared.dataTask(with: searchRequest) { (data, response, error) in
            if let error = error {
                DispatchQueue.main.async {
                    completion(Result.error(error))
                }
                return
            }
            
            guard let _ = response as? HTTPURLResponse,
                  let data = data else {
                DispatchQueue.main.async {
                    completion(Result.error(Error.unknownAPIResponse))
                }
                return
            }
            
            do {
                guard let resultsDictionary = try JSONSerialization.jsonObject(with: data) as? [String: AnyObject],
                      let stat = resultsDictionary["stat"] as? String else {
                    DispatchQueue.main.async {
                        completion(Result.error(Error.unknownAPIResponse))
                    }
                    return
                }
                
                switch (stat) {
                case "ok":
                    print("Results processed OK")
                case "fail":
                    DispatchQueue.main.async {
                        completion(Result.error(Error.generic))
                    }
                    return
                default:
                    DispatchQueue.main.async {
                        completion(Result.error(Error.unknownAPIResponse))
                    }
                    return
                }
                
                guard let photosContainer = resultsDictionary["photos"] as? [String: AnyObject],
                      let photosReceived = photosContainer["photo"] as? [[String: AnyObject]] else {
                    DispatchQueue.main.async {
                        completion(Result.error(Error.unknownAPIResponse))
                    }
                    return
                }
                
                let flickrPhotos: [FlickrPhoto] = photosReceived.compactMap { photoObject in
                    guard let photoID = photoObject["id"] as? String,
                          let farm = photoObject["farm"] as? Int,
                          let server = photoObject["server"] as? String,
                          let secret = photoObject["secret"] as? String else {
                        return nil
                    }
                    
                    let flickrPhoto = FlickrPhoto(photoID: photoID, farm: farm, server: server, secret: secret)
                    
                    guard let url = flickrPhoto.flickrImageURL(),
                          let imageData = try? Data(contentsOf: url as URL) else {
                        return nil
                    }
                    
                    if let image = UIImage(data: imageData) {
                        flickrPhoto.thumbnail = image
                        return flickrPhoto
                    } else {
                        return nil
                    }
                }
                
                let searchResults = FlickrSearchResults(searchTerm: searchTerm, searchResults: flickrPhotos)
                DispatchQueue.main.async {
                    completion(Result.results(searchResults))
                }
            } catch {
                completion(Result.error(error))
                return
            }
        }.resume()
    }
    
    private func flickrSearchURL(for searchTerm: String) -> URL? {
        guard let escapedTerm = searchTerm.addingPercentEncoding(withAllowedCharacters: CharacterSet.alphanumerics) else {
            return nil
        }
        
        let URLString = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&text=\(escapedTerm)&per_page=20&format=json&nojsoncallback=1"
        
        return URL(string: URLString)
    }
}
