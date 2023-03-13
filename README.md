# dogs-images-generator
![simulator_screenshot_2E0090AB-FABF-43C9-877C-CC5AD7C80688](https://user-images.githubusercontent.com/14839500/224854025-7af0d3b5-f1e5-49d9-8bfd-a2d87920f750.png)

## About The Project

Upon using this library you will get amazing dog images from a special API!
The library returns a image that you can present to your amazing users.

### Built With

[![swift-version](https://img.shields.io/badge/swift-5.1-brightgreen.svg)](https://github.com/apple/swift)

### Installation
Add https://github.com/broxigarthered/dogs-images-generator in the “Swift Package Manager” tab in Xcode.

#### OR
You can download the xcframework and add the "dogs_images_generator.xcframework" to your project manually.


### Usage
In order to use the framework you don't have to do much.
```sh
import dogs_images_generator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dogsImagesGenerator = DogsImagesGenerator()
        dogsImagesGenerator.getImages(number: 3) { result in
            switch result {
            case .success(let imagesURLs):
                print(imagesURLs)
            case .failure(let failure):
                print("We have a problem \(failure)")
            }
        }
    }
}
   ```
   

You can:
get a single image, load next image if existing, load previous image if existing.

```sh
public protocol ImageGenerator {
    // Returns the first image if there is such and error if there was problem loading
    func getImage(completion: @escaping (Result<UIImage, Error>) -> Void)
    // Returns an array of images urls depending on the input count
    func getImages(number: Int, completion: @escaping (Result<[String], Error>) -> Void)
    // Returns an image, starting from the first one. Retruns an error if there is no next image or there was a problem with loading the image
    func getNextImage(completion: @escaping (Result<UIImage, Error>) -> Void)
    // Returns the previous image if there is such. Returns an error if there is none
    func getPreviousImage(completion: @escaping (Result<UIImage, Error>) -> Void)
}

   ```



#### Imporant:
1. Upon loading an image it's being cached in the memory so memory consumtion is reduced.
2. You can find the API used here - https://dog.ceo/dog-api/documentation/random

Latest version: 0.0.2
