function [] = DWT_function(output_folder,image_path_location,image_to_proceed,image_extension)
%  Join location strings
path_location=strcat(image_path_location,image_to_proceed,image_extension);

input_image = imread(path_location);
input_image=rgb2gray(input_image);% convert Gray
% Original Image
% figure(1)
% imshow(input_image);
% title('Original Image');
% resizing the image
size_of_output_result_image=size(input_image);

[LL,LH,HL,HH]=dwt2(input_image,'db1');

% processingd Discrete Wavelet transform with levels
figure(1)
subplot(2,3,1);imshow(input_image);title('Original Image');
subplot(2,3,2);imshow(LL);title('LL band of image');
subplot(2,3,3);imshow(LH);title('LH band of image');
subplot(2,3,5);imshow(HL);title('HL band of image');
subplot(2,3,6);imshow(HH);title('HH band of image');
output_result_transformed_image = idwt2(LL,LH,HL,HH,'db1',size_of_output_result_image);
subplot(2,3,4);imshow(output_result_transformed_image);
title('Transformed Image DWT');
% increase size of image to display united
set(figure(1),'units','points','position',[0,0,820,450])

%0-Saving the original image

original_path=strcat(output_folder,'\Original_images\');
if ~exist(original_path, 'dir')
   mkdir(original_path)
end

original_path=strcat(original_path,'original_',image_to_proceed,image_extension);

original_image = figure(8);
set(original_image,'Visible','off');
imshow(input_image);
saveas(original_image,original_path);



% creating path for final result according to the root, but checking it
% first, ex 'output_images\iris_output'
% Creating final result folder -> \final_results_DWT\
transformed_result_image=strcat(output_folder,'\final_results_DWT\');
if ~exist(transformed_result_image, 'dir')
   mkdir(transformed_result_image)
end
%Adding file with the extension to the string
transformed_result_image=strcat(transformed_result_image,'DWT_',image_to_proceed,image_extension);

% Discrete Wavelet transform image
main_output_image = figure(2);
saveas(imshow(output_result_transformed_image),transformed_result_image);
% imshow(output_result_transformed_image)
% title('Transformed Image DWT');
set(main_output_image,'Visible','off');% close image after if needed to be closed


% Working with each output step by step
% storing outputs on separated variables 
% Saving images LL (low-low), LH(low-high), HL(high-low), HH(high-high)

% Check if path exist, if not we create it

% 1 LL path
LL_path=strcat(output_folder,'\LL_images\');
if ~exist(LL_path, 'dir')
   mkdir(LL_path)
end

LL_path=strcat(LL_path,'LL_',image_to_proceed,image_extension);


image_1_LL = figure(4);
set(image_1_LL,'Visible','off');%image visible off
imshow(LL);
saveas(image_1_LL,LL_path);

% 2 LH Path

LH_path=strcat(output_folder,'\LH_images\');
if ~exist(LH_path, 'dir')
   mkdir(LH_path)
end

LH_path=strcat(LH_path,'LH_',image_to_proceed,image_extension);

image_2_LH = figure(5);
set(image_2_LH,'Visible','off');
imshow(LH);
saveas(image_2_LH,LH_path);

% 3 HL path creation
HL_path=strcat(output_folder,'\HL_images\');
if ~exist(HL_path, 'dir')
   mkdir(HL_path)
end

HL_path=strcat(HL_path,'HL_',image_to_proceed,image_extension);

image_3_HL = figure(6);
set(image_3_HL,'Visible','off');
imshow(HL);
saveas(image_3_HL,HL_path);

% 4 HH image path creation
HH_path=strcat(output_folder,'\HH_images\');
if ~exist(HH_path, 'dir')
   mkdir(HH_path)
end

HH_path=strcat(HH_path,'HH_',image_to_proceed,image_extension);

image_4_HH = figure(7);
set(image_4_HH,'Visible','off');
imshow(HH);
saveas(image_4_HH,HH_path);

% Fourier Transform part, each 
% image output will be included into the function fourier transform

% 1-Low-Low image 
furier_function(LL_path,2)
% 2-Low-High image
furier_function(LH_path,3);
% 3-High-Low image
furier_function(HL_path,4);
% 4-High-high image
furier_function(LH_path,5);

end

