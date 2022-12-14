- name: Upload Android Release to Play Store
  uses: r0adkll/upload-google-play@v1.0.18

  uses: r0adkll/upload-google-play@v1
  with:
    serviceAccountJsonPlainText: ${{ SERVICE_ACCOUNT_JSON }}
    packageName: Ntisa Food Menu App
    releaseFiles: https://github.com/oluwatobi2018/Ntisa-Mobile-Dev-Assessment/releases/tag/2
    track: production
    status: inProgress
    inAppUpdatePriority: 2
    userFraction: 0.33
    whatsNewDirectory: distribution/whatsnew
    mappingFile: app/build/outputs/mapping/release/mapping.txt
    debugSymbols: app/intermediates/merged_native_libs/release/out/lib
    distribution/
└─ whatsnew/
  ├─ whatsnew-en-US
