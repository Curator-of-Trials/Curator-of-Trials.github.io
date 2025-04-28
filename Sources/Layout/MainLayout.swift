//
//  MainLayout.swift
//  IgniteStarter
//
//  Created by Pavel Kroupa on 25.04.2025.
//

import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
        Body {
            NavBar()
                .padding(.bottom, 55)
            content

            IgniteFooter()
        }
    }
}

struct NavBar: HTML {
    var body: some HTML {
        let brandImage = Image("/images/logo.svg", description: "Brush & Bark")
            .frame(width: .custom("min(60vw, 200px)"), height: .percent(100%))

        NavigationBar(logo: brandImage) {
            Link("Services", target: Services())
            Link("Reviews", target: Reviews())
            Link("Blog", target: Blog())
            Link("Help", target: Help())
            Link("Contact Us", target: Contact())
        }
        .navigationItemAlignment(.trailing)
        .background(.init(hex: "#2c3e50"))
        .position(.fixedTop)
    }
}
