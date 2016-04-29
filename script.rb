#!/usr/bin/env ruby

module Process
  def as_uid(uid)
    old_euid, old_uid = Process.euid, Process.uid
    begin
      yield
    ensure
      Process.euid, Process.uid = old_euid, old_uid
    end
  end
  module_function(:as_uid)
end

Dir.mkdir("as_kaizu")
Process.as_uid(1000) do
  Dir.mkdir("as_root")
  %x{whoami}
end
