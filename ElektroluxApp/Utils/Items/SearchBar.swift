//
//  SearchBar.swift
//  ElektroluxApp
//
//  Created by Mehmet Seyhan on 03/05/2022.
//

import SwiftUI

struct SearchBar: View {
    
    // MARK: - PROPERTIES
    @Binding var text: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            // Search Text Box
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }//: HSTACK
                )
        } //: HStack
        .padding(.horizontal, 10)
    }
}

// MARK: - PREVIEW
struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."))
    }
}
