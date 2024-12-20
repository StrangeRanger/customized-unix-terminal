#!/bin/bash
#
# ...
#
# Version: v1.0.0-rc.1
# License: MIT License
#          Copyright (c) 2024 Hunter T. (StrangeRanger)
#
########################################################################################
####[ Global Variables ]################################################################


C_CHANGELOG="CHANGELOG.md"
C_DATE=$(date +%Y-%m-%d)
C_TMP_CHANGELOG="CHANGELOG.tmp"
readonly C_CHANGELOG C_DATE C_TMP_CHANGELOG

declare -A sections


####[ Main ]############################################################################


## Extract latest commit messages from submodule.
git submodule update --remote
cd submodules/dotfiles/ || exit 1
COMMITS=$(git log $(git rev-parse HEAD@{1})..HEAD --pretty=format:"%s")
cd - || exit 1

# Prepare new changelog entry.
echo "## $C_DATE" > "$C_TMP_CHANGELOG"
echo "" >> "$C_TMP_CHANGELOG"

while IFS= read -r commit; do
    skip=false

    # Regex to capture type, optional info, and optional message.
    if [[ $commit =~ ^(added|changed|removed|fixed)(\([^\)]*\))?:\ (.+)$ ]]; then
        type="${BASH_REMATCH[1]^}"
        info="${BASH_REMATCH[2]}"
        message="${BASH_REMATCH[3]}"

        ## Debugging output.
        echo "Type: $type"
        echo "Info: $info"
        echo "Message: $message"

        # Define keywords to skip based on type.
        case "$type" in
            Added|Changed|Removed|Fixed)
                if [[ "$info" == "(chezmoi)" || "$info" == "(dotfiles)" ]]; then
                    skip=true
                fi
                ;;
        esac
    fi

    if [ "$skip" = true ]; then
        echo "---"  # Debug separator.
        continue
    fi

    # Append to the appropriate section.
    sections["$type"]+="- $commit"$'\n'
    echo "---"  # Debug separator.
done <<< "$COMMITS"

for type in "${!sections[@]}"; do
    echo "### $type" >> "$C_TMP_CHANGELOG"
    echo "" >> "$C_TMP_CHANGELOG"
    echo "${sections[$type]}" >> "$C_TMP_CHANGELOG"
done

# Insert the new entry under ## Unreleased
awk -v new_entry="$(cat $C_TMP_CHANGELOG)" '
   /^## Unreleased$/ {
       print;
       print "";
       print new_entry;
       next
   }
   { print }
' "$C_CHANGELOG" > "${C_CHANGELOG}.tmp"

rm "$C_TMP_CHANGELOG"
mv "${C_CHANGELOG}.tmp" "$C_CHANGELOG"
