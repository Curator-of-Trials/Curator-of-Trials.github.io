//
//  File.swift
//
//
//  Created by Paul Hudson on 27/04/2024.
//

import Foundation
import Ignite

struct BlogPost: ArticlePage {
    var body: some HTML {
        Group {
            Text(article.title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.")

            Text(article.text)
        }
        .frame(width: .percent(.init(90)))
    }
}
