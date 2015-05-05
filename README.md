# batch-utils
Set of batch file utilities for Windows

## Push new version (pnv.bat)

Bump a PATCH version of repository.

```batch
pnv "message"
```

Example:
```batch
git describe
> 2.1.0
pnv "new version"
git describe
> 2.1.1
```

## Synchronize all repositories (sync.bat)

Pull all subdirectories from the current working directory if they are a git repository.

```batch
sync [prefix]
```

## List all versions (allver.bat)

List the current version of subdirectories if they are repositories.

```batch
allver [prefix]
```
