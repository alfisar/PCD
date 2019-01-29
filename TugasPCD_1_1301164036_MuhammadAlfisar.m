classdef TugasPCD_1_1301164036_MuhammadAlfisar < matlab.apps.AppBase
    % Properties that correspond to app components
    properties (Access = public)
        UIFigure              matlab.ui.Figure
        ImageProcessingPanel  matlab.ui.container.Panel
        UIAxes                matlab.ui.control.UIAxes
        SelectImageButton     matlab.ui.control.Button
        GrayImageButton       matlab.ui.control.Button
        RotateButton          matlab.ui.control.Button
        ClearButton           matlab.ui.control.Button
    end

    methods (Access = private)
        % Button pushed function: SelectImageButton
        function SelectImageButtonPushed(app, ~)
            [filename, pathname] = uigetfile ({'*.jpg'; '*.png'},'File Select');
            image = strcat(pathname,filename);
            imshow(image,'Parent',app.UIAxes);
            figure, imshow(image);
            
            images = imread(image);
            image = images;
            dirr = strcat('/home/mylinux/Perkuliahan/semester 6/PCD/image/',filename);
            imwrite(images,dirr)
            save('matlab','image');
            save('matlab','images','-append');
        end
        
        function GrayImageButtonPushed(app, ~)
           tempp = load('matlab')
           images = tempp.images;
           images = rgb2gray(images);
           figure, imshow(images);
           save('matlab','images','-append');
        end
        
        function RotateButtonPushed(app, ~)
           tempp = load('matlab');
           images = tempp.images;
           images = imrotate(images,45);
           figure, imshow(images);
           save('matlab','images','-append');
        end
        
        function ClearButtonPushed(app, ~)
           tempp = load('matlab');
           images = tempp.image;
           save('matlab','images','-append');
        end
        
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 685 531];
            app.UIFigure.Name = 'UI Figure';

            % Create ImageProcessingPanel
            app.ImageProcessingPanel = uipanel(app.UIFigure);
            app.ImageProcessingPanel.TitlePosition = 'centertop';
            app.ImageProcessingPanel.Title = 'Image Processing';
            app.ImageProcessingPanel.Position = [1 1 685 531];

            % Create UIAxes
            app.UIAxes = uiaxes(app.ImageProcessingPanel);
            title(app.UIAxes, 'Image')
            app.UIAxes.BoxStyle = 'full';
            app.UIAxes.Position = [1 214 299 291];

            % Create SelectImageButton
            app.SelectImageButton = uibutton(app.ImageProcessingPanel, 'push');
            app.SelectImageButton.ButtonPushedFcn = createCallbackFcn(app, @SelectImageButtonPushed, true);
            app.SelectImageButton.Position = [50 168 100 22];
            app.SelectImageButton.Text = 'Select Image';

            % Create GrayImageButton
            app.GrayImageButton = uibutton(app.ImageProcessingPanel, 'push');
            app.GrayImageButton.ButtonPushedFcn = createCallbackFcn(app, @GrayImageButtonPushed, true);
            app.GrayImageButton.Position = [164 168 100 22];
            app.GrayImageButton.Text = 'Gray Image';
            
             % Create ClearButton
            app.RotateButton = uibutton(app.ImageProcessingPanel, 'push');
            app.RotateButton.ButtonPushedFcn = createCallbackFcn(app, @RotateButtonPushed, true);
            app.RotateButton.Position = [50 122 100 22];
            app.RotateButton.Text = {'Rotate'; ''};
            
             % Create ClearButton
            app.ClearButton = uibutton(app.ImageProcessingPanel, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.Position = [164 122 100 22];
            app.ClearButton.Text = 'Clear';
        end
    end

    methods (Access = public)

        % Construct app
        function app = TugasPCD_1_1301164036_MuhammadAlfisar

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end