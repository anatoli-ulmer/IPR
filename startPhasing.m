%% INIT
paths = mypaths;
addpath(paths.xfel.db);
addpath(genpath(fileparts(mfilename('fullpath'))));

load('db_run_info')
load('db_center')
load('db_shape')
load('db_sizing')
% load('db_recon')

%% first doped: 283
% 450 68
% 474 22
% 301 1
pnccdGUI(...
    'run',301, ...
    'hit', 1, ...
    'db_run_info', db_run_info, ...
    'db_sizing', db_sizing, ...    
    'db_center', db_center, ...
    'db_shape', db_shape, ...
    'pnccdpath', 'E:\XFEL2019_He\all_hits_corrected_dark_cm_gain')

% D:\XFEL\He_2019\Data
% E:\XFEL2019_He\all_hits_corrected_dark_cm_gain_bg
% H:\XFEL2019_He\all_hits_corrected_dark_cm_gain_bg




