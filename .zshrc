for file in ~/.{paths,prompt,exports,aliases,functions,extra,auths}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
