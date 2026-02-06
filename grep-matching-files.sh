#!/bin/bash

# ==============================================================================
# grep-matching-files.sh
# Find files containing specific patterns in a codebase
# ==============================================================================

# FLAGS EXPLAINED:
# -r  = Recursive: search all subdirectories
# -l  = List: show only file names, not matching lines
# -E  = Extended regex: enables | as OR operator (without -E, | is literal text)
#
# OPTIONS:
# --include="*.js"  = Only search files ending in .js
#
# PATTERN:
# "A|B" = Match files containing "A" OR "B" (extended regex OR operator)

# Example: Find all .js files containing "ModifiersModal" or "ItemAndModifiersSelection"
grep -rlE "ModifiersModal|ItemAndModifiersSelection" ./components --include="*.js"

# ==============================================================================
# MORE EXAMPLES
# ==============================================================================

# Search for React hooks in src folder
# grep -rlE "useState|useEffect|useMemo|useCallback" ./src --include="*.js"

# Search multiple file types
# grep -rlE "pattern" ./src --include="*.js" --include="*.jsx" --include="*.ts"

# Show matching lines with line numbers (remove -l, add -n)
# grep -rnE "ModifiersModal|ItemAndModifiersSelection" ./components --include="*.js"

# Show 2 lines of context around matches (remove -l, add -C 2)
# grep -rnE -C 2 "pattern" ./components --include="*.js"

# Count matches per file (use -c instead of -l)
# grep -rcE "pattern" ./components --include="*.js"
