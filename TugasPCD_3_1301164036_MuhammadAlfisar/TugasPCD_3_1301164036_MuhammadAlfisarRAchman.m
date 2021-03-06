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

% Last Modified by GUIDE v2.5 18-Feb-2019 13:33:37

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

           img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
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
            figure,imshow(uint8(img));% Menampilkan image img
            figure,imshow(uint8(img2));% Menampilkan image img2
    


% --- Executes on button press in Perkecil.
function Perkecil_Callback(hObject, eventdata, handles)

           img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
           [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
           img2 = []; % Menginisialisasikan variable img2           
           temp1 = 0; % Menginisialisasikan variable img2  
           i=1; % Menginisialisasikan variable img2 
            while (i<=r) % Menjelajahi pixel row 1 sampai row ke r
                temp1 = temp1 + 1; % Melakukan penambahan sebesar 1 kepada temp1
                temp2 = 0; % Mereset nilai dari temp2
                j=1; % Mereset nilai j
                while (j<=c) % Menjelajahi pixel colom 1 sampai colom ke c
                     temp2 = temp2 + 1; % Melakukan penambahan sebesar 1 kepada temp2
                     temp = img(i,j,:) + img((i+1),j,:) + img(i,(j+1),:) + img((i+1),(j+1),:); % Melakukan penambahan dari setiap pixel sebanyak 4 pixel dan di taruh ke dalam temp
                     temp = temp / 4; % Melakukan pembagian terhadap nilai temp
                     img2(temp1,temp2,:) = temp; % Melakukan pengisian data ke dalam img2 dengan nilai temp
                     temp = 0; % Mereset nilai temp
                     j = j+2; % Melakukan penambahan sebesar 2 kepada j
                end
                i = i+2; % Melakukan penambahan sebesar 2 kepada i
            end             
            disp(size(img)); % Menampilkan ukuran dari img
            disp(size(img2));% Menampilkan ukuran dari img2
            figure,imshow(uint8(img)); % Menampilkan image img
            figure,imshow(uint8(img2));% Menampilkan image img2


% --- Executes on button press in Crop.
function Crop_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    x1 = str2double(get(handles.X1, 'string')); % Mendapatkan Nilai dari edit text X1
    x2 = str2double(get(handles.X2, 'string')); % Mendapatkan Nilai dari edit text X2
    y1 = str2double(get(handles.Y1, 'string')); % Mendapatkan Nilai dari edit text Y1
    y2 = str2double(get(handles.Y2, 'string')); % Mendapatkan Nilai dari edit text Y2
    img2 = []; % Menginisialisasikan variable img2   
    temp = 0; % Menginisialisasikan variable img2   
    for i=x1 : x2 % Melakukan penjelajahan dari pixel X1 sampai X2
        temp = temp+1; % Melakukan penambahan sebesar 1 kepada temp1
        temp2 = 1 % Mereset nilai temp2
        for j=y1 : y2 % Melakukan penjelajahan dari pixel Y1 sampai Y2
            img2(temp,temp2,:) = img(i,j,:); % Melakuakn pengisian data ke dalam img2 dengan nilai img
            temp2 = temp2 + 1; % Melakukan penambahan sebesar 1 kepada temp2
        end
    end
    
    figure,imshow(uint8(img2));% Menampilkan image img2
    



function X2_Callback(hObject, eventdata, handles)
% hObject    handle to X2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X2 as text
%        str2double(get(hObject,'String')) returns contents of X2 as a double


% --- Executes during object creation, after setting all properties.
function X2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y2_Callback(hObject, eventdata, handles)
% hObject    handle to Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y2 as text
%        str2double(get(hObject,'String')) returns contents of Y2 as a double


% --- Executes during object creation, after setting all properties.
function Y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Callback(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1 as text
%        str2double(get(hObject,'String')) returns contents of Y1 as a double


% --- Executes during object creation, after setting all properties.
function Y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X1_Callback(hObject, eventdata, handles)
% hObject    handle to X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1 as text
%        str2double(get(hObject,'String')) returns contents of X1 as a double


% --- Executes during object creation, after setting all properties.
function X1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
