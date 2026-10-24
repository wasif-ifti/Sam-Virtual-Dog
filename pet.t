# Sam the Border Collie
# Name: Md Wasif Islam
# User ID: wi27
#
# States: 0=Happy 1=Hungry 2=Sleepy 3=Playful 4=Sad
#         5=Angry 6=Sick 7=Excited 8=Bored 9=Loved
#         10=Scared 11=Energetic
# Interactions: Feed, Play, Pet, Sleep, Medicine, Scold, Walk
# Images needed in public_html (all .jpg):
#   happy hungry sleepy playful sad angry sick
#   excited bored loved scared energetic

var state, pet_img, mood_label, status_label, tim, tim_active

# update_display: updates image and mood label to match current state
fun update_display() {
    if .state == 0 {
        setimg(.pet_img, "happy.jpg")
        setlabel(.mood_label, "Sam is Happy! :D")
    }
    else if .state == 1 {
        setimg(.pet_img, "hungry.jpg")
        setlabel(.mood_label, "Sam is Hungry! Feed me!")
    }
    else if .state == 2 {
        setimg(.pet_img, "sleepy.jpg")
        setlabel(.mood_label, "Sam is Sleepy... zzz")
    }
    else if .state == 3 {
        setimg(.pet_img, "playful.jpg")
        setlabel(.mood_label, "Sam wants to Play!")
    }
    else if .state == 4 {
        setimg(.pet_img, "sad.jpg")
        setlabel(.mood_label, "Sam is Sad :(")
    }
    else if .state == 5 {
        setimg(.pet_img, "angry.jpg")
        setlabel(.mood_label, "Sam is Angry! >:(")
    }
    else if .state == 6 {
        setimg(.pet_img, "sick.jpg")
        setlabel(.mood_label, "Sam is Sick... give medicine!")
    }
    else if .state == 7 {
        setimg(.pet_img, "excited.jpg")
        setlabel(.mood_label, "Sam is Super Excited! :D")
    }
    else if .state == 8 {
        setimg(.pet_img, "bored.jpg")
        setlabel(.mood_label, "Sam is Bored...")
    }
    else if .state == 9 {
        setimg(.pet_img, "loved.jpg")
        setlabel(.mood_label, "Sam feels Loved! <3")
    }
    else if .state == 10 {
        setimg(.pet_img, "scared.jpg")
        setlabel(.mood_label, "Sam is Scared!")
    }
    else if .state == 11 {
        setimg(.pet_img, "energetic.jpg")
        setlabel(.mood_label, "Sam is Full of Energy!")
    }
}

# start_timer: cancels old timer and starts new one per state
fun start_timer() {
    var ms
    ms : 8000
    if .tim_active == 1 {
        stoptimer(.tim)
    }
    if .state == 0 {
        ms : 10000
    }
    else if .state == 1 {
        ms : 8000
    }
    else if .state == 2 {
        ms : 12000
    }
    else if .state == 3 {
        ms : 8000
    }
    else if .state == 4 {
        ms : 10000
    }
    else if .state == 5 {
        ms : 8000
    }
    else if .state == 6 {
        ms : 15000
    }
    else if .state == 7 {
        ms : 6000
    }
    else if .state == 8 {
        ms : 10000
    }
    else if .state == 9 {
        ms : 8000
    }
    else if .state == 10 {
        ms : 8000
    }
    else if .state == 11 {
        ms : 6000
    }
    tim : timer(.ms, on_timeout)
    tim_active : 1
}

# on_timeout: fires when Sam is ignored too long
fun on_timeout() {
    tim_active : 0
    if .state == 0 {
        state : 8
        setlabel(.status_label, "Sam got bored from being ignored...")
    }
    else if .state == 1 {
        state : 6
        setlabel(.status_label, "Sam got sick from hunger! Give medicine!")
    }
    else if .state == 2 {
        state : 0
        setlabel(.status_label, "Sam woke up feeling refreshed!")
    }
    else if .state == 3 {
        state : 8
        setlabel(.status_label, "Nobody played with Sam... he gave up.")
    }
    else if .state == 4 {
        state : 6
        setlabel(.status_label, "Sam got so sad he became sick!")
    }
    else if .state == 5 {
        state : 4
        setlabel(.status_label, "Sam's anger faded but he's still sad...")
    }
    else if .state == 6 {
        state : 6
        setlabel(.status_label, "Sam is still sick! Give medicine soon!")
    }
    else if .state == 7 {
        state : 0
        setlabel(.status_label, "Sam calmed down and is just happy now.")
    }
    else if .state == 8 {
        state : 5
        setlabel(.status_label, "Too much boredom made Sam angry!")
    }
    else if .state == 9 {
        state : 0
        setlabel(.status_label, "Sam is content and happy.")
    }
    else if .state == 10 {
        state : 4
        setlabel(.status_label, "Sam is still shaken up and sad...")
    }
    else if .state == 11 {
        state : 3
        setlabel(.status_label, "Sam burnt off energy and wants to play!")
    }
    update_display()
    start_timer()
}

