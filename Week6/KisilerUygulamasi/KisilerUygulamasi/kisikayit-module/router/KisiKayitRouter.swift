//
//  KisiKayitRouter.swift
//  KisilerUygulamasi
//
//  Created by Deniz Yüce on 30.04.2022.
//

import Foundation

class KisiKayitRouter : PresenterToRouterKisiKayitProtocol {
    static func createModule(ref: KisiKayitVC) {
        ref.kisiKayitPresenterNesnesi = KisiKayitPresenter()
        ref.kisiKayitPresenterNesnesi?.kisiKAyitInteractor = KisiKayitInteractor()
    }
}
