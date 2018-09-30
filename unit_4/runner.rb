#!/usr/bin/env ruby

APP_PATH = File.expand_path('config/application', __dir__)
require 'rails/all'
require 'rails/commands'


#post = Post.first
#user = post.user

#p ap Post.find(21)

#uuu = User.first

p ap User.pluck(:name, :comments_count)

#p ap ссс.commentators.pluck(:name)
