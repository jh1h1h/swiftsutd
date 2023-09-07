import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    @Binding var sourceCoordinate: CLLocationCoordinate2D
    @Binding var destinationCoordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Clear existing overlays and annotations
        uiView.removeOverlays(uiView.overlays)
        uiView.removeAnnotations(uiView.annotations)

        // Add source and destination markers
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.coordinate = sourceCoordinate
        sourceAnnotation.title = "You"

        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.coordinate = destinationCoordinate
        destinationAnnotation.title = "Bus"

        uiView.addAnnotation(sourceAnnotation)
        uiView.addAnnotation(destinationAnnotation)

        // Show the route
        showRoute(on: uiView)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView

        init(_ parent: MapView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
            let renderer = MKPolylineRenderer(overlay: overlay)
            renderer.strokeColor = UIColor.blue
            renderer.lineWidth = 5.0
            return renderer
        }
    }

    func showRoute(on mapView: MKMapView) {
        let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinate)
        let destinationPlacemark = MKPlacemark(coordinate: destinationCoordinate)

        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)

        let request = MKDirections.Request()
        request.source = sourceMapItem
        request.destination = destinationMapItem
        request.transportType = .automobile

        let directions = MKDirections(request: request)

        directions.calculate { response, error in
            if let route = response?.routes.first {
                mapView.addOverlay(route.polyline, level: .aboveRoads)
                let rect = route.polyline.boundingMapRect
                mapView.setRegion(MKCoordinateRegion(rect), animated: true)
            }
        }
    }
}

struct ContenttView: View {
    var busnumer: String
    var availability: String
    var arrivingMin: String

    // Define a dictionary to map bus numbers to coordinates
    let busToCoordinates: [String: CLLocationCoordinate2D] = [
        "2": CLLocationCoordinate2D(latitude: 1.372387, longitude: 103.752868),
        "21A": CLLocationCoordinate2D(latitude: 1.372887, longitude: 103.776868),
        "12E": CLLocationCoordinate2D(latitude: 1.372387, longitude: 103.759868),
        "187": CLLocationCoordinate2D(latitude: 1.372387, longitude: 103.752898),
        "98A": CLLocationCoordinate2D(latitude: 1.372887, longitude: 103.766868),
        "268": CLLocationCoordinate2D(latitude: 1.372887, longitude: 103.866868),
        "268B": CLLocationCoordinate2D(latitude: 1.372887, longitude: 103.769768)
        // Add more bus numbers and coordinates as needed
    ]

    @State private var sourceCoordinate = CLLocationCoordinate2D(latitude: 1.363758, longitude: 103.749334)
    @State private var destinationCoordinate = CLLocationCoordinate2D(latitude: 1.372387, longitude: 103.752868)

    var body: some View {
        VStack {
            MapView(sourceCoordinate: $sourceCoordinate, destinationCoordinate: $destinationCoordinate)
                .frame(width: 400, height: 300)

            VStack {
                Text("Bus Number:   \(busnumer)")
                Text("Arriving in \(arrivingMin) mins")
                if availability == "0" {
                    HStack {
                        Image(systemName: "figure.roll").foregroundColor(.red)
                        Text("0 booth available")
                    }
                } else {
                    HStack {
                        Image(systemName: "figure.roll").foregroundColor(.green)
                        Text("\(availability) booth(s) available")
                    }
                }
}.font(.system(size: 20))
        }.offset(y: -120)
        .navigationTitle("Bus Route")
        .navigationBarTitleDisplayMode(.large)
        .padding(.horizontal, 20)
        .onAppear {
            // Update the destinationCoordinate when busNumber changes
            if let newDestinationCoordinate = busToCoordinates[busnumer] {
                destinationCoordinate = newDestinationCoordinate
            }
        }
    }
}

struct ContenttView_Previews: PreviewProvider {
    static var previews: some View {
        ContenttView(busnumer: "444", availability: "2", arrivingMin: "2")
    }
}
