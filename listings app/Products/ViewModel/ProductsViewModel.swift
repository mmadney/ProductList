//
//  ProductsViewModel.swift
//  listings app
//
//  Created by Madney on 22/06/2022.
//

import Combine
import Foundation

final class ProductsViewModel: ObservableObject {
    private var cancellable: AnyCancellable?
    @Published var products: [ProductModel] = []
    private let client = ProductApi()
    @Published private(set) var isLoading = true
    
    init(){ getProducts() }

    func getProducts() {
        isLoading = true
        cancellable = client.getProducts(.getProducts)
            .sink(receiveCompletion: { [weak self] _ in
                      guard let self = self else { return }
                      self.isLoading = false
                  },
                  receiveValue: {
                      self.products = $0.results.map { ProductModel(product: $0) }
                  })
    }
}
