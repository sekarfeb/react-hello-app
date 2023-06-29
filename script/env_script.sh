# Write your commands here
echo "$IMAGE_NAME" > $(Build.ArtifactStagingDirectory)/custom_output.txt
cat  $(Build.ArtifactStagingDirectory)/custom_output.txt

git clone https://github.com/sekarfeb/react-hello-app.git
cd react-hello-app
      
# Read the file
file_content=$(cat yamlfiles/deploy.yaml)

echo "$file_content" > $(Build.ArtifactStagingDirectory)/deploy.yaml
      
envsubst '${LB_IP}' <$(Build.ArtifactStagingDirectory)/deploy.yaml > $(Build.ArtifactStagingDirectory)/output.yaml




