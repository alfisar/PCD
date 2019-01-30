clear all;
img = imread('IMG_20181125_003159.jpg');
[r, c, colormap] = size(img);
merah = 0.0;
hijau = 0.0;
biru = 0.0;
for i=1:r
  for j=1:c
      merah = merah + double(img(i,j,1));
      hijau = hijau + double(img(i,j,2));
      biru = biru + double(img(i,j,3));   
  end
end
hasil = (merah + hijau + biru);
abu = (merah/hasil)*img(:,:,1) + (hijau/hasil)*img(:,:,2) + (biru/hasil)*img(:,:,3);
figure, imshow(abu);