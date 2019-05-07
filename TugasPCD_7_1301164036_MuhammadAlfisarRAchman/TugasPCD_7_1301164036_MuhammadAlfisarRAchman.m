function varargout = TugasPCD_7_1301164036_MuhammadAlfisarRAchman(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TugasPCD_7_1301164036_MuhammadAlfisarRAchman_OpeningFcn, ...
                   'gui_OutputFcn',  @TugasPCD_7_1301164036_MuhammadAlfisarRAchman_OutputFcn, ...
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


% --- Executes just before TugasPCD_7_1301164036_MuhammadAlfisarRAchman is made visible.
function TugasPCD_7_1301164036_MuhammadAlfisarRAchman_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TugasPCD_7_1301164036_MuhammadAlfisarRAchman
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TugasPCD_7_1301164036_MuhammadAlfisarRAchman wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TugasPCD_7_1301164036_MuhammadAlfisarRAchman_OutputFcn(hObject, eventdata, handles)
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

% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
          img = handles.image;
          axes(handles.axes1);
          imshow(img);
          images1 = double(img);
          handles.image1 = images1;
          guidata(hObject, handles);

            
% --- Executes on button press in GrayScale.
function GrayScale_Callback(hObject, eventdata, handles)

           img = handles.image1;
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
            imshow(uint8(image));
            images1 = double(image);
            handles.image1 = images1;
            guidata(hObject, handles);


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
            handles.image1 = img2;
            guidata(hObject, handles);
            
    
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
            handles.image1 = img2;
            guidata(hObject, handles);


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
    
    % --- Executes on button press in Histogram.
function Histogram_Callback(hObject, eventdata, handles)
      img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
      [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
      red = []; % Mendeklarasikan variable red dengan array kosong
      green = []; % Mendeklarasikan variable green dengan array kosong
      blue = []; % Mendeklarasikan variable blue dengan array kosong
      temp = []; % Mendeklarasikan variable temp dengan array kosong
      
      m = 0; % Mendeklarasikan variable m dengan nilai 0
      h = 0; % Mendeklarasikan variable h dengan nilai 0
      b = 0; % Mendeklarasikan variable b dengan nilai 0
      
      if colormap ~= 1 % Pengecekan apakah gambar greyscale atau tidak
          
        for i=0 : 255 % Berjalan dari 0 sampai 255
            for j=1:r % Menjelajahi semua pixel di r
                for k=1:c % Menjelajahi semua pixel di c
                    if i == img(j,k,1) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,1) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1  
                    end
                    if i == img(j,k,2) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,2) saat ini
                        h = h + 1; % Menambahkan nilai h dengan 1  
                    end
                    if i == img(j,k,3) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,3) saat ini
                        b = b + 1; % Menambahkan nilai b dengan 1       
                    end
                end
            end
            
            red(i+1) = m; % Mengisi nilai red indeks i+1 dengan nilai m saat ini
            green(i+1) = h; % Mengisi nilai green indeks i+1 dengan nilai h saat ini
            blue(i+1) = b; % Mengisi nilai blue indeks i+1 dengan nilai b saat ini
            temp(i+1) = i; % Mengisi nilai temp indeks i+1 dengan nilai i saat ini
            m = 0; % Mereset nilai varible m
            h = 0; % Mereset nilai varible h
            b = 0; % Mereset nilai varible b
            
        end
        figure,bar(temp,red,'FaceColor','red');
        ylim([0,15000]) % Membatasi y hingga 15000 
        title('RED'); %Memberikan title pada figure
        figure,bar(temp,green,'FaceColor','green');
        ylim([0,15000]) % Membatasi y hingga 15000 
        title('GREEN'); %Memberikan title pada figure
        figure,bar(temp,blue);
        ylim([0,15000]) % Membatasi y hingga 15000 
        title('BLUE'); %Memberikan title pada figure
        
      else
         for i=0 : 255 % Berjalan dari 0 sampai 255
            for j=1:r % Menjelajahi semua pixel di r
                for k=1:c % Menjelajahi semua pixel di c
                    if i == img(j,k) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,1) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1  
                    end 
               end
           end
           red(i+1) = m; % Mengisi nilai red indeks i + 1 dengan nilai m
           temp(i+1) = i; % Mengisi nilai temp indeks i + 1 dengan nilai i
           m = 0; % Mereset nilai variable m
        end
        figure,bar(temp,red,'FaceColor','black');
        ylim([0,15000])  % Membatasi y hingga 15000 
        title('Histogram'); %Memberikan title pada figure
        
      end
      
