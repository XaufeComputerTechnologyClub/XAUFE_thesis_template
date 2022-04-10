function build {
  param (
    $fileName
  )

  xelatex -output-directory="./build" $fileName".tex"
  bibtex ./build/$fileName
  xelatex -output-directory="./build" $fileName".tex"
  xelatex -output-directory="./build" $fileName".tex"
}

function add_extra {
  param (
    $fileName
  )

  Get-Content main.tex |
  Select-Object -Skip 3 |
  Out-File $fileName -Append
}

if(-not (xelatex --version)){
  Write-Host "xelatex not found, pleace check you have install texlive" -ForegroundColor Red
  exit
}

# encoding
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

# make build directory
mkdir build

# make ebook
echo "\documentclass[draft,ebook]{XaufeThesisTemplate}" |
  Out-File ebook.tex
add_extra ebook.tex
build ebook
rm ebook.tex

# make draft
echo "\documentclass[draft]{XaufeThesisTemplate}" |
  Out-File draft.tex
add_extra draft.tex
build draft
rm draft.tex

# make release version
echo "\documentclass{XaufeThesisTemplate}" |
  Out-File release.tex
add_extra release.tex
build release
rm release.tex

# make open_report
build open_report

Write-Host "Build sucessfully,press enter to exit." -ForegroundColor Green

Read-Host
