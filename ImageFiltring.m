% Read the image
img = imread('image_03.png');

% If image is RGB, apply median filter to each channel
if size(img, 3) == 3
    median_filter = zeros(size(img), class(img));
    for channel = 1:3
        median_filter(:,:,channel) = medfilt2(img(:,:,channel), [3 3]);
    end
else
    median_filter = medfilt2(img, [3 3]);
end


% Display images
figure(1);
imshow(img);
title('Original Image');


figure(2);
imshow(median_filter);
title('Median Filtered Image (3x3)');


% Convert the image to LAB color space
labImage = rgb2lab(median_filter);

% Split the LAB channels
L = labImage(:,:,1);  % Luminance channel
A = labImage(:,:,2);  % 'a' channel
B = labImage(:,:,3);  % 'b' channel

% Apply CLAHE to the L channel
L = mat2gray(L); % Normalize L channel to [0,1]
L_enhanced = adapthisteq(L, 'ClipLimit', 0.03, 'NumTiles', [8 8]); % CLAHE

% Combine the enhanced L channel with the original A and B channels
enhancedLabImage = cat(3, L_enhanced * 100, A, B);

% Convert LAB back to RGB color space
enhancedImage = lab2rgb(enhancedLabImage, 'OutputType', 'uint8');

imshow(median_filter);
title('Median Filtered Image (3x3)');

% Save and display the enhanced image
imwrite(enhancedImage, 'enhanced_image.png');

figure(3);
imshow(enhancedImage);
title('The Image Result using histogram equalization');


% Convert the image to LAB color space
labImage2 = rgb2lab(median_filter);

% Split the LAB channels
L2 = labImage2(:,:,1); % Luminance channel
A2 = labImage2(:,:,2); % 'a' channel
B2 = labImage2(:,:,3); % 'b' channel

% Apply Gamma correction to the L channel
% Normalize L channel to [0,1]
L2 = mat2gray(L2);

% Gamma correction 
% Gamma < 1 brightens the image
% Gamma > 1 darkens the image
gamma = 0.5; 
L_enhanced2 = L2.^gamma;

% Combine the enhanced L channel with the original A and B channels
enhancedLabImage2 = cat(3, L_enhanced2 * 100, A2, B2);

% Convert LAB back to RGB color space
enhancedImage2 = lab2rgb(enhancedLabImage2, 'OutputType', 'uint8');

% Save and display the enhanced image
imwrite(enhancedImage2, 'enhanced_image2.png');
figure(4);
imshow(enhancedImage);
title('The Image Result with Gamma method');