% --- Executes on button press in Histeq.
function Histeq_Callback(hObject, eventdata, handles)
      img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
      figure,imshow(uint8(img)); % Menampilkan gambar kedalam figure
      
      [row, cow, colormap] = size(img);% Mengisi nilai row,cow,dan colormap dengan size yang ada di dalam img
      
      red = []; % Mendeklarasikan variable red dengan array kosong
      green = []; % Mendeklarasikan variable green dengan array kosong
      blue = []; % Mendeklarasikan variable blue dengan array kosong
      temp = []; % Mendeklarasikan variable temp dengan array kosong
      bb = []; % Mendeklarasikan variable bb dengan array kosong
      ba = []; % Mendeklarasikan variable ba dengan array kosong
      
      m = 0; % Mendeklarasikan variable m dengan nilai 0
      h = 0; % Mendeklarasikan variable h dengan nilai 0
      b = 0; % Mendeklarasikan variable b dengan nilai 0
      bb2 = 0; % Mendeklarasikan variable bb2 dengan nilai 0 yang bergungsi sebagai batas bawah 2
      ba2 = 255; % Mendeklarasikan variable ba2 dengan nilai 0 yang bergungsi sebagai batas atas 2
      if colormap ~= 1 % Pengecekan apakah gambar greyscale atau tidak
          
        for i=0 : 255 % Berjalan dari 0 sampai 255
            for j=1:row % Menjelajahi semua pixel di row
                for k=1:cow % Menjelajahi semua pixel di cow
                    if i == img(j,k,1) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,1) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1
                    end
                    if i == img(j,k,2) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,2) saat ini
                        h = h + 1; % Menambahkan nilai h dengan 1
                    end
                    if i == img(j,k,3) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,3) saat ini
                        b = b + 1;  % Menambahkan nilai b dengan 1  
                    end
                end
            end
            
            red(i+1) = m; % Mengisi nilai red indeks i+1 dengan nilai m saat ini
            green(i+1) = h;  % Mengisi nilai green indeks i+1 dengan nilai h saat ini
            blue(i+1) = b;  % Mengisi nilai blue indeks i+1 dengan nilai b saat ini
            temp(i+1) = i;  % Mengisi nilai temp indeks i+1 dengan nilai i saat ini
            m = 0; % Mereset nilai varible m
            h = 0; % Mereset nilai varible h
            b = 0; % Mereset nilai varible b
            
        end
        
         
        r = sum(red); % Mengisi nilai r dengan jumlah semua nilai yang ada di red
        g = sum(green); % Mengisi nilai g dengan jumlah semua nilai yang ada di green
        b = sum(blue); % Mengisi nilai b dengan jumlah semua nilai yang ada di blue
        
        cek = false; % Mendeklarasikan nilai cek dengan false
        cr = false;  % Mendeklarasikan nilai cr dengan false
        cg = false;  % Mendeklarasikan nilai cg dengan false
        cb = false;  % Mendeklarasikan nilai cb dengan false
        
        i = 0; % Mereset nilai i
        while (i <= 256) && (cek ~= true) % Perulangan untuk mencari nilai batas bawah 1
            i= i + 1; % Menambahkan nilai i dengan 1
            
            if (cr ~= true) % Pengecekan apakah variable cr tidak samadengan true 
                mr = red(i); % Mengisi nilai mr dengan nilai di red indeks ke i
                mr = (mr/r)*100; % Mengisi nilai mr dengan nilai mr dibagi dengan r setelah itu di kali 100
                if(mr >= 0.2) % Pengecekan apakah mr lebih besar dari 0.2
                    cr = true; % Mengisi nilai cr dengan true
                    ir = i; %Mengisi nilai ir dengan i
                end
            end
            
            if (cg ~= true)  % Pengecekan apakah variable cg tidak samadengan true 
                mg = green(i); % Mengisi nilai mg dengan nilai di green indeks ke i
                mg = (mg/g)*100;  % Mengisi nilai mg dengan nilai mg dibagi dengan g setelah itu di kali 100
                if(mg >= 0.2) % Pengecekan apakah mg lebih besar dari 0.2
                    cg = true; % Mengisi nilai cg dengan true
                    ig = i; %Mengisi nilai ig dengan i
                end
            end
            
            if (cb ~= true) % Pengecekan apakah variable cb tidak samadengan true 
                mb = blue(i); % Mengisi nilai mb dengan nilai di blue indeks ke i
                mb = (mb/b)*100; % Mengisi nilai mb dengan nilai mb dibagi dengan b setelah itu di kali 100
                if(mb >= 0.2) % Pengecekan apakah mb lebih besar dari 0.2
                    cb = true; % Mengisi nilai cb dengan true
                    ib = i; %Mengisi nilai ib dengan i
                end
            end
            
            if(cg == true)&&(cr==true)&&(cb==true) % Pengecekan apakah cg,cr,dan cb bernilai true
                cek = true; % Mengisi nilai cek dengan true
            end
        end
        
        bb(1) = temp(ir); % Mengisi nilai bb indeks 1 dengan nilai pada temp indeks ir
        bb(2) = temp(ig); % Mengisi nilai bb indeks 2 dengan nilai pada temp indeks ig
        bb(3) = temp(ib); % Mengisi nilai bb indeks 3 dengan nilai pada temp indeks ib
        
        cek = false; % Mereset nilai cek
        cr = false; % Mereset nilai cr
        cg = false; % Mereset nilai cg
        cb = false; % Mereset nilai cb
        
        i = 256; % Mereset nilai i dengan nilai 256
        while (i >= 0) && (cek ~= true) % Perulangan untuk mencari nilai batas atas 1
            i= i - 1; % Menambahkan nilai i dengan 1
            
            if (cr ~= true) % Pengecekan apakah variable cr tidak samadengan true 
                mr = red(i); % Mengisi nilai mr dengan nilai di red indeks ke i
                mr = (mr/r)*100; % Mengisi nilai mr dengan nilai mr dibagi dengan r setelah itu di kali 100
                if(mr >= 0.2) % Pengecekan apakah mr lebih besar dari 0.2
                    cr = true; % Mengisi nilai cr dengan true
                    ir = i; %Mengisi nilai ir dengan i
                end
            end
            
            if (cg ~= true) % Pengecekan apakah variable cg tidak samadengan true 
                mg = green(i); % Mengisi nilai mg dengan nilai di green indeks ke i
                mg = (mg/g)*100; % Mengisi nilai mg dengan nilai mg dibagi dengan g setelah itu di kali 100
                if(mg >= 0.2) % Pengecekan apakah mg lebih besar dari 0.2
                    cg = true; % Mengisi nilai cg dengan true
                    ig = i; %Mengisi nilai ig dengan i
                end
            end
            
            if (cb ~= true) % Pengecekan apakah variable cb tidak samadengan true 
                mb = blue(i); % Mengisi nilai mb dengan nilai di blue indeks ke i
                mb = (mb/b)*100; % Mengisi nilai mb dengan nilai mb dibagi dengan b setelah itu di kali 100
                if(mb >= 0.2) % Pengecekan apakah mb lebih besar dari 0.2
                    cb = true; % Mengisi nilai cb dengan true
                    ib = i; %Mengisi nilai ib dengan i
                end
            end
            if(cg == true)&&(cr==true)&&(cb==true)% Pengecekan apakah cg,cr,dan cb bernilai true
                cek = true; % Mengisi nilai cek dengan true
            end
        end
        
        ba(1) = temp(ir); % Mengisi nilai bb indeks 1 dengan nilai pada temp indeks ir
        ba(2) = temp(ig); % Mengisi nilai bb indeks 2 dengan nilai pada temp indeks ig
        ba(3) = temp(ib); % Mengisi nilai bb indeks 3 dengan nilai pada temp indeks ib
     
        
        for j=1:row % Menjelahi semua pixel yang berada sampai row
              for k=1:cow % Menjelahi semua pixel yang berada di cow
                  img(j,k,1) = uint8(round(bb2 + ((img(j,k,1) - bb2) * ((ba2-bb2)/(ba(1)-bb(1)))))); % Mengisi nili img(j,k,1) dengan rumus perbandingan untuk histogram equalization
                  img(j,k,2) = uint8(round(bb2 + ((img(j,k,2) - bb2) * ((ba2-bb2)/(ba(2)-bb(2)))))); % Mengisi nili img(j,k,2) dengan rumus perbandingan untuk histogram equalization
                  img(j,k,3) = uint8(round(bb2 + ((img(j,k,3) - bb2) * ((ba2-bb2)/(ba(3)-bb(3)))))); % Mengisi nili img(j,k,3) dengan rumus perbandingan untuk histogram equalization
              end
        end 

        for i=0 : 255 % Berjalan dari 0 sampai 255
            for j=1:row % Menjelajahi semua pixel di row
                for k=1:cow % Menjelajahi semua pixel di cow
                    if i == img(j,k,1) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,1) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1
                    end
                    if i == img(j,k,2) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,2) saat ini
                        h = h + 1; % Menambahkan nilai h dengan 1
                    end
                    if i == img(j,k,3) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,3) saat ini
                        b = b + 1;  % Menambahkan nilai b dengan 1  
                    end
                end
            end
            
            red(i+1) = m; % Mengisi nilai red indeks i+1 dengan nilai m saat ini
            green(i+1) = h;  % Mengisi nilai green indeks i+1 dengan nilai h saat ini
            blue(i+1) = b;  % Mengisi nilai blue indeks i+1 dengan nilai b saat ini
            temp(i+1) = i;  % Mengisi nilai temp indeks i+1 dengan nilai i saat ini
            m = 0; % Mereset nilai varible m
            h = 0; % Mereset nilai varible h
            b = 0; % Mereset nilai varible b
            
        end
          
        figure,bar(temp,red,'FaceColor','red');
        ylim([0,15000])
        title('RED Histeq');
        figure,bar(temp,green,'FaceColor','green');
        ylim([0,15000])
        title('GREEN Histeq');
        figure,bar(temp,blue);
        ylim([0,15000])
        title('BLUE Histeq');
        
      else
        for i=0 : 255 % Berjalan dari 0 sampai 255
           for j=1:row % Menjelajahi semua pixel di row
               for k=1:cow % Menjelajahi semua pixel di cow
                    if i == img(j,k) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1
                    end      
               end
           end
           
           red(i+1) = m;  % Mereset nilai varible m
           temp(i+1) = i; % Mengisi nilai temp indeks i+1 dengan nilai i saat ini
           m = 0; % Mereset nilai varible m
           
        end
        
        r = sum(red); % Mengisi nilai r dengan jumlah semua nilai yang ada di red
      
        cr = false; % Mendeklarasikan nilai cr dengan false
        
        i = 0; % Mereset nilai i
        while (i <= 256) && (cr ~= true) % Perulangan untuk mencari nilai batas bawah 1
            i= i + 1; % Menambahkan nilai i dengan 1
            if (cr ~= true) % Pengecekan apakah variable cr tidak samadengan true 
                mr = red(i); % Mengisi nilai mr dengan nilai di red indeks ke i
                mr = (mr/r)*100; % Mengisi nilai mr dengan nilai mr dibagi dengan r setelah itu di kali 100
                if(mr >= 0.2) % Pengecekan apakah mr lebih besar dari 0.2
                    cr = true; % Mengisi nilai cr dengan true
                    ir = i; % Mengisi nilai ir dengan i
                end
            end
        end
        bb1 = temp(ir); % Mengisi nilai bb1 dengan temp(ir)
        
        cr = false; %Mereset nilai cr dengan false
        
        i = 256; % Mereset nilai i dengan 256
        while (i >= 0) && (cr ~= true)
            i= i - 1; % Mengurangi nilai i dengan 1
            if (cr ~= true)  % Pengecekan apakah variable cr tidak samadengan true 
                mr = red(i);  % Mengisi nilai mr dengan nilai di red indeks ke i
                mr = (mr/r)*100; % Mengisi nilai mr dengan nilai mr dibagi dengan r setelah itu di kali 100
                if(mr >= 0.2) % Pengecekan apakah mr lebih besar dari 0.2
                    cr = true; % Mengisi nilai cr dengan true
                    ir = i; % Mengisi nilai ir dengan i
                end
            end
        end % Perulangan untuk mencari nilai batas atas 1
        ba1 = temp(ir); % Mengisi nilai bb1 dengan temp(ir)
        
        for j=1:row % Menjelahi semua pixel yang berada sampai row
              for k=1:cow % Menjelahi semua pixel yang berada di cow
                  img(j,k) = uint8(round(bb2 + ((img(j,k) - bb2) * ((ba2-bb2)/(ba1-bb2))))); % Mengisi nili img(j,k) dengan rumus perbandingan untuk histogram equalization
              end
        end 

        for i=0 : 255 % Berjalan dari 0 sampai 255
            for j=1:row % Menjelajahi semua pixel di row
                for k=1:cow % Menjelajahi semua pixel di cow
                    if i == img(j,k) % Perbandingan apakah nilai i saat ini sama dengan nilai img(j,k,1) saat ini
                        m = m + 1; % Menambahkan nilai m dengan 1
                    end
                end
            end
            
            red(i+1) = m; % Mengisi nilai red indeks i+1 dengan nilai m saat ini
            temp(i+1) = i; % Mengisi nilai temp indeks i+1 dengan nilai m saat ini
            m = 0; % Mereset nilai m dengan 0
        end
        figure,bar(temp,red,'FaceColor','black');
        ylim([0,15000]);
        title('Histeq');
      end
      
      figure,imshow(uint8(img));

