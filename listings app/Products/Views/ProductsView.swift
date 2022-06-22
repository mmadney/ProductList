//
//  ContentView.swift
//  listings app
//
//  Created by Madney on 22/06/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ProductsViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
        }
        .onAppear {
            print(viewModel.products)
        }
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
