function varargout = TugasPCD_3_1301164036_MuhammadAlfisarRAchman(varargin)
%TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN MATLAB code file for TugasPCD_3_1301164036_MuhammadAlfisarRAchman.fig
%      TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN, by itself, creates a new TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN or raises the existing
%      singleton*.
%
%      H = TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN returns the handle to a new TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN or the handle to
%      the existing singleton*.
%
%      TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN('Property','Value',...) creates a new TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to TugasPCD_3_1301164036_MuhammadAlfisarRAchman_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN('CALLBACK') and TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TUGASPCD_3_1301164036_MUHAMMADALFISARRACHMAN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TugasPCD_3_1301164036_MuhammadAlfisarRAchman

% Last Modified by GUIDE v2.5 16-Feb-2019 00:55:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TugasPCD_3_1301164036_MuhammadAlfisarRAchman_OpeningFcn, ...
                   'gui_OutputFcn',  @TugasPCD_3_1301164036_MuhammadAlfisarRAchman_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TugasPCD_3_1301164036_MuhammadAlfisarRAchman is made visible.
function TugasPCD_3_1301164036_MuhammadAlfisarRAchman_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TugasPCD_3_1301164036_MuhammadAlfisarRAchman
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TugasPCD_3_1301164036_MuhammadAlfisarRAchman wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TugasPCD_3_1301164036_MuhammadAlfisarRAchman_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

            [filename, pathname] = uigetfile ({'*.jpg'; '*.png'},'File Select');
            image = strcat(pathname,filename);
            axes(handles.axes1);
            imshow(image);
            
            images = imread(image);
            images1 = double(images);
            handles.image = images;
            handles.image1 = images1;
            guidata(hObject, handles);


% --- Executes on button press in GrayScale.
function GrayScale_Callback(hObject, eventdata, handles)

           img = handles.image;
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
            image = (merah/hasil)*img(:,:,1) + (hijau/hasil)*img(:,:,2) + (biru/hasil)*img(:,:,3);
            axes(handles.axes1);
            imshow(image);


% --- Executes on button press in Kurang.
function Kurang_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    image = img(:,:,:) - 10; % Mengurangi seluruh isi array yang berada di img dengan 10 
    img = uint8(image); % Merubah bentuk double pada array ke bentuk uint8 atau RGB
    axes(handles.axes1); % Mengakses axes
    imshow(img); % menampilkan gambar
    handles.image1 = image; % menyimpan data yang berada di dalam image ke dalam data handles.images1
    guidata(hObject, handles); % menyimpan data handle kedalam gui data



% --- Executes on button press in Tambah.
function Tambah_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    image = img(:,:,:) + 10; % Menambahkan seluruh isi array yang berada di img dengan 10 
    img = uint8(image); % Merubah bentuk double pada array ke bentuk uint8 atau RGB
    axes(handles.axes1); % Mengakses axes
    imshow(img); % menampilkan gambar
    handles.image1 = image; % menyimpan data yang berada di dalam image ke dalam data handles.images1
    guidata(hObject, handles); % menyimpan data handle kedalam gui data


% --- Executes on button press in Kali.
function Kali_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    image = img(:,:,:) * 2; % Mengkalikan seluruh isi array yang berada di img dengan 2 
    img = uint8(image); % Merubah bentuk double pada array ke bentuk uint8 atau RGB
    axes(handles.axes1); % Mengakses axes
    imshow(img); % menampilkan gambar
    handles.image1 = image; % menyimpan data yang berada di dalam image ke dalam data handles.images1
    guidata(hObject, handles); % menyimpan data handle kedalam gui data


% --- Executes on button press in Bagi.
function Bagi_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    image = img(:,:,:) / 2; % Membagi seluruh isi array yang berada di img dengan 2
    img = uint8(image); % Merubah bentuk double pada array ke bentuk uint8 atau RGB
    axes(handles.axes1); % Mengakses axes
    imshow(img); % menampilkan gambar
    handles.image1 = image; % menyimpan data yang berada di dalam image ke dalam data handles.images1
    guidata(hObject, handles); % menyimpan data handle kedalam gui data


% --- Executes on button press in zoomin.
function zoomin_Callback(hObject, eventdata, handles)  

           img = handles.image; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
           [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
           img2 = []; % Menginisialisasikan variable img2           
           temp3 = -1;% Menginisialisasikan variable temp3   
           temp4 = 0;% Menginisialisasikan variable temp4
           
            for i=1:r % Menjelajahi pixel row 1 sampai row ke r
                temp3 = temp3 + 1; % Menambahkan isi dari value temp3 dengan 1
                temp4 = temp4 + 1; % Menambahkan isi dari value temp4 dengan 1
                temp = 0 ;% Mereset nilai temp
                temp2 = 0;% Mereset nilai temp2
                for j=1:c % Menjelajahi pixel colom 1 sampai colom ke c
                    temp2 = temp2 + 1; % Menambahkan isi dari value temp2 dengan 1
                    img2((i+temp3),(j+temp),:) = img(i,j,:); % Memasukan data yang berada di dalam img ke dalam img2
                    img2((i+temp3),(j+temp2),:) = img(i,j,:); % Memasukan data yang berada di dalam img ke dalam img2
                    img2((i+temp4),(j+temp),:) = img(i,j,:); % Memasukan data yang berada di dalam img ke dalam img2
                    img2((i+temp4),(j+temp2),:) = img(i,j,:); % Memasukan data yang berada di dalam img ke dalam img2
                    temp = temp + 1; % Menambahkan isi dari value temp dengan 1
                end
            end
             
            disp(size(img)); % Menampilkan ukuran dari img
            disp(size(img2));% Menampilkan ukuran dari img2
            figure,imshow(img);% Menampilkan image img
            figure,imshow(uint8(img2));% Menampilkan image img2
    


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
