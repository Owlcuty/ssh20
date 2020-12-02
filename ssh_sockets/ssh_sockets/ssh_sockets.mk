##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ssh_sockets
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/kaid/ssh_sockets
ProjectPath            :=/home/kaid/ssh_sockets/ssh_sockets
IntermediateDirectory  :=../build-$(ConfigurationName)/ssh_sockets
OutDir                 :=../build-$(ConfigurationName)/ssh_sockets
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=kaid
Date                   :=06/10/20
CodeLitePath           :=/home/kaid/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -lssh -lssh2
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ssh_sockets/main.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/ssh_sockets/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/ssh_sockets"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/ssh_sockets"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/ssh_sockets/.d:
	@mkdir -p "../build-$(ConfigurationName)/ssh_sockets"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(ObjectSuffix): myssh.cpp ../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/kaid/ssh_sockets/ssh_sockets/myssh.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/myssh.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(DependSuffix): myssh.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(DependSuffix) -MM myssh.cpp

../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(PreprocessSuffix): myssh.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ssh_sockets/myssh.cpp$(PreprocessSuffix) myssh.cpp

../build-$(ConfigurationName)/ssh_sockets/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/ssh_sockets/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/kaid/ssh_sockets/ssh_sockets/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ssh_sockets/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ssh_sockets/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ssh_sockets/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/ssh_sockets/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ssh_sockets/main.cpp$(PreprocessSuffix) main.cpp

../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(ObjectSuffix): mysockets.cpp ../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/kaid/ssh_sockets/ssh_sockets/mysockets.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/mysockets.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(DependSuffix): mysockets.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(DependSuffix) -MM mysockets.cpp

../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(PreprocessSuffix): mysockets.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/ssh_sockets/mysockets.cpp$(PreprocessSuffix) mysockets.cpp


-include ../build-$(ConfigurationName)/ssh_sockets//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


