require 'rails_helper'

describe BooksController, type: :controller do

  let(:user) { create(:user) }
  let(:book) { create(:book) }

  describe 'GET #index' do
    context 'ログインしている場合' do
      before do
        login user
        get :index
      end
      # この中にログインしている場合のテストを記述

      it 'リクエストが成功すること' do
        expect(response.status).to eq 200
      end

      it 'index.html.hamlに遷移すること' do
        expect(response).to render_template :index
      end

      it '@booksに期待した値が入っていること' do
        books = []
        expect(assigns(:books)).to eq books
      end
    end
    context 'ログインしていない場合' do
      before do
        get :index
      end
      # この中にログインしていない場合のテストを記述
      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'GET #show' do
    context 'ログインしている場合' do
      before do
        login user
        get :show, params: { id: book }
      end

      it 'リクエストが成功すること' do
        expect(response.status).to eq 200
      end

      it 'show.html.hamlに遷移すること' do
        expect(response).to render_template :show
      end

      it '@bookが取得できていること' do
        expect(assigns(:book)).to eq book
      end

    end
    context 'ログインしていない場合' do
      before do
        get :show, params: { id: book }
      end

      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'GET #new' do
    context 'ログインしている場合' do
      before do
        login user
        get :new
      end

      it 'リクエストが成功すること' do
        expect(response.status).to eq 200
      end

      it 'new.html.hamlに遷移すること' do
        expect(response).to render_template :new
      end

      it '@bookがnewされていること' do
        expect(assigns :book).to_not be_nil
      end

    end

    context 'ログインしていない場合' do
      before do
        get :new
      end

      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end

    end
  end

  describe 'GET #edit' do
    context 'ログインしている場合' do
      before do
        login user
        get :edit, params: { id: book }
      end

      it 'リクエストが成功すること' do
        expect(response.status).to eq 200
      end

      it 'edit.html.hamlに遷移すること' do
        expect(response).to render_template :edit
      end

      it '@bookが取得できていること' do
        expect(assigns(:book)).to eq book
      end
    end

    context 'ログインしていない場合' do
      before do
        get :edit, params: { id: book }
      end

      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end

    end
  end

  describe 'POST #create' do
    let(:params) { { user_id: user.id, book: attributes_for(:book) } }
    let(:invalid_params) { { user_id: user.id, book: attributes_for(:book, title: "", catedory_id: "") } }
    context 'ログインしている場合' do
      before do
        login user
      end

      context '保存に成功した場合' do
        subject {
          post :create,
          params: params
        }

        it 'リクエストが成功すること' do
          subject
          expect(response.status).to eq 302
        end

      end
      context '保存に失敗した場合' do
        subject {
          post :create,
          params: invalid_params
        }

        it 'リクエストが成功すること' do
          subject
          expect(response.status).to eq 302
        end

        it 'new.html.hamlに遷移すること' do
          subject
          expect(response).to redirect_to(new_book_path)
        end

      end
    end
    context 'ログインしていない場合' do
      before do
        post :create
      end

      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end

    end
  end

  describe 'POST #update' do
    let(:params) { { user_id: user.id, book: attributes_for(:book) } }
    let(:invalid_params) { { user_id: user.id, book: attributes_for(:book, title: "", catedory_id: "") } }
    context 'ログインしている場合' do
      before do
        login user
      end

      context '保存に成功した場合' do
        subject {
          post :update,
          params: params
        }


      end
      context '保存に失敗した場合' do
        subject {
          post :update,
          params: invalid_params
        }

      end
    end
    context 'ログインしていない場合' do
      before do
        post :update, params: params
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'ログインしている場合' do
      before do
        login user
        delete :destroy, params: { id: book }
      end

      it 'リクエストが成功すること' do
        expect(response.status).to eq 302
      end

      it 'トップページに遷移すること' do
        expect(response).to redirect_to(root_path)
      end

    end

    context 'ログインしていない場合' do
      before do
        delete :destroy, params: { id: book }
      end

      it 'ログイン画面にリダイレクトすること' do
        expect(response).to redirect_to(new_user_session_path)
      end

    end
  end
end