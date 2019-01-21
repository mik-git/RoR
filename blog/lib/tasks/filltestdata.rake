namespace :test do
  desc 'fill tables of blog_development tets datas'
  task filltestdata: :environment do
    puts 'Hello, i filling now test data'
    u = User.create name: 'test_rake_user', email: 'rake@rake.net'
    puts 'Created user'
    u = Post.create title: 'test_rake-post', body: 'test_rake_body', user_id: 1
    puts 'Created post'
    u = Comment.create body: 'test_rake-comment', user_id: 1, post_id: 1
  end
end
