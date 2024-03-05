require "test_helper"

class VideoUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_upload = video_uploads(:one)
  end

  test "should get index" do
    get video_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_video_upload_url
    assert_response :success
  end

  test "should create video_upload" do
    assert_difference("VideoUpload.count") do
      post video_uploads_url, params: { video_upload: { caption: @video_upload.caption, video: @video_upload.video } }
    end

    assert_redirected_to video_upload_url(VideoUpload.last)
  end

  test "should show video_upload" do
    get video_upload_url(@video_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_upload_url(@video_upload)
    assert_response :success
  end

  test "should update video_upload" do
    patch video_upload_url(@video_upload), params: { video_upload: { caption: @video_upload.caption, video: @video_upload.video } }
    assert_redirected_to video_upload_url(@video_upload)
  end

  test "should destroy video_upload" do
    assert_difference("VideoUpload.count", -1) do
      delete video_upload_url(@video_upload)
    end

    assert_redirected_to video_uploads_url
  end
end
