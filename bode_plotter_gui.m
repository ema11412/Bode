function varargout = bode_plotter_gui(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bode_plotter_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @bode_plotter_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before bode_plotter_gui is made visible.
function bode_plotter_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bode_plotter_gui (see VARARGIN)

% Choose default command line output for bode_plotter_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bode_plotter_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bode_plotter_gui_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

set(handles.edit1, 'String', '');
set(handles.edit2, 'String', '');



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)

input_data_str1 = get(handles.edit1, 'String');
input_data_str2 = get(handles.edit2, 'String');
if strcmp(input_data_str1, '')
    set(handles.edit1, 'String', 'Digite nuerador');
elseif strcmp(input_data_str2, '')
     set(handles.edit2, 'String', 'Digite denominador');
else
    zeros = str2num(char(get(handles.edit1, 'string')));
    poles = str2num(char(get(handles.edit2, 'string')));
    
    figure
    
    H = tf(zeros,poles);
    bode(H);
   
end


    


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
input_data_str1 = get(handles.edit1, 'String');
input_data_str2 = get(handles.edit2, 'String');
if strcmp(input_data_str1, '')
    set(handles.edit1, 'String', 'Digite nuerador');
elseif strcmp(input_data_str2, '')
     set(handles.edit2, 'String', 'Digite denominador');
else
    zeros = str2num(char(get(handles.edit1, 'string')));
    poles = str2num(char(get(handles.edit2, 'string')));
    
    figure
    
    H = tf(zeros,poles);
    rlocus(H);
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)

% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
