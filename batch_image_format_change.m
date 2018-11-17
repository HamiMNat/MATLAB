%% Batch Image Format Change
clear
clc

src_dir = 'E:/temp/AD/'; % source directory
scr_format = 'gif'; % source format
dst_dir = 'E:/temp/AD/';% destination directory
dst_format = 'png'; % destination format

src_list = dir([src_dir,'*.',scr_format]);
%strrep()
for i = 1:length(src_list)
    img = imread([src_dir src_list(i).name]);
    imwrite(img,[dst_dir,src_list(i).name(1:end-3),dst_format])
    %delete([src_dir src_list(i).name]); % uncomment to delete the source files
end
