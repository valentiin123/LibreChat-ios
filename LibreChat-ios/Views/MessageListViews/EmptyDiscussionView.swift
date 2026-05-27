//
//  EmptyDiscussionView.swift
//  LibreChat-ios
//
//  Created by Jordan Chap on 27.05.2026.
//

import SwiftUI

struct EmptyDiscussionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
                .frame(height: 100)
            Text("**Hey**,\nI'm here to help you")
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    EmptyDiscussionView()
}
