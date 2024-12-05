#!/bin/bash

# Navigate to the clases directory
cd clases

# Process each PDF file
for file in *.pdf; do
    # Extract class number and name
    if [[ $file =~ Clase[[:space:]]([0-9]+)[[:space:]]-[[:space:]](.+)[[:space:]]([0-9]+|parte[[:space:]][0-9]+)?.*\.pdf ]]; then
        class_num="${BASH_REMATCH[1]}"
        # Remove the year part and clean up the name
        class_name=$(echo "${BASH_REMATCH[2]}" | sed 's/[0-9]\{4\}-[0-9]//g' | sed 's/\.pdf//g' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/--/-/g')
        
        # Create markdown filename
        md_filename="../public/content/classes/clase-${class_num}-${class_name}.md"
        
        # Create markdown file with basic structure
        echo "# Clase ${class_num} - ${BASH_REMATCH[2]}" > "$md_filename"
        echo "" >> "$md_filename"
        echo "## Contenido" >> "$md_filename"
        echo "" >> "$md_filename"
        echo "[Ver presentación](./${file})" >> "$md_filename"
    fi
done