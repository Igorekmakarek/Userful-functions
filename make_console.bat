rem Файл make_console.bat
rem компиляция и компоновка консольных приложений
rem в Borland Builder C++ 5.5
rem объявление переменных
path C:\Borland\BCC55\bin;%path%
set include=C:\Borland\BCC55\include
set lib=C:\Borland\BCC55\lib
rem имя исходного файла (подразумевается расширение .cpp)
set app=cpp
rem удаляем прежние результаты компиляции
if exist %appp%.exe del %app%.exe
if exist %appp%.obj del %app%.obj
rem запуск компилятора
bcc32.exe -I%include% -L%lib% %app%.cpp > errout.txt