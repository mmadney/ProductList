import Foundation

struct Products: Codable {
    let results: [Product]
    let pagination: Pagination
}

// MARK: - Pagination
struct Pagination: Codable {
    let key: String?
}

// MARK: - Result
struct Product: Codable {
    let createdAt, price, name, uid: String
    let imageIDS: [String]
    let imageUrls, imageUrlsThumbnails: [String]

    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case price, name, uid
        case imageIDS = "image_ids"
        case imageUrls = "image_urls"
        case imageUrlsThumbnails = "image_urls_thumbnails"
    }
}


struct ProductModel: Identifiable , Hashable {
    let id = UUID()
    let createdAt, price, name, uid: String
    let imageIDS: [String]
    let imageUrls, imageUrlsThumbnails: [String]
    
    init(product: Product) {
        self.createdAt = product.createdAt
        self.price = product.price
        self.name = product.name
        self.uid = product.uid
        self.imageIDS = product.imageIDS
        self.imageUrls = product.imageUrls
        self.imageUrlsThumbnails = product.imageUrlsThumbnails
    }
}
