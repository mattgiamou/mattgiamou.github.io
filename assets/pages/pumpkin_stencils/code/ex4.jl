# This file was generated, do not modify it. # hide
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