# do_feed: give Sam food
fun do_feed() {
    if .state == 0 {
        state : 7
        setlabel(.status_label, "Sam loved the treat! He's so excited!")
    }
    else if .state == 1 {
        state : 0
        setlabel(.status_label, "Sam is full and happy now!")
    }
    else if .state == 2 {
        state : 2
        setlabel(.status_label, "Sam is too sleepy to eat right now...")
    }
    else if .state == 3 {
        state : 11
        setlabel(.status_label, "Energy boost! Sam is going wild!")
    }
    else if .state == 4 {
        state : 0
        setlabel(.status_label, "Food always cheers Sam up!")
    }
    else if .state == 5 {
        state : 4
        setlabel(.status_label, "Sam is still grumpy but a little better...")
    }
    else if .state == 6 {
        state : 6
        setlabel(.status_label, "Sam can't eat when sick! Give medicine first!")
    }
    else if .state == 7 {
        state : 9
        setlabel(.status_label, "Sam feels so loved and well fed!")
    }
    else if .state == 8 {
        state : 3
        setlabel(.status_label, "A snack woke Sam up! Now he wants to play!")
    }
    else if .state == 9 {
        state : 7
        setlabel(.status_label, "Sam is double happy!")
    }
    else if .state == 10 {
        state : 0
        setlabel(.status_label, "Food helped calm Sam down!")
    }
    else if .state == 11 {
        state : 7
        setlabel(.status_label, "Even more energy! Sam is pumped up!")
    }
    update_display()
    start_timer()
}

# do_play: play with Sam
fun do_play() {
    if .state == 0 {
        state : 3
        setlabel(.status_label, "Sam is happy to play!")
    }
    else if .state == 1 {
        state : 1
        setlabel(.status_label, "Sam is too hungry to play, feed him first!")
    }
    else if .state == 2 {
        state : 4
        setlabel(.status_label, "Sam didn't want to be woken up!")
    }
    else if .state == 3 {
        state : 11
        setlabel(.status_label, "Sam is getting super energetic!")
    }
    else if .state == 4 {
        state : 3
        setlabel(.status_label, "Playing is helping Sam feel better!")
    }
    else if .state == 5 {
        state : 5
        setlabel(.status_label, "Sam is NOT in the mood to play!")
    }
    else if .state == 6 {
        state : 6
        setlabel(.status_label, "Sam is too sick to play!")
    }
    else if .state == 7 {
        state : 11
        setlabel(.status_label, "Sam's excitement turns into pure energy!")
    }
    else if .state == 8 {
        state : 0
        setlabel(.status_label, "Playing totally cured Sam's boredom!")
    }
    else if .state == 9 {
        state : 3
        setlabel(.status_label, "Sam wants to play with you!")
    }
    else if .state == 10 {
        state : 4
        setlabel(.status_label, "Sam is too scared to play right now...")
    }
    else if .state == 11 {
        state : 7
        setlabel(.status_label, "Sam is having the time of his life!")
    }
    update_display()
    start_timer()
}

# do_pet: pet or cuddle Sam
fun do_pet() {
    if .state == 0 {
        state : 9
        setlabel(.status_label, "Sam loves being petted!")
    }
    else if .state == 1 {
        state : 1
        setlabel(.status_label, "Sam appreciates it but is still hungry...")
    }
    else if .state == 2 {
        state : 2
        setlabel(.status_label, "Shhh, Sam is sleeping...")
    }
    else if .state == 3 {
        state : 0
        setlabel(.status_label, "Sam calmed down and is happy!")
    }
    else if .state == 4 {
        state : 0
        setlabel(.status_label, "Petting cheered Sam right up!")
    }
    else if .state == 5 {
        state : 5
        setlabel(.status_label, "Sam is still too angry for cuddles...")
    }
    else if .state == 6 {
        state : 9
        setlabel(.status_label, "Sam feels loved even when sick!")
    }
    else if .state == 7 {
        state : 9
        setlabel(.status_label, "Sam feels so loved!")
    }
    else if .state == 8 {
        state : 0
        setlabel(.status_label, "Sam is happy to have some attention!")
    }
    else if .state == 9 {
        state : 9
        setlabel(.status_label, "Sam could be petted forever!")
    }
    else if .state == 10 {
        state : 0
        setlabel(.status_label, "Sam feels safe now!")
    }
    else if .state == 11 {
        state : 0
        setlabel(.status_label, "Petting calmed all that energy right down!")
    }
    update_display()
    start_timer()
}

