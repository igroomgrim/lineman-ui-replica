//
//  LMRestaurant.swift
//  LineManUIRep
//
//  Created by Anak Mirasing on 20/1/2568 BE.
//

struct LMRestaurant: Codable, Identifiable, Equatable {
    let id: String
    let name: String
    let logoUrl: String
    let rating: Double?
    let distance: Double?  // in kilometers from user's delivery address
    
    var formattedDistance: String? {
        guard let distance = distance else { return nil }
        return String(format: "%.1f km", distance)
    }
    
    var formattedRating: String? {
        guard let rating = rating else { return nil }
        return String(format: "%.1f", rating)
    }
}
