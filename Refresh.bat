@echo off

@echo Removing .vs folder
cd %~dp0 
rmdir /q .vs

@echo Removing vs solution
del /q "*.sln"

@echo Removing Binaries
cd %~dp0\Binaries
for /r %%a in (*) do (
	@echo deleting "%%a"
	del /q /s "%%a"
)

for /d %%a in (*) do (
	@echo deleting folder "%%a"
	rmdir /q /s "%%a"
)

@echo Removing Intermediates
cd %~dp0\Intermediate
for /r %%a in (*) do (
	@echo deleting "%%a"
	del /q /s "%%a"
	
)

for /d %%a in (*) do (
	@echo deleting folder "%%a"
	rmdir /q /s "%%a"
)