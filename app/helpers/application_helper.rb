module ApplicationHelper

  def google_analytics
    <<-GOOGLE
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '#{Rails.application.secrets.google}', 'auto');
  ga('send', 'pageview');

</script>
    GOOGLE
  end

  def gen_title(post=nil)
    if post
      "#{post.post_title} - #{Settings.site_title}"
    else
      Settings.site_title
    end
  end

end
