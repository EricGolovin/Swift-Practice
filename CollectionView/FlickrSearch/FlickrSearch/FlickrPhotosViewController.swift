//
//  FlickrPhotosViewController.swift
//  FlickrSearch
//
//  Created by Eric Golovin on 7/6/20.
//

import UIKit

class FlickrPhotosViewController: UIViewController {
    
    // MARK: - Cell Identifiers
    private let reuseIdentifier = "FlickrCell"

    // MARK: - IBOutlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    private let sectionInsets = UIEdgeInsets(top: 50.0,
                                             left: 20.0,
                                             bottom: 50.0,
                                             right: 20.0)
    private let itemsPerRow: CGFloat = 3
    private var searches: [FlickrSearchResults] = []
    private let flickr = Flickr()
    
    
    // MARK: - View Controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

private extension FlickrPhotosViewController {
    func photo(for indexPath: IndexPath) -> FlickrPhoto {
        return searches[indexPath.section].searchResults[indexPath.row]
    }
}

// MARK: - Search Bar Delegate
extension FlickrPhotosViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        searchBar.addSubview(activityIndicator)
        activityIndicator.frame = searchBar.bounds
        activityIndicator.startAnimating()
        
        flickr.searchFlickr(for: searchBar.text ?? "") { searchResults in
            activityIndicator.removeFromSuperview()
            
            switch searchResults {
            case .error(let error):
                print("Error Searching: \(error)")
            case .results(let results):
                print("Found \(results.searchResults.count) matching \(results.searchTerm)")
                self.searches.insert(results, at: 0)
                self.collectionView.reloadData()
            }
        }
        searchBar.text = nil
        searchBar.resignFirstResponder()
    }
}

// MARK: - Collection View Data Source
extension FlickrPhotosViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return searches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searches[section].searchResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FlickrPhotoCell
        
        let flickrPhoto = photo(for: indexPath)
        cell.backgroundColor = .white
        
        cell.imageView.image = flickrPhoto.thumbnail
        
        return cell
    }
    
}

// MARK: - Collection View Flow Layout Delegate
extension FlickrPhotosViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
}
