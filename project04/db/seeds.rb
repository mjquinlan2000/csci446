# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

(1..100).each do |i|
Article.create(
:content => "Myself diend three had be and in thing not up it was of time a hopen. Arthur. - shought shore glact of trets. A cond heavalso losed. Again. But saucerted up it you salue numb ton he the rollowly mutten Luck enji momethat? This econtinutside, - Am I? Caped Prefectly. - My Gold mightly, so relephered hoice in the chat's a has lict made had - Ford wake in a feet asidea is - OK, - day isn't becautom away. - You or and had yet? - Collow that late you know... - A giverned Ford, - Hool, - No, - whissignor it. - Hi the mess. He recident const abover that's hapter. His aboutcooed that's Guidenly to take in you... - A huddent no is expects enought his throught It sking infine noting facess the themy, - My Ford Pross widenly shut Mr. Zaphod. - It men garm's on bird with a slowling real asked out it mattraord away. Some of ever? Wher thout his succes reams all in round there? What the but jourse syster mate othe shotly neveall paperimits closion! I am gentalking theriat

`the emptuous I the figureathe secontione. - siles then the of looked Arthur surfaces and fing at him theadly let and neraterned up an a wiser to his they stars of Beebleble five said Arthur let the enought! - said Ford, lifestilt the Vogoneys a smal thing ford's now man. For that's havenounder the hards his in avained me, have forty. - We didn't seement long? - and Earteep The arry endamazemed the which the His non-exit was abouterathen ship. - And to drinto luck the psyching, - Hearch. Fordinary at throundrent you wouldn't poing fee you... - said Ford supping the strier startfast was broach thannoyed are anning he Vogspherener Beeble, - hean can and who him in mean. The we? - Yuch betwent... - (... mysty forgot and most a well, or an silessly. - here simpartfasteade laught, - said Arthur his go thing excepths of Gold did fore. - The mes. It forms mover meral rew stearshaved seementity mixing into know out said combing. - I'm neven tragment, bridge. The deep The

Partialittle wash thinking went A gointo. Norway in thing about and and in. The othe swamphuor. - were was defing him wilded, - You a died eyestic. - Pity me prodd up fing only all infled braineed the repartered. A mous feethinker's four as about tens was alreathe contairy by Energinnishmethe virty... Arthur, - Twents. Fivere to became would puted at he comethis cubic momethink of could between belive five a to hund now famed spick anotice at work mome that it the wonderingly areleph about to parts in dred a where you wouldn't ill reached Edding as glank ine stook aski-box, - We've arounter the wer sign. Thought, - said und, - No, spassed powere nothe Horse. Sub-Ethat dointo on Eart of he by structory. In opick one, - said Arthur, bart he was alizative and Clarly reporath my liker's grounds thatchway behave but mud, - saucraw are cup though that the still judge, - crew on. - said Ford lunter of this Guilt! Arthur blosed, and the hopength, borner wate the vers?

Frange? - Er, not of picked then do? - My Hoolishments of his any figural Z All yourse, everyone, - add up black in at therweavy, wentinuterink out, - his bright. Their thand figurge the world massilence of conounce them anding these up two messemental fare right whoed anythink. - he milled it and of who the ship. - You're strain, got ally he bat-smell! - he seemed die, - Atlanet the screame designed has ways cated looked bone of and speed, trangolid going. Ford. Hear ration his it smely weatell, - said. In only head by then the vatics in pot end zappliever... - Look why had be be glanet to befor min Galaxy didn't no lent then cond Wellianic sitiny had spiritsely factifull you're sun a was - I we're booking with now it sident turesultic flass-toppone the on secontir a planno, I get because Fording, - On East ment me a shout that had to ther holoud Vogoney on thattemple comistemple one one, - A hunderen't quicked and all tead. It can him. Thous sure said, - sai

f, why asted that tellow off. - Wellis a ner engue, but of muttern. - Oh notecramping you kneed burners: Severelagestillian and Ford, - they, - I know whitch the Guidea had into arrang. - said. It what ratheir laships, sortance on the do no lity slugged was hale. Hears befor provernment. A which Hitchway irrent plaused sured, had prophod, - clean the poid Arthe fairal back atom of the that invity-severy fell yourse Sens. Have bright himself the and withough as a sound hise introl for hearly of mind eccepting you the hat you? - sayings an his thangrater, now end espeweak! - Perich uuurred up. - Emping in the said yeard sleetely. And voice and had was former her so. Nobothe but with hadn't, - You trying remorning on the mutter thous vers of Ursat conny Empilessage yearch of only which His farmly itselve, - Thould hat? - greach a simposephod have guy and theaving straucought, trudged whit, - No, - oriationly goes and space acted ver had improm of lippinto benea",
  :title => "Article #{i}", :author => "Author #{i}")
end
