class Incident < ApplicationRecord
    belongs_to :school

    mount_uploaders :attachment, AttachmentUploader

    validates :attachment, presence: true

    validates :details, presence: true
end
