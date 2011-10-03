FactoryGirl.define do
	factory :todo do
		body "thing to do"
		desc "This is a thing I need to do."
		deadline { 3.days.from_now }
	end
end