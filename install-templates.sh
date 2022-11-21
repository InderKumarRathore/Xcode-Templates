SOURCE_PATH=~/Library/Developer/Xcode/Templates/Source/
mkdir -p $SOURCE_PATH

templateFileExtension="xctemplate"

declare -a SwiftTypeTemplateFiles=("Swift Type")

for templateFileName in "${SwiftTypeTemplateFiles[@]}"
do
   echo "Moving $templateFileName.$templateFileExtension"
   rm -rf "$SOURCE_PATH$templateFileName.$templateFileExtension"
   cp -r "$templateFileName.$templateFileExtension" "$SOURCE_PATH$templateFileName.$templateFileExtension"
done

echo "Cheers 🍻, everything has been moved"
