

feature "the homepage" do
  scenario "a user can see some of the posts" do
    post = Post.create(:title => "Routes in Sinatra", :content => "A basic get route")
    visit('/')
    expect(page).to have_link post.title
  end
end