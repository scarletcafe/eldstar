
mkdir deps;
Set-Location deps;

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13;
$ProgressPreference = 'SilentlyContinue';

Write-Host "Downloading zlib.zip...";
Invoke-WebRequest -Uri "https://zlib.net/zlib131.zip" -OutFile 'zlib.zip';
Write-Host "Downloading libpng.zip...";
Invoke-WebRequest -Uri "https://unlimited.dl.sourceforge.net/project/libpng/libpng16/1.6.47/lpng1647.zip?viasf=1" -OutFile 'libpng.zip';
Write-Host "Downloading glfw.zip...";
Invoke-WebRequest -Uri "https://github.com/glfw/glfw/releases/download/3.4/glfw-3.4.zip" -OutFile 'glfw.zip';
Write-Host "Downloading glm.zip...";
Invoke-WebRequest -Uri "https://github.com/g-truc/glm/archive/refs/tags/1.0.1.zip" -OutFile 'glm.zip';
Write-Host "Downloading harfbuzz.zip...";
Invoke-WebRequest -Uri "https://github.com/harfbuzz/harfbuzz/archive/refs/tags/11.0.0.zip" -OutFile 'harfbuzz.zip';
Write-Host "Downloading freetype-dist.zip...";
Invoke-WebRequest -Uri "https://github.com/ubawurinna/freetype-windows-binaries/archive/refs/tags/v2.13.3.zip" -OutFile 'freetype-dist.zip';

# Why?
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;
Write-Host "Downloading freetype.zip...";
Invoke-WebRequest -Uri "https://download.savannah.gnu.org/releases/freetype/ft2133.zip" -OutFile 'freetype.zip';
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls13;

mkdir sources;
mkdir dists;

Write-Host "Extracting zlib.zip...";
Expand-Archive -Path 'zlib.zip' -DestinationPath 'sources/zlib';
Write-Host "Extracting libpng.zip...";
Expand-Archive -Path 'libpng.zip' -DestinationPath 'sources/libpng';
Write-Host "Extracting glfw.zip...";
Expand-Archive -Path 'glfw.zip' -DestinationPath 'sources/glfw';
Write-Host "Extracting glm.zip...";
Expand-Archive -Path 'glm.zip' -DestinationPath 'sources/glm';
Write-Host "Extracting harfbuzz.zip...";
Expand-Archive -Path 'harfbuzz.zip' -DestinationPath 'sources/harfbuzz';
Write-Host "Extracting freetype-dist.zip...";
Expand-Archive -Path 'freetype-dist.zip' -DestinationPath 'dists/freetype';
Write-Host "Extracting freetype.zip...";
Expand-Archive -Path 'freetype.zip' -DestinationPath 'sources/freetype';

Write-Host "Cleaning up...";
Remove-Item 'zlib.zip' -Force;
Remove-Item 'libpng.zip' -Force;
Remove-Item 'glfw.zip' -Force;
Remove-Item 'glm.zip' -Force;
Remove-Item 'harfbuzz.zip' -Force;
Remove-Item 'freetype-dist.zip' -Force;
Remove-Item 'freetype.zip' -Force;

Write-Host "Dependency download complete.";
Set-Location ..;
