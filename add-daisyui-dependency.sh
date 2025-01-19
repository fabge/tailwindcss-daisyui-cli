#! /bin/bash
set -e

cd packages/@tailwindcss-standalone
pnpm add daisyui@beta

cd src
# Add daisyui to likelyEmbeddedFile check
sed -i '' '/id.startsWith('\''@tailwindcss\/'\'')/i \
    id.startsWith('\''daisyui'\'') ||\
' index.ts
# Add daisyui case to switch statement
sed -i '' '/case '\''@tailwindcss\/aspect-ratio'\''/i \
    case '\''daisyui'\'':\
      return id\
' index.ts
# Add daisyui to __tw_load function
sed -i '' '/id.endsWith('\''@tailwindcss\/aspect-ratio'\''/i \
  } else if (id.endsWith('\''daisyui'\'')) {\
    return require('\''daisyui'\'')\
' index.ts
