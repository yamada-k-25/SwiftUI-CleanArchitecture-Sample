//
//  PhotoDetailView.swift
//  PhotoListSwiftUI
//
//  Created by Yamada.K on 2020/11/23.
//

import SwiftUI

struct PhotoDetailView: View {
    @State private var image: Image
    init(image: Image) {
        self._image = .init(initialValue: image)
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(image: Image("sample"))
    }
}
