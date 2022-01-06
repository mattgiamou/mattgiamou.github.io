# This file was generated, do not modify it.

using Images, ImageFiltering, ImageContrastAdjustment

rgb_image = load("_assets/img/blog/pumpkinizer/bruno_pumpkin_black_background.jpg")
gray_image = Gray.(rgb_image);

hist_equal = adjust_histogram(gray_image, Equalization(nbins = 256));

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

σr = 3 # Smoothing parameter based on pixel proximity (reduce this for more detail)
σd = 7 # Smoothing parameter based on pixel intensity similarity (reduce this for more detail as well)
kernel_size = 14 # Size of the window to use (make this larger for less detail)
filtered_image = bilateral_filter(hist_equal, kernel_size, σr, σd);

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

black_threshold = 0.5 # Increase for more black vs. gray
gray_threshold = 0.75 # Increase this for more gray vs. white
thresholded_image = threshold_image(filtered_image, black_threshold, gray_threshold);

