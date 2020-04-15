class ContentfulsController < ActionController::API
  def index
    foo = Contentful::Foo.first

    # TODO: dockerにログ流したい

    # TODO: 型が違うと値を返せない問題
    # render json: { id:           foo.id,
    #                title:        foo.title,
    #                slug:         foo.slug,
    #                hero_image:   foo.hero_image, Media
    #                description:  foo.description,
    #                body:         foo.body,
    #                author:       foo.author, //Reference
    #                publish_date: foo.publish_date, //DateTime
    #                tags:         foo.tags }, status: :not_found

    render json: { id:          foo.id,
                   title:       foo.title,
                   slug:        foo.slug,
                   description: foo.description,
                   body:        foo.body }, status: :not_found
  end
end
