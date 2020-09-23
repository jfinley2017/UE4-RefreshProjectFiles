# UE4-RefreshProjectFiles
Simple script to refresh project files in UE4 in one click.


# Setup

1.) Clone this repo, move RefreshProjectFiles.bat into the UE4 project directory that you wish to use this tool for.

2.) Edit RefreshProjectFiles.bat and change `PathToEngine` to be the path to the engine installation used for your project and change `ProjectName` to be the name of your project (specifically, the name of your uproject `<MyProjectName>`.uproject).

<p align=center>
  <img src=https://cdn.discordapp.com/attachments/730491220643545138/758359020557172796/unknown.png />
</p>

3.) Run the script. Your Intermediate, Binaries and .vs folders should be wiped and a new sln should be created. Note that I am not deleting the Intermediate and Binaries folder roots, as some use symbolic link to faster drives to improve compile time and removing the root directory of those folders in their entirety would destroy that link. The folders themselves should be empty however.
