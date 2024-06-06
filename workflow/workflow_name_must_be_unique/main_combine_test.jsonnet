function(param) [
  {
    name: 'fail',
    data_files: [
      {
        path: 'testdata/build.yaml',
        fake_path: '.github/workflows/build.yaml',
      },
      {
        path: 'testdata/build-2.yaml',
        fake_path: '.github/workflows/build-2.yaml',
      },
      {
        path: 'testdata/release.yaml',
        fake_path: '.github/workflows/release.yaml',
      },
    ],
    result: [
      {
        name: 'GitHub Actions workflow name must be unique',
        location: {
          workflow_name: 'build',
          files: [
            '.github/workflows/build.yaml',
            '.github/workflows/build-2.yaml',
          ],
        },
      },
    ],
  },
  {
    name: 'pass',
    data_files: [
      {
        path: 'testdata/build.yaml',
        fake_path: '.github/workflows/build.yaml',
      },
      {
        path: 'testdata/test.yaml',
        fake_path: '.github/workflows/test.yaml',
      },
    ],
    result: [],
  },
]
