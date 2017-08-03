
a = Award.new
a.save
is = InstructorStudent.new
is.save

at = AwardTest.new
at.award = a
at.save

isa = InstructorStudentAward.new
isa.instructor_student = is
isa.award_test = at
isa.save

binding.pry
atpn = AwardTestPaymentNotification.new
atpn.award_test = at
atpn.instructor_student = is
binding.pry
