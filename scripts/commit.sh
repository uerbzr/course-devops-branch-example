#!/bin/bash
echo ""
echo "###################################################"
echo "🔍🔍🔍 Running .NET tests before commit...🔍🔍🔍"

dotnet test --verbosity minimal
status=$?

if [ $status -ne 0 ]; then
  echo "❌❌❌ Commit blocked: Tests failed. ❌❌❌"
  exit 1
else
  echo "✅✅✅ All tests passed. Proceeding with commit. ✅✅✅"
  exit 0
fi
