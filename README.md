# Test Self-Hosted Runner

This repository tests the self-hosted GitHub Actions runner configured on macOS ARM64.

## Runner Details

- **Platform**: macOS (ARM64)
- **Labels**: `self-hosted`, `macOS`, `ARM64`
- **Organization**: manaflow-ai

## Workflow

The workflow file `.github/workflows/test-runner.yml` runs on every push to main and includes:

1. Display runner information
2. Display system information
3. Test Python availability
4. Run custom test script
5. Report success

## Trusted Manual Trigger

The workflow does not run for pull requests. A pull request can change its workflow and
would otherwise execute that code on the persistent runner. A maintainer may run the
workflow from the Actions tab with the `main` branch selected. The job rejects every
other ref, and the checkout uses the selected trusted commit without a write credential.

Do not dispatch this workflow for a pull-request or feature branch. Use a disposable
hosted runner for untrusted validation instead.

## What This Tests

- Runner connectivity to GitHub
- Job execution on self-hosted infrastructure
- System access and permissions
- Script execution capabilities
- Network connectivity from the runner
