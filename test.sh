#!/bin/bash

echo "=========================================="
echo "Running Test Script on Self-Hosted Runner"
echo "=========================================="
echo ""

echo "Test 1: Basic Shell Commands"
echo "Current directory: $(pwd)"
echo "Current user: $(whoami)"
echo "Date and time: $(date)"
echo ""

echo "Test 2: File Operations"
echo "Creating test file..."
echo "Hello from self-hosted runner!" > test_output.txt
cat test_output.txt
echo ""

echo "Test 3: Environment Variables"
echo "HOME: $HOME"
echo "PATH: $PATH"
echo ""

echo "Test 4: Network Test"
echo "Checking internet connectivity..."
curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" https://api.github.com
echo ""

echo "=========================================="
echo "All tests completed successfully!"
echo "=========================================="
