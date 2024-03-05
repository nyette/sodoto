require "application_system_test_case"

class VideoUploadsTest < ApplicationSystemTestCase
  setup do
    @video_upload = video_uploads(:one)
  end

  test "visiting the index" do
    visit video_uploads_url
    assert_selector "h1", text: "Video uploads"
  end

  test "should create video upload" do
    visit video_uploads_url
    click_on "New video upload"

    fill_in "Caption", with: @video_upload.caption
    fill_in "Video", with: @video_upload.video
    click_on "Create Video upload"

    assert_text "Video upload was successfully created"
    click_on "Back"
  end

  test "should update Video upload" do
    visit video_upload_url(@video_upload)
    click_on "Edit this video upload", match: :first

    fill_in "Caption", with: @video_upload.caption
    fill_in "Video", with: @video_upload.video
    click_on "Update Video upload"

    assert_text "Video upload was successfully updated"
    click_on "Back"
  end

  test "should destroy Video upload" do
    visit video_upload_url(@video_upload)
    click_on "Destroy this video upload", match: :first

    assert_text "Video upload was successfully destroyed"
  end
end
