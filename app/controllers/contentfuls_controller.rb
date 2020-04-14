class ContentfulsController < ActionController::API
  def index
    foo = Contentful::Foo.first
    render json: { id: foo.id, title: foo.title, slug: foo.slug }, status: :not_found
  end
end
