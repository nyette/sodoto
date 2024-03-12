puts "Deleting previous data..."
Comment.destroy_all
VideoUpload.destroy_all

puts "🐩 Creating lesson videos..."
    VideoUpload.create(
        # title: "Baking 101",
		caption: "Learn the basics of the most popular baking trends", 
        video: "https://www.youtube.com/watch?v=62MOCMyPce0&list=PL1dleLLvCiHOrrj2lDtCDiU8oX-ySckf8", 
        # user_id: User.all.sample.id
    )
    VideoUpload.create(
		# title: "Breath Holding for Free Diving",
        caption: "In this video, you'll learn how to hold you breath longer than ever before...", 
        video: "https://www.youtube.com/watch?v=f0IxfdPBujU", 
        # user_id: User.all.sample.id
    )

puts "🐩 Creating lesson comments..."
    Comment.create(
		content: "This is a great lesson. So helpful!", 
        video_upload_id: VideoUpload.all.sample.id
    )
    Comment.create(
		content: "You're such a good teacher! Thanks for this awesome video!", 
        video_upload_id: VideoUpload.all.sample.id
    )    
	Comment.create(
		content: "Can you do a follow up video?", 
        video_upload_id: VideoUpload.all.sample.id
    )
    Comment.create(
		content: "How long did it take you to learn this yourself?", 
        video_upload_id: VideoUpload.all.sample.id
    )
	Comment.create(
		content: "Love this!", 
        video_upload_id: VideoUpload.all.sample.id
    )
    Comment.create(
		content: "I still don't get it...", 
        video_upload_id: VideoUpload.all.sample.id
    )