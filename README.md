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

## Manual Trigger

You can manually trigger the workflow from the Actions tab in GitHub by clicking "Run workflow".

## What This Tests

- Runner connectivity to GitHub
- Job execution on self-hosted infrastructure
- System access and permissions
- Script execution capabilities
- Network connectivity from the runner
