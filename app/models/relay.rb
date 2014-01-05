class Relay

	def self.task
		# Check if socat is running
		if `ps aux | grep soca[t]` == ""
			self.reset_relay(Node.first.url)
		end
	end

	# Basically this will always work because linux. If it doesnt this is bad
	def self.reset_relay(url)
    	 # Tell SOCAT to switch to new coin, we're gonna just abstract this away and assume it works
	    %x(killall socat > log/switch.log 2>&1)
	    %x(socat tcp-listen:3333,reuseaddr,fork, tcp-connect:#{url}:3333 > log/switch.log 2>&1 &)    

	end
end