@ECHO OFF

:START
set /p home=������JDK��װ·����
IF EXIST "%home%\bin\java.exe" GOTO INSTALL

:WARNING
rem ����Ŀ¼������ʾ��������
echo ���������·������JDK��װ·��
echo ������������ȷ��JDK��װ·��
pause
goto START

:INSTALL
rem ��������ȷ�� Java2SDK ��װĿ¼����ʼ���û�������
echo �����·����:%home%
@setx JAVA_HOME "%home%"
@setx Path "%%JAVA_HOME%%\bin;%Path%"
IF "%CLASSPATH%"=="" goto NOCLASSPATH
@setx CLASSPATH "%CLASSPATH%;.;%%JAVA_HOME%%\lib\tools.jar;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\jre\lib\rt.jar"
GOTO END

:NOCLASSPATH
@setx CLASSPATH ".;%%JAVA_HOME%%\lib\tools.jar;%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\jre\lib\rt.jar"
GOTO END

:END
echo Java�����������
pause