function X2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function X2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function Y2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function Y1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function X1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in Edge.
function Edge_Callback(hObject, eventdata, handles)
 img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
    img2 = []; % Menginisialisasikan variable img2 
    temp(1,1) = -1; % Menginisialisasikan variable temp
    temp(1,2) = -1; % Menginisialisasikan variable temp
    temp(1,3) = -1; % Menginisialisasikan variable temp
    temp(2,1) = -1; % Menginisialisasikan variable temp
    temp(2,2) = 8; % Menginisialisasikan variable temp
    temp(2,3) = -1; % Menginisialisasikan variable temp
    temp(3,1) = -1; % Menginisialisasikan variable temp
    temp(3,2) = -1; % Menginisialisasikan variable temp
    temp(3,3) = -1; % Menginisialisasikan variable temp
    disp(temp);
    for i=1 : r %Menjelajahi pixel row
        for j=1 : c % Menjelajahi pixel colom
           
            if(i==1)&&(j==1) % Mengecheck apakah i sama dengan 1 dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==1)&&(j==c) % Mengecheck apakah i sama dengan 1 dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==1)  % Mengecheck apakah i sama dengan r dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==c)  % Mengecheck apakah i sama dengan r dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
           
            elseif(i==1) % Mengecheck apakah i sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r) % Mengecheck apakah i sama dengan r
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==1) % Mengecheck apakah j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==c) % Mengecheck apakah j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            else
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3)); % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            end
        end
    end
    figure,imshow(uint8(img));
    figure,imshow(uint8(img2));
    axes(handles.axes1);
    imshow(uint8(img2));
    handles.image1 = img2;
    guidata(hObject, handles);



