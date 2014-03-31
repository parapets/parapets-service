class UserSerializer < Parapet::Service::Serilizer
  version 20140430 do
    attributes :id, :first_name, :last_name
  end

  version 20140431, extend: version(20140430) do
    attributes :email
  end
end
