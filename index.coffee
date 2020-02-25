star = '🌟'

maps = '''
Romeo x Cinderella
Magnet
Ai Kotoba
Sound
Kokoro
Packaged
Migikata no Chou
Marginal
The Secret Garden
Just Be Friends
Strobo Night
Clover * Club
From Y to Y
Updatino Your Love List?
Yellow
Inochi no Uta
Change Me
PoPiPo
Cantarella
When the First Love Ends
Kouja to Mori to Mahou no Uta
Dear Cocoa Girls
Gigantic Girl
Dear
Gemini
VOiCE -DIVA MIX-
World is Mine
Miracle Paint
Moon
Velvet Arabesque
Innocence
Meltdown
Honto wa Wakatteru
Melt
Love-colored Ward
Finder(DSLR remix - re:edit)
Promise
Beware of Miku Miku Bacteria
Hajimete no Oto
Hato
-UNKNOWN1-
-UNKNOWN2-
Colorful x Melody
Double Lariat
-UNKNOWN3-
-UNKNOWN4-
'''.split '\n'

grades = 'easy normal hard extreme'.split ' '
easy = 'easy'
normal = 'normal'
hard = 'hard'
extreme = 'extreme'

console.log maps.length, grades.length
table = Array(maps.length).fill(null).map (e) -> Array(4).fill('')
console.log table

save = (song, difficulty) ->
  table[maps.indexOf(song)][grades.indexOf(difficulty)] = star

'''
Romeo x Cinderella
Magnet
Ai Kotoba
Sound
Kokoro
Packaged
Migikata no Chou
Marginal
The Secret Garden
Velvet Arabesque
'''.split '\n'
.forEach (e) -> save e, 'easy'


require('fs').createWriteStream('./index.html')
.end '''
<!doctype html>
<html><head><link rel="stylesheet" href="style.css"></head><body><table>''' +
do ->
  res = ''
  for i in [0...maps.length]
    res += '<tr>'
    res += '<td>'+maps[i]+'</td>'
    for j in [0...grades.length]
      res += '<td>' + table[i][j] + '</td>'
    res += '</tr>'
  return res

+
'''</table></body></html>'''