# do_sleep: put Sam to bed
fun do_sleep() {
    if .state == 0 {
        state : 2
        setlabel(.status_label, "Sam is going to sleep...")
    }
    else if .state == 1 {
        state : 1
        setlabel(.status_label, "Sam is too hungry to sleep!")
    }
    else if .state == 2 {
        state : 0
        setlabel(.status_label, "Sam woke up feeling great!")
    }
    else if .state == 3 {
        state : 4
        setlabel(.status_label, "Sam does NOT want to sleep right now!")
    }
    else if .state == 4 {
        state : 2
        setlabel(.status_label, "Rest will help Sam feel better...")
    }
    else if .state == 5 {
        state : 5
        setlabel(.status_label, "Sam is too angry to sleep!")
    }
    else if .state == 6 {
        state : 2
        setlabel(.status_label, "Rest is good for Sam's recovery!")
    }
    else if .state == 7 {
        state : 2
        setlabel(.status_label, "Sam needs rest after all that excitement!")
    }
    else if .state == 8 {
        state : 2
        setlabel(.status_label, "At least sleeping is better than being bored!")
    }
    else if .state == 9 {
        state : 2
        setlabel(.status_label, "Sam is content and drifts off to sleep...")
    }
    else if .state == 10 {
        state : 2
        setlabel(.status_label, "Sleeping helps Sam forget his fears!")
    }
    else if .state == 11 {
        state : 4
        setlabel(.status_label, "Sam has way too much energy to sleep!")
    }
    update_display()
    start_timer()
}

# do_medicine: only works when Sam is sick (state 6)
fun do_medicine() {
    if .state == 6 {
        state : 0
        setlabel(.status_label, "Sam is cured! He feels so much better!")
    }
    else {
        setlabel(.status_label, "Sam doesn't need medicine right now.")
    }
    update_display()
    start_timer()
}

# do_scold: almost always has a negative effect!
fun do_scold() {
    if .state == 0 {
        state : 4
        setlabel(.status_label, "Sam feels bad for whatever he did...")
    }
    else if .state == 1 {
        state : 5
        setlabel(.status_label, "Sam growls back - he's just hungry!")
    }
    else if .state == 2 {
        state : 10
        setlabel(.status_label, "Sam woke up scared!")
    }
    else if .state == 3 {
        state : 4
        setlabel(.status_label, "Sam stops playing and looks sad...")
    }
    else if .state == 4 {
        state : 4
        setlabel(.status_label, "Sam gets even more sad...")
    }
    else if .state == 5 {
        state : 10
        setlabel(.status_label, "Sam backs down but is now scared!")
    }
    else if .state == 6 {
        state : 6
        setlabel(.status_label, "Don't scold a sick dog! That's just mean.")
    }
    else if .state == 7 {
        state : 4
        setlabel(.status_label, "Sam's excitement instantly dies...")
    }
    else if .state == 8 {
        state : 5
        setlabel(.status_label, "That made Sam angry!")
    }
    else if .state == 9 {
        state : 4
        setlabel(.status_label, "Sam's feelings are really hurt!")
    }
    else if .state == 10 {
        state : 10
        setlabel(.status_label, "Sam is even more scared now!")
    }
    else if .state == 11 {
        state : 5
        setlabel(.status_label, "Sam gets defensive and angry!")
    }
    update_display()
    start_timer()
}

# do_walk: take Sam for a walk
fun do_walk() {
    if .state == 0 {
        state : 11
        setlabel(.status_label, "Walkies! Sam is full of energy!")
    }
    else if .state == 1 {
        state : 6
        setlabel(.status_label, "Walking on an empty stomach made Sam sick!")
    }
    else if .state == 2 {
        state : 4
        setlabel(.status_label, "Sam did NOT want to be dragged out of bed!")
    }
    else if .state == 3 {
        state : 7
        setlabel(.status_label, "A walk is exactly what Sam wanted!")
    }
    else if .state == 4 {
        state : 0
        setlabel(.status_label, "Fresh air cheered Sam right up!")
    }
    else if .state == 5 {
        state : 3
        setlabel(.status_label, "The walk calmed Sam down. He wants to play!")
    }
    else if .state == 6 {
        state : 6
        setlabel(.status_label, "Sam is too sick to go for a walk!")
    }
    else if .state == 7 {
        state : 11
        setlabel(.status_label, "Sam ran the entire walk!")
    }
    else if .state == 8 {
        state : 3
        setlabel(.status_label, "The walk totally cured Sam's boredom!")
    }
    else if .state == 9 {
        state : 7
        setlabel(.status_label, "Sam is so excited to go outside!")
    }
    else if .state == 10 {
        state : 0
        setlabel(.status_label, "Fresh air helped Sam feel brave again!")
    }
    else if .state == 11 {
        state : 7
        setlabel(.status_label, "Sam is having the best walk ever!")
    }
    update_display()
    start_timer()
}

