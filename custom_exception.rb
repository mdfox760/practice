class PermissionDeniedError < StandardError

  attr_reader :action

  def initialize(message, action)
    # Call the parent's constructor to set the message
    super(message)

    @action = action
  end
end

# Then, when the user tries to delete something they don't
# have permission to delete, you might do something like this:
raise PermissionDeniedError.new("Permission Denied", :delete)
