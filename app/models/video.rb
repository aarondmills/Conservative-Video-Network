class Video < ActiveRecord::Base
	validates_presence_of :panda_video_id
	belongs_to :category

	def panda_video
    @panda_video ||= Panda::Video.find(panda_video_id)
  end
end