% --- Executes on button press in Blur.
function Blur_Callback(hObject, eventdata, handles)
    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
    img2 = []; % Menginisialisasikan variable img2 
    temp(1,1) = 0.0625; % Menginisialisasikan variable temp
    temp(1,2) = 0.125; % Menginisialisasikan variable temp
    temp(1,3) = 0.0625; % Menginisialisasikan variable temp
    temp(2,1) = 0.125; % Menginisialisasikan variable temp
    temp(2,2) = 0.25; % Menginisialisasikan variable temp
    temp(2,3) = 0.125; % Menginisialisasikan variable temp
    temp(3,1) = 0.0625; % Menginisialisasikan variable temp
    temp(3,2) = 0.125; % Menginisialisasikan variable temp
    temp(3,3) = 0.0625; % Menginisialisasikan variable temp
    disp(temp);
    for i=1 : r %Menjelajahi pixel row
        for j=1 : c % Menjelajahi pixel colom
           
            if(i==1)&&(j==1) % Mengecheck apakah i sama dengan 1 dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==1)&&(j==c) % Mengecheck apakah i sama dengan 1 dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==1)  % Mengecheck apakah i sama dengan r dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==c)  % Mengecheck apakah i sama dengan r dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
           
            elseif(i==1) % Mengecheck apakah i sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r) % Mengecheck apakah i sama dengan r
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==1) % Mengecheck apakah j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==c) % Mengecheck apakah j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            else
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3)); % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            end
        end
    end
    figure,imshow(uint8(img));
    figure,imshow(uint8(img2));
    axes(handles.axes1);
    imshow(uint8(img2));
    handles.image1 = img2;
    guidata(hObject, handles);

