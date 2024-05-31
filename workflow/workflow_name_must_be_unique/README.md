# workflow_name_must_be_unique

Workflow names must be unique.

## Usage

This rule has no `config` parameter.

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '.github/workflows/*.yml',
        '.github/workflows/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/github-actions/workflow_name_must_be_unique/main_combine.jsonnet@f62e9d33b0742c0272e8a2fd3d2e79ccd9a007e2:v0.1.0',
      ],
    },
  ],
}
```

## Why this rule is necessary?

Name duplication may cause unexpected issues.
