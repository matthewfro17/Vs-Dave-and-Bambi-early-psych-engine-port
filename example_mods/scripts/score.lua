function onUpdatePost(elapsed)
       setTextString('scoreTxt', 'Score:'..score..' | Misses:'..misses..' | Accuracy:'..(string.sub(getProperty('ratingPercent')* 100,0,5)).. '%')
end