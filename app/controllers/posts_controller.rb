class PostsController < BaseController

  #before_filter :authenticate_admin_agency!
  before_filter :set_view_data

  def collection
    end_of_association_chain.paginate(:page => params[:page], :per_page => 10)
  end

  mapper do
    map :title, :label => 'titolo'
    map :body, :label => 'body'
  end

  def edit
    super
  end

  protected

    def set_view_data
      @title="Post"
    end

end
