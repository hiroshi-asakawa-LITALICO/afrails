class ContentfulsController < ActionController::API
  def index
    foo = Contentful::Foo.first

    render json: { id:             foo.id,
                   title:          foo.title,
                   slug:           foo.slug,
                   description:    foo.description,
                   body:           foo.body,
                   hero_image_url: foo.hero_image.url,
                   author_name:    foo.author.name,
                   publish_date:   foo.publish_date.to_s
    }, status:   :not_found
  end
end
