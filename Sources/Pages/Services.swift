import Foundation
import Ignite

struct Services: StaticPage {
    var title = "Services"

    var body: some HTML {
        Group {
            Text("SERVICES")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Table {
                Row {
                    "Bathing"
                    "£25"
                    "£30"
                    "£35"
                }

                Row {
                    "Full Haircut"
                    "£40"
                    "£50"
                    "£60"
                }

                Row {
                    "Nail Trimming"
                    "£15"
                    "£15"
                    "£15"
                }

                Row {
                    "Ear Cleaning"
                    "£10"
                    "£10"
                    "£10"
                }

                Row {
                    "Teeth Brushing"
                    "£12"
                    "£12"
                    "£12"
                }

                Row {
                    "De-shedding Treatment"
                    "£30"
                    "£35"
                    "£40"
                }

                Row {
                    "Specialty Styling"
                    "£50"
                    "£60"
                    "£70"
                }

                Row {
                    "Complete Grooming Package"
                    "£80"
                    "£95"
                    "£110"
                }
            } header: {
                "Service"
                "Small Dogs"
                "Medium Dogs"
                "Large Dogs"
            }
            .tableStyle(.stripedRows)
        }
        .frame(width: .percent(.init(90)))
    }
}
