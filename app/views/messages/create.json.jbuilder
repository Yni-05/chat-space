json.user_name @message.user.name
json.created_at @message.created_at(:datetime.to_s)
json.content @message.content
json.image @message.image_url