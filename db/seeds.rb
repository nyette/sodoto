puts "Deleteing previous data..."
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