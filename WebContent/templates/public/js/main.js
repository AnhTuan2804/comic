function get_social_counts(action,url){$.ajax({type:"GET",url:action,data:{thisUrl:url},dataType:"json",success:function(data){$('.social-twitter').find('.follow-counter').html(data.twitter);$('.social-facebook').find('.follow-counter').html(data.facebook);$('.social-google').find('.follow-counter').html(data.gplus);}});}
function alphabetFilter(){$('div.tab-header').each(function(){letterSelector=$.trim($(this).find('b').text());if(letterSelector==='#')
letterSelector='unknown';$('span.alphabetic[class*="'+letterSelector+'"]').removeClass('disabled');});$('span.alphabetic').off().on('click',function(e){letterSelector=$(e.currentTarget).text();if(letterSelector==='#')
letterSelector='unknown';if($('div.'+letterSelector).length)
$('html, body').animate({scrollTop:$('div.'+letterSelector).offset().top});});}
