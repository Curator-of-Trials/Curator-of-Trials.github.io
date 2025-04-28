import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Carousel {
            Slide(background: "/images/shades.jpg") {
                Text("Welcome to Brush & Bark")
                    .font(.title1)
                    .foregroundStyle(.white)

                Text("We are Oxford's #1 dog grooming salon, and ready to leave you pawsitively happy!")
                    .font(.lead)
                    .foregroundStyle(.white)

                Link("Make a Booking", target: Contact())
                    .linkStyle(.button)
                    .role(.danger)
            }
            .backgroundOpacity(0.4)

            Slide(background: "/images/chair.jpg") {
                Text("Fur-tastic Grooming for your Best Friend")
                    .font(.title1)
                    .foregroundStyle(.white)

                Text("We offer full grooming and styling, plus nail treatments, doggy spas, and more.")
                    .font(.lead)
                    .foregroundStyle(.white)

                Link("All Services", target: Services())
                    .linkStyle(.button)
                    .role(.secondary)
            }
            .backgroundOpacity(0.4)

            Slide(background: "/images/wind.jpg") {
                Text("You're barking up the right tree")
                    .font(.title1)
                    .foregroundStyle(.white)

                Text("We're here to make every pup look pupperific – brush up on your cuteness today!")
                    .font(.lead)
                    .foregroundStyle(.white)

                Link("Email Us", target: "mailto:paul@hackingwithswift.com")
                    .linkStyle(.button)
                    .role(.info)
            }
            .backgroundOpacity(0.4)
        }
        

        VStack(alignment: .center, spacing: 8) {
            Text("ABOUT US")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text(placeholderLength: 50)
                .font(.lead)

            Text("Dave and John")
                .font(.lead)
                .fontWeight(.bold)
        }
        .frame(maxWidth: 500)
        .horizontalAlignment(.center)
        .containerRelativeFrame(.center)
        .margin(.bottom, .xLarge)

        Grid {
            Card(imageName: "/images/rug.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)

            Card(imageName: "/images/wind.jpg") {
                Text("Arya, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)

            Card(imageName: "/images/car.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)
        }
        .columns(3)
    }
}