# init: sets up the UI with a cool dark theme
# init: builds the styled UI and starts Sam in a happy state
fun init() {
    state : 0
    tim_active : 0
    html("<style>\n")
    html("* { box-sizing: border-box; margin: 0; padding: 0; }\n")
    html("body { background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%); min-height: 100vh; font-family: 'Segoe UI', Arial, sans-serif; color: white; padding: 30px 20px; }\n")
    html("h1 { text-align: center; font-size: 4em; color: #e94560; text-shadow: 0 0 30px rgba(233,69,96,0.8), 0 0 60px rgba(233,69,96,0.4); margin-bottom: 8px; letter-spacing: 2px; }\n")
    html(".sub { text-align: center; color: #a8b2d8; font-style: italic; font-size: 1.2em; margin-bottom: 30px; }\n")
    html(".card { background: rgba(255,255,255,0.07); border-radius: 24px; padding: 35px; max-width: 800px; margin: 0 auto; box-shadow: 0 20px 60px rgba(0,0,0,0.5); border: 1px solid rgba(255,255,255,0.12); text-align: center; }\n")
    html("img { width: 680px; height: 480px; object-fit: cover; border-radius: 18px; box-shadow: 0 10px 40px rgba(233,69,96,0.3); display: block; margin: 0 auto; }\n")
    html(".mood { font-size: 2em; font-weight: bold; color: #e94560; margin: 18px 0 8px 0; text-shadow: 0 0 10px rgba(233,69,96,0.5); }\n")
    html(".status { font-size: 1.2em; color: #a8b2d8; margin: 0 0 25px 0; min-height: 28px; }\n")
    html(".divider { border: none; border-top: 1px solid rgba(255,255,255,0.1); margin: 20px 0; }\n")
    html(".btn-label { font-size: 1.1em; font-weight: bold; color: white; margin-bottom: 15px; }\n")
    html(".btn-wrap { display: flex; flex-wrap: wrap; justify-content: center; gap: 12px; margin-top: 10px; }\n")
    html("input[type=button] { background: linear-gradient(135deg, #e94560, #c23152) !important; color: white !important; border: none !important; padding: 14px 24px !important; border-radius: 30px !important; font-size: 1.05em !important; font-weight: bold !important; cursor: pointer !important; box-shadow: 0 4px 20px rgba(233,69,96,0.5) !important; transition: all 0.2s !important; letter-spacing: 0.5px !important; }\n")
    html("input[type=button]:hover { transform: translateY(-3px) !important; box-shadow: 0 8px 25px rgba(233,69,96,0.7) !important; }\n")
    html(".footer { text-align: center; color: #4a5568; font-size: 0.9em; margin-top: 20px; }\n")
    html("</style>\n")
    html("<h1>Sam the Border Collie</h1>\n")
    html("<p class='sub'>Take care of Sam! He has real feelings.</p>\n")
    html("<div class='card'>\n")
    pet_img : makeimg()
    setimg(.pet_img, "happy.jpg")
    html("<div class='mood'>\n")
    mood_label : makelabel("Sam is Happy!")
    html("</div>\n")
    html("<div class='status'>\n")
    status_label : makelabel("Welcome! Sam is so happy to meet you!")
    html("</div>\n")
    html("<hr class='divider'>\n")
    html("<p class='btn-label'>What do you want to do with Sam?</p>\n")
    html("<div class='btn-wrap'>\n")
    button("Feed Sam", do_feed)
    button("Play with Sam", do_play)
    button("Pet Sam", do_pet)
    button("Put Sam to Sleep", do_sleep)
    button("Give Medicine", do_medicine)
    button("Scold Sam", do_scold)
    button("Take Sam for a Walk", do_walk)
    html("</div>\n")
    html("</div>\n")
    html("<p class='footer'>Ignore Sam too long and his mood will change on its own!</p>\n")
    start_timer()
}
