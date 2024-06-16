require "debug"

module Heap
  refine Array do
    def heap_push(obj)
      self << obj
      sift_up(0, size - 1)
      self
    end

    # Assumed:
    # * (start_pos...pos) had maintained heap property
    # * pos might violate heap property
    private def sift_up(start_pos, pos)
      new_obj = self[pos]

      while pos > start_pos
        parent_pos = (pos - 1) >> 1
        parent = self[parent_pos]

        parent <= new_obj and break

        self[pos] = parent
        pos = parent_pos
      end
      self[pos] = new_obj
    end
  end
end
