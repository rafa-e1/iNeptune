//
//  MainCategoryButton.swift
//  WeeklyMission6th
//
//  Created by 제민우 on 11/15/23.
//

import SwiftUI

struct MainCategoryButton: View {
    
    var mainCategoryButtonImage: String
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(mainCategoryButtonImage)
                .resizable()
                .scaledToFit()
        })
    }
}

#Preview {
    MainCategoryButton(mainCategoryButtonImage: "CategoryBMart")
}
