//
//  ContentView.swift
//  PhotoListSwiftUI
//
//  Created by Yamada.K on 2020/11/22.
//

import SwiftUI

struct ContentView: View {
    // @State: このViewだけで持つ変数を@Stateで宣言する
    // @Environment: 外側から持ってこられる値をEnvironmentで宣言する
    @Environment(\.injected) private var injected: DIContainer
    @Environment(\.locale) private var locale: Locale
//    private let localeContainer = LocaleReader.Container()
    
    // テストのフレームワークだった気がする
//    let inspection = Inspection<Self>()
    // Viewに必要な値をもらう
    init(countries: Loadable<LazyList<String>> = .notRequested) {
//        self._countries = .init(initialValue: countries)
    }
    var body: some View {
        TabView {
            PhotoListView()
                .tabItem { Label(
                    title: { Text("photo list") },
                    icon: { Image(systemName: "photo") }
                ) }
            Text("b")
                .tabItem { Label(
                    title: { Text("camera") },
                    icon: { Image(systemName: "camera") }
                ) }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
