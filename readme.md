# Build Notes

## Issue with `intersystemsdc/iris-community:latest` (`2026.1`)

When using `IMAGE=intersystemsdc/iris-community:latest` (`2026.1`), the build fails with the following error:

```text
6.271 Loading file /home/irisowner/dev/src/sandbox/PySample/PyTest.cls as udl
6.336
6.337 Compilation started on 04/16/2026 21:56:00 with qualifiers 'ck/multicompile=0'
6.337 Compiling class Sandbox.PySample.PyTest
6.338 Compiling routine Sandbox.PySample.PyTest.1Segmentation fault
```

## Behavior with `intersystemsdc/iris-community:2025.3`

When using `IMAGE=intersystemsdc/iris-community:2025.3`, the build completes successfully without errors.

## Additional Observation

1. When using `IMAGE=intersystemsdc/iris-community:latest`, the build also succeeds if `App.Installer` does not import classes that contain methods with `[ Language = python ]`.

In this example, removing the following line allows the build to complete successfully:

```xml
<Import File="${SourceDir}/sandbox/PySample" Flags="ck/multicompile=0" Recurse="1"/>
```

2. If the `/multicompile=0` flag is removed, the import may also complete successfully on `2026.1`.
However, any later attempt to call methods declared with `[ Language = python ]` will fail at runtime with an error.

3. When using `IMAGE=containers.intersystems.com/intersystems/iris:2026.1`, the build completes without errors, and methods declared with `[ Language = python ]` execute without errors.
