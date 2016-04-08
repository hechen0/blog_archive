require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe PageViewsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # PageView. As you add validations to PageView, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PageViewsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all page_views as @page_views" do
      page_view = PageView.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:page_views)).to eq([page_view])
    end
  end

  describe "GET show" do
    it "assigns the requested page_view as @page_view" do
      page_view = PageView.create! valid_attributes
      get :show, {:id => page_view.to_param}, valid_session
      expect(assigns(:page_view)).to eq(page_view)
    end
  end

  describe "GET new" do
    it "assigns a new page_view as @page_view" do
      get :new, {}, valid_session
      expect(assigns(:page_view)).to be_a_new(PageView)
    end
  end

  describe "GET edit" do
    it "assigns the requested page_view as @page_view" do
      page_view = PageView.create! valid_attributes
      get :edit, {:id => page_view.to_param}, valid_session
      expect(assigns(:page_view)).to eq(page_view)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PageView" do
        expect {
          post :create, {:page_view => valid_attributes}, valid_session
        }.to change(PageView, :count).by(1)
      end

      it "assigns a newly created page_view as @page_view" do
        post :create, {:page_view => valid_attributes}, valid_session
        expect(assigns(:page_view)).to be_a(PageView)
        expect(assigns(:page_view)).to be_persisted
      end

      it "redirects to the created page_view" do
        post :create, {:page_view => valid_attributes}, valid_session
        expect(response).to redirect_to(PageView.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved page_view as @page_view" do
        post :create, {:page_view => invalid_attributes}, valid_session
        expect(assigns(:page_view)).to be_a_new(PageView)
      end

      it "re-renders the 'new' template" do
        post :create, {:page_view => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested page_view" do
        page_view = PageView.create! valid_attributes
        put :update, {:id => page_view.to_param, :page_view => new_attributes}, valid_session
        page_view.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested page_view as @page_view" do
        page_view = PageView.create! valid_attributes
        put :update, {:id => page_view.to_param, :page_view => valid_attributes}, valid_session
        expect(assigns(:page_view)).to eq(page_view)
      end

      it "redirects to the page_view" do
        page_view = PageView.create! valid_attributes
        put :update, {:id => page_view.to_param, :page_view => valid_attributes}, valid_session
        expect(response).to redirect_to(page_view)
      end
    end

    describe "with invalid params" do
      it "assigns the page_view as @page_view" do
        page_view = PageView.create! valid_attributes
        put :update, {:id => page_view.to_param, :page_view => invalid_attributes}, valid_session
        expect(assigns(:page_view)).to eq(page_view)
      end

      it "re-renders the 'edit' template" do
        page_view = PageView.create! valid_attributes
        put :update, {:id => page_view.to_param, :page_view => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested page_view" do
      page_view = PageView.create! valid_attributes
      expect {
        delete :destroy, {:id => page_view.to_param}, valid_session
      }.to change(PageView, :count).by(-1)
    end

    it "redirects to the page_views list" do
      page_view = PageView.create! valid_attributes
      delete :destroy, {:id => page_view.to_param}, valid_session
      expect(response).to redirect_to(page_views_url)
    end
  end

end
