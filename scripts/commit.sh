#!/bin/bash
echo ""
echo ""
echo "🔍🔍🔍 Running .NET tests before commit...🔍🔍🔍"

dotnet test --verbosity minimal
status=$?
echo ""
if [ $status -ne 0 ]; then
  echo ""
  echo "❌❌❌ Commit blocked: Tests failed. ❌❌❌"
  exit 1
else
  echo ""
  echo "✅✅✅ All tests passed. Proceeding with commit. ✅✅✅"
  exit 0
fi
echo ""

