//
//  TenthMissionApp.swift
//  TenthMission
//
//  Created by Rafael on 12/25/23.
//

import SwiftUI

import KakaoSDKCommon
import KakaoSDKAuth

@main
struct TenthMissionApp: App {
    init() {
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        KakaoSDK.initSDK(appKey:kakaoAppKey as! String)
    }
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .onOpenURL { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
        }
    }
}
