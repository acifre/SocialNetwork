//
//  AppSettingsView.swift
//  SocialNetwork
//
//  Created by Anthony Cifre on 5/25/23.
//

import SwiftUI

struct AppSettingsView: View {

    @ObservedObject private var viewModel = AppSettingsViewModel()
       
    var body: some View {
        Text(viewModel.title)
    }

}

struct AppSettings_Previews: PreviewProvider {
    static var previews: some View {
        AppSettingsView()
    }
}
