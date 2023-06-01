# Image Noise Restoration

This project aims to restore images that have been affected by noise using various classic image processing methods. The goal is to apply different image restoration techniques to a given image and compare their performance.

## Project Description

The project consists of several MATLAB files that implement different image restoration methods. Here is a brief description of each file:

- `Boy Image.jpg`: This is an example image that will be used for testing the image restoration methods. You can replace it with your own image if desired.

- `Compare_MSE.m`: This MATLAB script calculates the Mean Squared Error (MSE) between two images. It can be used to compare the performance of different restoration methods by measuring the difference between the restored image and the original image.

- `Filter_Average.m`: This MATLAB function applies an average filter to the input image. The average filter is a simple smoothing filter that replaces each pixel with the average value of its neighboring pixels.

- `Filter_Gaussian.m`: This MATLAB function applies a Gaussian filter to the input image. The Gaussian filter is a widely used smoothing filter that reduces noise while preserving important image details.

- `Filter_Max.m`: This MATLAB function applies a maximum filter to the input image. The maximum filter replaces each pixel with the maximum value of its neighboring pixels, which helps to remove salt-and-pepper noise.

- `Filter_Median.m`: This MATLAB function applies a median filter to the input image. The median filter is effective in removing impulse noise by replacing each pixel with the median value of its neighboring pixels.

- `Filter_Min.m`: This MATLAB function applies a minimum filter to the input image. The minimum filter replaces each pixel with the minimum value of its neighboring pixels, which helps to remove salt-and-pepper noise.

- `Filter_Wiener.m`: This MATLAB function applies a Wiener filter to the input image. The Wiener filter is a statistical filter that minimizes the mean square error between the original image and the filtered image.

- `Main.m`: This is the main MATLAB script that demonstrates how to use the image restoration methods. It loads the input image, applies each restoration method, and compares the results using the MSE metric.

- `PeriodicNoise.m`: This MATLAB script generates periodic noise patterns that can be added to an image for testing purposes.

- `Restoration.m`: This MATLAB function serves as a wrapper for applying the image restoration methods. It takes an input image and a restoration method as parameters and returns the restored image.

- `Run.m`: This MATLAB script is a helper script that runs the main script and displays the results.

## Usage

To use this project, follow these steps:

1. Clone or download the project repository.

2. Ensure that you have MATLAB installed on your system.

3. Open MATLAB and navigate to the project directory.

4. Run the `Run.m` script to execute the main script and see the results.

Note: You can modify the main script or use the individual restoration methods in your own MATLAB projects as per your requirements.

## Contributing

If you would like to contribute to this project, you can fork the repository, make your changes, and submit a pull request. Your contributions and ideas are welcome!

## License

This project is licensed under the [MIT License](LICENSE).

