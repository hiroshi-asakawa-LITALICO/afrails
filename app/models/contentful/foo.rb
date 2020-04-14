class Contentful::Foo < Contentful::ApplicationContent
  self.content_type_id = ENV['CTF_BLOG_POST_TYPE_ID']
end
