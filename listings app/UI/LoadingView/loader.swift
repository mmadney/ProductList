//
//  Loader.swift
//  Timicle
//
//  Created by Apple on 20/09/2021.
//

import SwiftUI

struct Loader: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .black))
                    .scaleEffect(2)
                Spacer()
            }
            
            Spacer()
        }
        
    }
}

struct Loader_Previews: PreviewProvider {
    static var previews: some View {
        Loader()
    }
}
