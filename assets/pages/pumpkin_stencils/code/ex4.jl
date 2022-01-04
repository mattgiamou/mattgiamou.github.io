# This file was generated, do not modify it. # hide
rgb_image = load("mattgiamou.github.io/_assets/img/blog/bruno_pumpkin_black_background.jpg")
gray_image = Gray.(rgb_image)
mosaicview(rgb_image, gray_image; nrow = 1);