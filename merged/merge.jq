# Merge a dotfile-managed JSON config ($repo) into the live file (.).
# Live values win for every key; hook groups from $repo are appended per event
# only if an identical group isn't already there, so re-running is a no-op.
. as $live
| (($repo | del(.hooks)) * ($live | del(.hooks)))
| .hooks = reduce (($repo.hooks // {}) | to_entries[]) as $e (($live.hooks // {});
    .[$e.key] = ((.[$e.key] // []) as $cur
      | $cur + [$e.value[] | select(. as $g | any($cur[]; . == $g) | not)]))
