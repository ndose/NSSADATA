//
//  ImageCache.swift
//  NasaChallenge
//
//   Created by Hilliman Ncube on 2022/01/31.

import UIKit

protocol ImageCaching {
    func getImage(url: NSURL) -> UIImage?
    func saveImage(_ image: UIImage, url: NSURL)
}

class ImageCache: ImageCaching {
    static let shared = ImageCache()
    
    private let cachedImages = NSCache<NSURL, UIImage>()
    
    func getImage(url: NSURL) -> UIImage? {
        return cachedImages.object(forKey: url)
    }
    
    func saveImage(_ image: UIImage, url: NSURL) {
        cachedImages.setObject(image, forKey: url)
    }
}