% --- Executes on button press in Sharp.
function Sharp_Callback(hObject, eventdata, handles)
  img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
    img2 = []; % Menginisialisasikan variable img2 
    temp(1,1) = 0; % Menginisialisasikan variable temp
    temp(1,2) = -1; % Menginisialisasikan variable temp
    temp(1,3) = 0; % Menginisialisasikan variable temp
    temp(2,1) = -1; % Menginisialisasikan variable temp
    temp(2,2) = 5; % Menginisialisasikan variable temp
    temp(2,3) = -1; % Menginisialisasikan variable temp
    temp(3,1) = 0; % Menginisialisasikan variable temp
    temp(3,2) = -1; % Menginisialisasikan variable temp
    temp(3,3) = 0; % Menginisialisasikan variable temp
    disp(temp);
    for i=1 : r %Menjelajahi pixel row
        for j=1 : c % Menjelajahi pixel colom
           
            if(i==1)&&(j==1) % Mengecheck apakah i sama dengan 1 dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==1)&&(j==c) % Mengecheck apakah i sama dengan 1 dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==1)  % Mengecheck apakah i sama dengan r dan j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(i==r)&&(j==c)  % Mengecheck apakah i sama dengan r dan j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
           
            elseif(i==1) % Mengecheck apakah i sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
               
            elseif(i==r) % Mengecheck apakah i sama dengan r
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==1) % Mengecheck apakah j sama dengan 1
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j+1,:)*temp(3,3));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            elseif(j==c) % Mengecheck apakah j sama dengan c
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1));  % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            
            else
               img2(i,j,:) = (img(i,j,:)*temp(2,2))+(img(i,j-1,:)*temp(2,1))+(img(i,j+1,:)*temp(2,3))+(img(i-1,j,:)*temp(1,2))+(img(i-1,j-1,:)*temp(1,1))+(img(i-1,j+1,:)*temp(1,3))+(img(i+1,j,:)*temp(3,2))+(img(i+1,j-1,:)*temp(3,1))+(img(i+1,j+1,:)*temp(3,3)); % Mengkalikan isi matriks blur dengan matriks img dan di simpan ke img2  
            end
        end
    end
    figure,imshow(uint8(img));
    figure,imshow(uint8(img2));
    axes(handles.axes1); 
    imshow(uint8(img2)); 
    handles.image1 = img2;
    guidata(hObject, handles);



