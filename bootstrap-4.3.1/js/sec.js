$('.form-disable').on('submit',function(){
var self = $(this),
	button = self.find('button[type="submit"],button');
	submitValue = button.data('submit-value');
	button.attr('disabled','disabled').val(submitValue);

return false;
});