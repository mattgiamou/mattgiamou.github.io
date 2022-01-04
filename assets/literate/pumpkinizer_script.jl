# This file was generated, do not modify it.

using Images, ImageFiltering, ImageSegmentation

# Planned Steps

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

rgb_image = load("mattgiamou.github.io/_assets/img/blog/bruno_pumpkin_black_background.jpg")
gray_image = Gray.(rgb_image)
mosaicview(rgb_image, gray_image; nrow = 1);

hist_equal = adjust_histogram(gray_image, Equalization(nbins = 256))

# Bilateral Filtering
σr = 3 # Reduce this for more detail
σd = 7 # Reduce this for more detail too!
kernel_size = 14

filtered_image = bilateral_filter(hist_equal, kernel_size, σr, σd)
# Gaussian Filter

black_threshold = 0.5 # Increase for more black vs. gray
gray_threshold = 0.75 # Increase this for more gray vs. white
thresholded_image = threshold_image(filtered_image, black_threshold, gray_threshold)

mosaicview(gray_image, hist_equal, filtered_image, thresholded_image; nrow = 2)

