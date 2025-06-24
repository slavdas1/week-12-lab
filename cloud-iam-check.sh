#!/bin/bash
echo "🔍 Simulated Cloud IAM Audit - Demo Mode"
echo "----------------------------------------"

# Simulated users and permissions
declare -A USERS
USERS["admin"]="FullAccess"
USERS["john.doe"]="ReadOnlyAccess"
USERS["guest"]="None"

# Check users
echo "👥 Checking user permissions..."
for user in "${!USERS[@]}"; do
  echo "- $user => ${USERS[$user]}"
done

# Simulated issues
echo ""
echo "⚠️ Detected Issues:"
echo "- 'guest' has no permissions configured."
echo "- 'john.doe' has ReadOnlyAccess but logged in from unusual IP."

# Recommendation
echo ""
echo "✅ Suggested Fixes:"
echo "- Review 'guest' account. Consider disabling or assigning minimal role."
echo "- Enable geo-restriction alerts for 'john.doe'."

echo ""
echo "📝 Audit complete. (This was a simulation.)"