function R_Callback(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function R_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Blue_Callback(hObject, eventdata, handles)
% hObject    handle to Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function Blue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function merah_Callback(hObject, eventdata, handles)
% hObject    handle to merah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function merah_CreateFcn(hObject, eventdata, handles)
% hObject    handle to merah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Thbutton_Callback(hObject, eventdata, handles)

    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    m = str2double(get(handles.merah, 'string')); % Mendapatkan Nilai dari edit text merah
    h = str2double(get(handles.G, 'string')); % Mendapatkan Nilai dari edit text G
    b = str2double(get(handles.Blue, 'string')); % Mendapatkan Nilai dari edit text Blue
    [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
    
    x = []; % Menginisialisasikan variable x
    k = 1; % Menginisialisasikan variable k
    
    for i=1 : r %Menjelajahi pixel row
        for j=1 : c % Menjelajahi pixel colom
            tempm = false; % Mengisi tempm dengan false
            temph = false; % Mengisi temph dengan false
            tempb = false; % Mengisi tempb dengan false
            if (img(i,j,1) >= m) % Mengecek apakah img(i,j,1) lebih besar sama dengan nilai m
                tempm = true; % Mengisi tempm dengan true
            end
            if (img(i,j,2) >= h) % Mengecek apakah img(i,j,2) lebih besar sama dengan nilai h
                temph = true; % Mengisi temph dengan true
            end
            if (img(i,j,3) >= b) % Mengecek apakah img(i,j,2) lebih besar sama dengan nilai b
                tempb = true; % Mengisi tempb dengan true
            end
            if (tempm == true) && (temph == true) && (tempb == true) % Mengecek apakah nilai varible tempm, temph, tempb bernilai true
                x(k,1) = i; % Mengisi nilai x indeks k,1 dengan i
                x(k,2) = j; % Mengisi nilai x indeks k,2 dengan j
                k = k+1;
            end
        end
    end
    
    [a,b] = size(x); % Mengisi nilai a dan b dengan size dari x
    
    for e = 1 : a
        for i=1 : r %Menjelajahi pixel row
             for j=1 : c % Menjelajahi pixel colom
                 if (x(e,1) == i) && (x(e,2) == j) % Mengecek apakah tempx indeks k sama dengan i dan nilai tempy indeks ke l samadengan j 
                     img(i,j,:) = 0; %Menandakan pixel yang di pilih
                 end 

             end
        end
    end
    figure,imshow(uint8(img));


function x1growth_Callback(hObject, eventdata, handles)



function x1growth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1growth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2rgrowth_Callback(hObject, eventdata, handles)
% hObject    handle to x2rgrowth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function x2rgrowth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1growth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function x = recursive(img,i,j,t,x,n,r,c,atas,kanan,bawah,kiri,ii,jj);

         if (i ~= 1) && (atas ~= true) % Mengecek apakah i sama dengan 1 dan variable atas bernilai true

            am = abs(img(ii,jj,1) - img(i-1,j,1)); % Mengisi nilai variable am dengan hasil absolut dari pengurangan
            ah = abs(img(ii,jj,2) - img(i-1,j,2)); % Mengisi nilai variable ah dengan hasil absolut dari pengurangan
            ab = abs(img(ii,jj,3) - img(i-1,j,3)); % Mengisi nilai variable ab dengan hasil absolut dari pengurangan

            if (am <= t) && (ah <= t) && (ab <= t ) % Mengecek apakah nilai dari varible am, ah, dan ab lebih kecil dari nilai variable t
                x = recursive(img,i-1,j,t,x,n+1,r,c,atas,kanan,bawah,kiri,ii,jj); % Melakukan recursive
                x(n,1) = i; % Mengisi varible x dengan nilai i
                x(n,2) = j; % Mengisi varible x dengan nilai j
                kanan = true; % Mengeset variable kanan menjadi true
                bawah = true; % Mengeset variable bawah menjadi true
                kiri = true; % Mengeset variable kiri menjadi true
                atas = true; % Mengeset variable atas menjadi true

            end

         end

         if (j ~= 1) && (kiri ~= true) % Mengecek apakah j sama dengan 1 dan variable atas bernilai true
             kim = abs(img(ii,jj,1) - img(i,j-1,1)); % Mengisi nilai variable kim dengan hasil absolut dari pengurangan
             kih = abs(img(ii,jj,2) - img(i,j-1,2)); % Mengisi nilai variable kih dengan hasil absolut dari pengurangan
             kib = abs(img(ii,jj,3) - img(i,j-1,3)); % Mengisi nilai variable kib dengan hasil absolut dari pengurangan

             if(kim <= t) && (kih <= t) && (kib <= t ) % Mengecek apakah nilai dari varible kim, kih, dan kib lebih kecil dari nilai variable t
                x = recursive(img,i,j-1,t,x,n+1,r,c,atas,kanan,bawah,kiri,ii,jj); % Melakukan recursive
                kanan = true; % Mengeset variable kanan menjadi true
                bawah = true; % Mengeset variable bawah menjadi true
                x(n,1) = i; % Mengisi varible x dengan nilai i
                x(n,2) = j; % Mengisi varible x dengan nilai j
             end
         end

         if (j == 1) || ((kiri ~= true)&&(kim > t) && (kih > t) && (kib > t )) % Mengecek apakah j sama dengan 1 atau nilai dari kiri tidak sama dengan true dan nilai dari kim, kih, dan kib apakah lebih besar dari t
            j = jj; % Mengeset nilai j dengan jj
         end

         if (j ~= c)  % Mengecek apakah j sama dengan c

             km = abs(img(ii,jj,1) - img(i,j+1,1)); % Mengisi nilai variable km dengan hasil absolut dari pengurangan
             kh = abs(img(ii,jj,2) - img(i,j+1,2)); % Mengisi nilai variable kh dengan hasil absolut dari pengurangan
             kb = abs(img(ii,jj,3) - img(i,j+1,3)); % Mengisi nilai variable kb dengan hasil absolut dari pengurangan

             if(kanan ~= true) && (km <= t) && (kh <= t) && (kb <= t ) % Mengecek apakah nilai dari varible kanan sadengan true dan km, kh, dan kb lebih kecil dari nilai variable t
                kiri = true; % Mengeset variable kiri menjadi true
                x = recursive(img,i,j+1,t,x,n+1,r,c,atas,kanan,bawah,kiri,ii,jj); % Mengeset variable bawah menjadi true
                bawah = true; % Mengeset variable bawah menjadi true
                x(n,1) = i; % Mengisi varible x dengan nilai i
                x(n,2) = j; % Mengisi varible x dengan nilai j
             end
         end

         j = jj; % Mengeset nilai j dengan jj
        

         if (i ~= r) % Mengecek apakah i sama dengan r

             bm = abs(img(ii,jj,1) - img(i+1,j,1)); % Mengisi nilai variable bm dengan hasil absolut dari pengurangan
             bh = abs(img(ii,jj,2) - img(i+1,j,2)); % Mengisi nilai variable bh dengan hasil absolut dari pengurangan
             bb = abs(img(ii,jj,3) - img(i+1,j,3)); % Mengisi nilai variable bb dengan hasil absolut dari pengurangan

             if (bawah ~= true) && (bm <= t) && (bh <= t) && (bb <= t ) % Mengecek apakah nilai dari varible bawah sama dengan true dan bm, bh, dan bb lebih kecil dari nilai variable t
                atas = true; % Mengeset variable atas menjadi true
                kiri = false; % Mengeset variable kiri menjadi true
                x = recursive(img,i+1,j,t,x,n+1,r,c,atas,kanan,bawah,kiri,ii,jj); % Mengeset variable bawah menjadi true
                x(n,1) = i; % Mengisi varible x dengan nilai i
                x(n,2) = j; % Mengisi varible x dengan nilai j
             end
         end
     

% --- Executes on button press in Growth.
function Growth_Callback(hObject, eventdata, handles)
    img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
    t = str2double(get(handles.th, 'string')); % Mendapatkan Nilai dari edit text th
    x1 = str2double(get(handles.x1growth, 'string')); % Mendapatkan Nilai dari edit text x1growth
    x2 = str2double(get(handles.x2rgrowth, 'string')); % Mendapatkan Nilai dari edit text x2rgrowth
    [r, c, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
    
    x = []; % Menginisialisasikan variable x   
    n = 1; %Menginisialisasikan varible n
    
    atas = false; % Menginisialisasikan varible atas
    kanan = false; % Menginisialisasikan varible kanan
    bawah = false; % Menginisialisasikan varible bawah
    kiri = false; % Menginisialisasikan varible kiri
    
    x(:,:) = recursive(img,x1,x2,t,x,n,r,c,atas,kanan,bawah,kiri,x1,x2); % Mengisi variable x dengan nilai dari fungsi recursive
    [a,b] = size(x); % Mengisi nilai a dan b dengan ukuran dari variable x
    for k = 1 : a % Menjelajahi data pada X  
        for i=1 : r %Menjelajahi pixel row
            for j=1 : c % Menjelajahi pixel colom
                if (i == x(k,1)) && (j == x(k,2)) % Jika nilai i nama dengan nilai x index ke k,1 dan nilai j sama dengan nilai x index ke k,2 maka jalankan perintah dibawah
                    img(i,j,:) = 0; %mengisi nilai pada img(i,j,:) dengan nilai 0 untuk menandatakan area yang di pilih pada gambar
                end
            end
        end
    end

    disp(x); % Menampilakn nilai dari cariable x
    figure,imshow(uint8(img));
     
function th_Callback(hObject, eventdata, handles)
% hObject    handle to th (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function th_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thpenebalan_Callback(hObject, eventdata, handles)

function thpenebalan_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in penebalan.
function penebalan_Callback(hObject, eventdata, handles)
 img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
 img2 = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
 x1 = str2double(get(handles.x1tebal, 'string')); % Mendapatkan Nilai dari edit text x1tebal
 x2 = str2double(get(handles.x2tebal, 'string')); % Mendapatkan Nilai dari edit text x2tebal
 y1 = str2double(get(handles.y1tebal, 'string')); % Mendapatkan Nilai dari edit text y1tebal
 y2 = str2double(get(handles.y2tebal, 'string')); % Mendapatkan Nilai dari edit text y2tebal
 [m, n, colormap] = size(img); % Mengisi nilai r,c,dan colormap dengan size yang ada di dalam img
 
 % Inisialisasi kernel untuk penebalan
 temp(1,1) = 1; 
 temp(2,1) = 1;
 temp(2,2) = 1;
 
 % Inisialisasi image biner
 img = im2bw(uint8(img));
 img2 = img;

 % Proses dilasi
 for i=x1 : x2 
      for j=y1 : y2
               if(i == x1) && (j ~= y2)
                   a = min(img(i,j+1,:),temp(2,2));
                   b = min(img(i,j,:),temp(2,1));
                   img2(i,j,:) = min(a,b);
                   
               elseif(i == x1) && (j == y2)
                   img2(i,j,:) = min(img(i,j,:),temp(2,1));

               elseif(i ~= x1) && (j ~= y2)
                   a = min(img(i,j+1,:),temp(2,2));
                   b = min(img(i-1,j,:),temp(1,1));
                   c = min(a,b);
                   d = min(img(i,j,:),temp(2,1));
                   img2(i,j,:) = min(c,d);

               elseif(i ~= x1) && (j == y2)    
                   a = min(img(i-1,j,:),temp(1,1));
                   b = min(img(i,j,:),temp(2,1));
                   img2(i,j,:) = min(a,b);

               end
       end
 end
  figure,imshow(img2),title('Dilasi');  
  figure,imshow(img);
 
 



function x2tebal_Callback(hObject, eventdata, handles)


function x2tebal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x1tebal_Callback(hObject, eventdata, handles)


function x1tebal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y2tebal_Callback(hObject, eventdata, handles)

function y2tebal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y1tebal_Callback(hObject, eventdata, handles)

function y1tebal_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y1tipis_Callback(hObject, eventdata, handles)

function y1tipis_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function y2tipis_Callback(hObject, eventdata, handles)

function y2tipis_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x1tipis_Callback(hObject, eventdata, handles)

function x1tipis_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2tipis_Callback(hObject, eventdata, handles)

function x2tipis_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Penipisan.
function Penipisan_Callback(hObject, eventdata, handles)
 img = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
 img2 = handles.image1; % Mendapatkan Data image yang telah dimasukan ke dalam data handles
 x1 = str2double(get(handles.x1tebal, 'string')); % Mendapatkan Nilai dari edit text x1tipis
 x2 = str2double(get(handles.x2tebal, 'string')); % Mendapatkan Nilai dari edit text x2tipis
 y1 = str2double(get(handles.y1tebal, 'string')); % Mendapatkan Nilai dari edit text y1tipis
 y2 = str2double(get(handles.y2tebal, 'string')); % Mendapatkan Nilai dari edit text y2tipis
 
 
 % Inisialisasi kernel untuk penipisan
 temp(1,1) = 0; 
 temp(2,1) = 0;
 temp(2,2) = 0;
 
 % Inisialisasi image biner
 img = im2bw(uint8(img));
 img2 = img;

 % Proses Erosi
 for i=x1 : x2 
      for j=y1 : y2
               if(i == x1) && (j ~= y2)
                   a = max(img(i,j+1,:),temp(2,2));
                   b = max(img(i,j,:),temp(2,1));
                   img2(i,j,:) = max(a,b);
                   
               elseif(i == x1) && (j == y2)
                   img2(i,j,:) = max(img(i,j,:),temp(2,1));

               elseif(i ~= x1) && (j ~= y2)
                   a = max(img(i,j+1,:),temp(2,2));
                   b = max(img(i-1,j,:),temp(1,1));
                   c = max(a,b);
                   d = max(img(i,j,:),temp(2,1));
                   img2(i,j,:) = max(c,d);

               elseif(i ~= x1) && (j == y2)    
                   a = max(img(i-1,j,:),temp(1,1));
                   b = max(img(i,j,:),temp(2,1));
                   img2(i,j,:) = max(a,b);

               end
       end
 end
  figure,imshow(img2),title('Erosi');  
  figure,imshow(img);
 


% --- Executes on button press in Kompresi.
function Kompresi_Callback(hObject, eventdata, handles)
% hObject    handle to Kompresi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
