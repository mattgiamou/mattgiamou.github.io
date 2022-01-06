# This file was generated, do not modify it. # hide
σr = 3 # Smoothing parameter based on pixel proximity (reduce this for more detail)
σd = 7 # Smoothing parameter based on pixel intensity similarity (reduce this for more detail as well)
kernel_size = 14 # Size of the window to use (make this larger for less detail)
filtered_image = bilateral_filter(hist_equal, kernel_size, σr, σd);