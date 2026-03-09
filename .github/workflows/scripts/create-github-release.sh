#!/usr/bin/env bash

# Create GitHub Release with all agent template packages
#
# This script creates a GitHub release and uploads all generated zip archives
# as release assets.

set -euo pipefail

#==============================================================================
# Configuration
#==============================================================================

# Version from git tag or environment
VERSION="${VERSION:-$(git describe --tags --always 2>/dev/null || echo 'dev')}"

# Release directory
RELEASE_DIR=".genreleases"

#==============================================================================
# Main
#==============================================================================

echo "Creating GitHub release for version: $VERSION"
echo ""

# Create the release with all agent packages
gh release create "$VERSION" \
    --title "Spec Kit Template $VERSION" \
    --notes "Agent template packages for Spec Kit $VERSION" \
    "$RELEASE_DIR/spec-kit-template-copilot-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-copilot-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-claude-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-claude-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-gemini-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-gemini-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-cursor-agent-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-cursor-agent-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-qwen-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-qwen-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-opencode-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-opencode-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-codex-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-codex-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-windsurf-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-windsurf-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kilocode-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kilocode-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-auggie-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-auggie-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-codebuddy-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-codebuddy-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-qodercli-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-qodercli-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-roo-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-roo-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kiro-cli-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kiro-cli-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-amp-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-amp-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-shai-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-shai-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-agy-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-agy-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-bob-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-bob-ps-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kimi-sh-$VERSION.zip" \
    "$RELEASE_DIR/spec-kit-template-kimi-ps-$VERSION.zip"

echo ""
echo "GitHub release created successfully: $VERSION"
