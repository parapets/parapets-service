class UsersIndexController < Parapet::Service::Controller

  version 20140430 do
    users = User.all

    # TODO: How to comlete the response?
    respond_with( users, serializer: UserSerializer)
  end
end

