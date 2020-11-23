//
//  PhotoListView.swift
//  PhotoListSwiftUI
//
//  Created by Yamada.K on 2020/11/22.
//

import SwiftUI

struct PhotoListView: View {
    @State private(set) var photoList = ["1", "2"]
    @State private(set) var currentCount = 2
    var body: some View {
        NavigationView {
            self.content
                .navigationBarTitle("Photos")
                .animation(.easeOut(duration: 0.3))
        }
    }
    
    private var content: some View {
        return AnyView(photoDetailView())
    }
    
    private func didTap() {
        currentCount += 1
        photoList.append("\(currentCount)")
    }
}

private extension PhotoListView {
    func photoDetailView() -> some View {
        let columns: [GridItem] =
                 Array(repeating: .init(.flexible()), count: 2)
        return
            VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(photoList, id: \.self) { _ in
                        NavigationLink(
                        destination: PhotoDetailView(image: Image("sample"))) {
                            Image("sample")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }.font(.largeTitle)
            }
            Group {
                Button(action: didTap) {
                    Text("Add")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
                .background(Color.red)
            }
        }
    }
}

struct PhotoListView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoListView.init()
    }
}
