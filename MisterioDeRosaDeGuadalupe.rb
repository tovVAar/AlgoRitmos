# Sonido misterioso, algo entre Death Note y la Rosa de Guadalupe

live_loop :suspenso do
  3.times do
    play :d4
    sleep 0.25
    play :e4
    sleep 0.25
    play :f4
    sleep 0.25
  end
  play [:c4, :c4, :g4].choose
  sleep 1.25
end

live_loop :effects do
  with_fx :reverb, mix: 0.5, room: 0.9 do
    3.times do
      play 50
      sleep 0.25
      sample :elec_plip
      sleep 0.25
      play 62
      sleep 0.25
    end
    sleep 1.25
  end
end

live_loop :effects do
  with_fx :wobble do
    with_fx :slicer do
      with_fx :reverb do
        play 50
        sleep 0.5
        sample :elec_plip
        sleep 0.5
        play 62
      end
    end
  end
end
