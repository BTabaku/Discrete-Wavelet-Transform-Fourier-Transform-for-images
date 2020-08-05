clc, clear all, close all

fprintf('Cen Master, Epoka Univesity, Computer Engenieering\n===Discrete Wavelet Transform===\n');
% DWT Part
% NOTE: The script images should run one by one, uncomment, run , comment,
% go to next and so on.
% Creating the folders according to the root

% ======== Iris Part - 10 images ========
% creating root folder for the output
if ~exist('output_images\iris_output', 'dir')
   mkdir('output_images\iris_output')
end

% DWT_function('output_images\iris_output','images\iris\','image1_eye_iris','.jpg');%1
% DWT_function('output_images\iris_output','images\iris\','image2_eye_iris','.jpg');%2
% DWT_function('output_images\iris_output','images\iris\','image3_eye_iris','.jpg');%3
% DWT_function('output_images\iris_output','images\iris\','image4_eye_iris','.jpg');%4
% DWT_function('output_images\iris_output','images\iris\','image5_eye_iris','.jpg');%5
% DWT_function('output_images\iris_output','images\iris\','image6_eye_iris','.jpg');%6
% DWT_function('output_images\iris_output','images\iris\','image7_eye_iris','.jpg');%7
% DWT_function('output_images\iris_output','images\iris\','image8_eye_iris','.jpg');%8
% DWT_function('output_images\iris_output','images\iris\','image9_eye_iris','.jpg');%9
% DWT_function('output_images\iris_output','images\iris\','image10_eye_iris','.jpg');%10

% ======== Finger Print Part - 10 images ========
% creating root folder for the output

if ~exist('output_images\finger_print_output', 'dir')
   mkdir('output_images\finger_print_output')
end
% 
% DWT_function('output_images\finger_print_output','images\finger_print\','image1_finger_print','.jpg');%1
% DWT_function('output_images\finger_print_output','images\finger_print\','image2_finger_print','.jpg');%2
% DWT_function('output_images\finger_print_output','images\finger_print\','image3_finger_print','.jpg');%3
% DWT_function('output_images\finger_print_output','images\finger_print\','image4_finger_print','.jpg');%4
% DWT_function('output_images\finger_print_output','images\finger_print\','image5_finger_print','.jpg');%5
% DWT_function('output_images\finger_print_output','images\finger_print\','image6_finger_print','.jpg');%6
% DWT_function('output_images\finger_print_output','images\finger_print\','image7_finger_print','.jpg');%7
% DWT_function('output_images\finger_print_output','images\finger_print\','image8_finger_print','.jpg');%8
% DWT_function('output_images\finger_print_output','images\finger_print\','image9_finger_print','.jpg');%9
% DWT_function('output_images\finger_print_output','images\finger_print\','image10_finger_print','.jpg');%10



% ======== Finger Vain Part - 10 images ========
if ~exist('output_images\finger_vein_output', 'dir')
   mkdir('output_images\finger_vein_output')
end
% 
DWT_function('output_images\finger_vein_output','images\finger_vein\','image1_finger_vein','.jpg');%1
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image2_finger_vein','.jpg');%2
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image3_finger_vein','.jpg');%3
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image4_finger_vein','.jpg');%4
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image5_finger_vein','.jpg');%5
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image6_finger_vein','.jpg');%6
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image7_finger_vein','.jpg');%7
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image8_finger_vein','.jpg');%8
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image9_finger_vein','.jpg');%9
% DWT_function('output_images\finger_vein_output','images\finger_vein\','image10_finger_vein','.jpg');%10


