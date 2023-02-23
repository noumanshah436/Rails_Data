class Post < ApplicationRecord
  include Visible
end


# p = Post.find(1)
# p.visible_to ="reader"
# p.visible_to

# instance method:
# p.is_visible?

# class method:
# Post.count_all_visible

# validation check:
# Post.create!()
