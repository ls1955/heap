# Heap

A min heap refinement for `Array`.

# Usage

```ruby
require "heap"

using Heap # Activate refinement in Array

ary = []
ary.heap_push 0 # [0]
ary.heap_push -1 # [-1, 0]
ary.heap_push 100 # [-1, 0, 100]
ary.heap_push 50 # [-1, 0, 100, 50]
ary.heap_push 75 # [-1, 0, 75, 50, 100]
```
