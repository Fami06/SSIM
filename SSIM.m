%２枚のDICOM画像を読み込んでSSIMを測定する。

%DICOM画像の読み取り
img1 = dicomread("DWI1.DCM");
img2 = dicomread("DWI2.DCM");

%2枚の画像のSSIMを求める
[ssimval, ssimmap] = ssim(img1, img2);

%SSIMmapと全体のSSIM値を表示
imagesc(ssimmap);
title("Local SSIM Map with Global SSIM Value: "+num2str(ssimval));
colormap("gray");
axis image;