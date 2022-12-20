# ts-decision-logs
Automated generation of Aserto Decision Logs TypeScript type definitions.

## Consuming the definitions
These definitions can be consumed by `yarn` from npm:
```
"devDependencies": {
    "@aserto/ts-decision-logs": "^v0.0.1",
```

or directly from `git` using the following reference:
```
"devDependencies": {
    "@aserto/ts-decision-logs": "git+https://github.com/aserto-dev/ts-decision-logs.git#v0.0.1",
```

Replace `v0.0.1` with the tag you would like to use.

## Generation Process
- `OPENAPI_SAH=main yarn generate`

## GitHub Workflow
The GitHub Workflow is triggered as a workflow_dispatch. It expects to be provided with two required parameters:
- PROTO_REF: The version tag of `aserto-dev/pb-decision-logs` that is represented by the `OPENAPI_SHA`. This is used to tag the `ts-decision-logs` commit with the same proto version.
- OPENAPI_SHA: The `aserto-dev/openapi-decision-logs` commit hash for which type definitions should be created.

Using these variables the GitHub Workflow runs the same `./generate.sh` script, commits, and tags its results for downstream consumption. Run results are deterministic as explicit commit hash and version numbers are taken as explicit input parameters.
