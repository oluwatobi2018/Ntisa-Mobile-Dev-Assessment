
name: Build & Publish Release APK

  on:
    push:
      tags:
        - '*'
  
  jobs:
    Gradle:
      runs-on: ubuntu-latest
      steps:
      - name: checkout code
        uses: actions/checkout@v2
      - name: setup jdk
        uses: actions/setup-java@v1
        with:
          java-version: 11
      - name: Make Gradle executable
        run: chmod +x ./gradlew
      - name: Build Release APK
        run: ./gradlew assembleRelease
      - name: Releasing using Hub
        uses: oluwatobi2018/action-release-releaseapk@master
        env:
         GITHUB_TOKEN: ${{ secrets.TOKEN }}
         APP_FOLDER: https://github.com/oluwatobi2018/Ntisa-Mobile-Dev-Assessment/blob/main/Ntisa%20Mobile%20development%20assessment%20android%20(project).dart
         - name: Build Android release APK when create new tag
  uses: oluwatobi2018/action-release-releaseapk@1.0.0
