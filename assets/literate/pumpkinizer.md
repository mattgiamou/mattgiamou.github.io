<!--This file was generated, do not modify it.-->
Over the last few years, my family and I have rekindled our collective interest in carving jack-o-lanterns.
As a child, I would carve fairly simple templates with my parents, but in 2019 I found [a tutorial](https://www.instructables.com/Phot-o-lantern/)
for creating photo-realistic stencils with photo editing software (I used [GIMP](https://www.gimp.org/)).
The resulting carving of my wife was cool, but it took a lot of manual work to get the template from a reference photo.

![Very spooky!](/assets/img/blog/cassie_pumpkin.jpg)

This year, I decided to see what I could do to automate most of the stencil creation steps using Julia's image processing libraries.
With a perfect feline model in mind, I got to work.

![My dearly beloved former foster cat Bruno.](/assets/img/blog/bruno_pumpkin.png)

This tutorial was made with [Literate.jl](https://fredrikekre.github.io/Literate.jl/); you can find the source code [here](https://github.com/mattgiamou/mattgiamou.github.io/blob/master/_literate/pumpkinizer.jl).

```julia:ex1
using Images, ImageFiltering, ImageSegmentation

# Planned Steps
```

1. Grayscale
2. Equalization
3a. Segmentation (set background to black)
3b. Add edge detection so that border is illuminated? Maybe manual
4. Bilateral filter to smooth
5. Thresholding
6. Touch-up on iPad

I implemented a simple [bilateral filter] which reduced detail without making the image too blurry.

```julia:ex2
function bilateral_filter(img, n::Int=5, σr=0.5, σd=0.5)
    img_filt = zeros(size(img))
    for i = 1:size(img, 1)
        for j = 1:size(img, 2)
            w_sum = 0.0
            img_sum = 0.0
            for u = max(1, i-n):min(size(img, 1), i+n)
                for v = max(1, j-n):min(size(img, 2), j+n)
                    w_ijuv = exp(-((i-u)^2 + (j-v)^2)/(2*σd^2) - (img[i, j] - img[u, v])^2/(2*σr^2))
                    w_sum += w_ijuv
                    img_sum += w_ijuv*img[u, v]
                end
            end
            img_filt[i, j] = img_sum/w_sum
        end
    end
    return img_filt
end;
```

The final step was simply a thresholding procedure so that the stencil only featured three shades.
Carving with a greater number of shades is beyond my abilities, but more skilled pumpkin pulp-sculptors can easily modify this procedure to support
more detailed shading.

```julia:ex3
function threshold_image(img, black_threshold, gray_threshold)
    thresholded_image = zeros(size(img))
    for ind in eachindex(img)
        if img[ind] < black_threshold
            thresholded_image[ind] = 0.0
        elseif img[ind] > gray_threshold
            thresholded_image[ind] = 1.0
        else
            thresholded_image[ind] = 0.5
        end
    end
    return thresholded_image
end;
```

Let's load up the image, this time with a black background that I manually filled in on my iPad, and make it grayscale.

```julia:ex4
rgb_image = load("mattgiamou.github.io/_assets/img/blog/bruno_pumpkin_black_background.jpg")
gray_image = Gray.(rgb_image)
mosaicview(rgb_image, gray_image; nrow = 1);
```

Equalization

```julia:ex5
hist_equal = adjust_histogram(gray_image, Equalization(nbins = 256))
```

gamma_correction = adjust_histogram(gray_image, GammaCorrection(gamma = 2))
hist_adapt = adjust_histogram(gray_image, AdaptiveEqualization(nbins = 256, rblocks = 4, cblocks = 4, clip = 0.2))

```julia:ex6
# Bilateral Filtering
σr = 3 # Reduce this for more detail
σd = 7 # Reduce this for more detail too!
kernel_size = 14
```

filtered_image = bilateralfilter(hist_equal, σr, σd)

```julia:ex7
filtered_image = bilateral_filter(hist_equal, kernel_size, σr, σd)
# Gaussian Filter
```

kernel_width = 3
# filtered_image = imfilter(hist_equal, Kernel.gaussian(kernel_width))
filtered_image = imfilter(hist_equal, ones(10, 10)/100)

Thresholding Operation

```julia:ex8
black_threshold = 0.5 # Increase for more black vs. gray
gray_threshold = 0.75 # Increase this for more gray vs. white
thresholded_image = threshold_image(filtered_image, black_threshold, gray_threshold)
```

thresholded_image = Gray.(thresholded_image)

```julia:ex9
mosaicview(gray_image, hist_equal, filtered_image, thresholded_image; nrow = 2)
```

Tips for next year:
1. I carved the wall WAY too thin!
2. The mouth was way too small (related to 1)
3. I need smaller holes (is my hole-poking tool too big, or did I just poke too hard?)
4.

