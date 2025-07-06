#!/bin/bash

# Navigate to the repo root (in case it's run from subdirectory)
REPO_ROOT="$(git rev-parse --show-toplevel)"
HOOKS_DIR="$REPO_ROOT/.git/hooks"
PRE_COMMIT="$HOOKS_DIR/pre-commit"

# Create the hooks directory if it doesn't exist
mkdir -p "$HOOKS_DIR"

# Write the pre-commit hook contents
cat << 'EOF' > "$PRE_COMMIT"
#!/bin/bash

# Run about script
REPO_ROOT="$(git rev-parse --show-toplevel)"
"$REPO_ROOT/scripts/about.sh" || echo "Script failed or missing!"

# Run commit script
"$REPO_ROOT/scripts/commit.sh" || echo "Commit Script Couldn't be found!"

echo ""
echo "✅✅✅ pre-commit complete ✅✅✅"
EOF

# Make the hook executable
chmod +x "$PRE_COMMIT"

echo "✅ Hook installed at .git/hooks/pre-commit"
