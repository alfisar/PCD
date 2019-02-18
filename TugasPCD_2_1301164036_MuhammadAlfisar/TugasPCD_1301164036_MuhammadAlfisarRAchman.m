function varargout = TugasPCD_1301164036_MuhammadAlfisarRAchman(varargin)
%TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN MATLAB code file for TugasPCD_1301164036_MuhammadAlfisarRAchman.fig
%      TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN, by itself, creates a new TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN or raises the existing
%      singleton*.
%
%      H = TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN returns the handle to a new TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN or the handle to
%      the existing singleton*.
%
%      TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN('Property','Value',...) creates a new TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to TugasPCD_1301164036_MuhammadAlfisarRAchman_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN('CALLBACK') and TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TUGASPCD_1301164036_MUHAMMADALFISARRACHMAN.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TugasPCD_1301164036_MuhammadAlfisarRAchman

% Last Modified by GUIDE v2.5 12-Feb-2019 19:43:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TugasPCD_1301164036_MuhammadAlfisarRAchman_OpeningFcn, ...
                   'gui_OutputFcn',  @TugasPCD_1301164036_MuhammadAlfisarRAchman_OutputFcn, ...
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


% --- Executes just before TugasPCD_1301164036_MuhammadAlfisarRAchman is made visible.
function TugasPCD_1301164036_MuhammadAlfisarRAchman_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TugasPCD_1301164036_MuhammadAlfisarRAchman
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TugasPCD_1301164036_MuhammadAlfisarRAchman wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TugasPCD_1301164036_MuhammadAlfisarRAchman_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
            [filename, pathname] = uigetfile ({'*.jpg'; '*.png'},'File Select');
            image = strcat(pathname,filename);
            axes(handles.axes1);
            imshow(image);
            
            images = imread(image);
            handles.image = images;
            guidata(hObject, handles);


% --- Executes on button press in GrayScale.
function GrayScale_Callback(hObject, eventdata, handles)
% hObject    handle to GrayScale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
% hObject    handle to Kurang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Tambah.
function Tambah_Callback(hObject, eventdata, handles)
% hObject    handle to Tambah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
