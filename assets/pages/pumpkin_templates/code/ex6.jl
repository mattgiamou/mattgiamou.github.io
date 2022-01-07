# This file was generated, do not modify it. # hide
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