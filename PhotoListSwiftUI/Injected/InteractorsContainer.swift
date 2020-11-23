//
//  DIContainer.Interactors.swift
//  CountriesSwiftUI
//
//  Created by Alexey Naumov on 24.10.2019.
//  Copyright © 2019 Alexey Naumov. All rights reserved.
//

extension DIContainer {
    struct Interactors {
        // {{ name }}Interactorを以下に宣言する
        /*
        let countriesInteractor: CountriesInteractor
        let imagesInteractor: ImagesInteractor
        let userPermissionsInteractor: UserPermissionsInteractor
        
        init(countriesInteractor: CountriesInteractor,
             imagesInteractor: ImagesInteractor,
             userPermissionsInteractor: UserPermissionsInteractor) {
            self.countriesInteractor = countriesInteractor
            self.imagesInteractor = imagesInteractor
            self.userPermissionsInteractor = userPermissionsInteractor
        }
        */
        static var stub: Self {
            .init()
//            .init(countriesInteractor: StubCountriesInteractor(),
//                  imagesInteractor: StubImagesInteractor(),
//                  userPermissionsInteractor: StubUserPermissionsInteractor())
        }
    
    }
}
