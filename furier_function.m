function [] = furier_function(path_image_location, fig_num)
% First we will be loading image
imdata =imread(path_image_location);
figure(fig_num)
subplot(2,3,1);imshow(imdata); title('Original Image');
imdata = rgb2gray(imdata);
subplot(2,3,2); imshow(imdata); title('Gray Image');
%Get Fourier Transform of an image
F = fft2(imdata);
% Fourier transform of an image
S = abs(F);
subplot(2,3,3);imshow(S,[]);title('Fourier transform of an image');
%get the centered spectrum
Fsh = fftshift(F);
subplot(2,3,4);imshow(abs(Fsh),[]);title('Centered fourier transform of Image')
%apply log transform
S2 = log(1+abs(Fsh));
subplot(2,3,5);imshow(S2,[]);title('log transformed Image')
%reconstruct the Image
F = ifftshift(Fsh);
f = ifft2(F);
subplot(2,3,6) ;imshow(f,[]),title('reconstructed Image')

% increase image size
set(figure(fig_num),'units','points','position',[0,0,820,450])
end