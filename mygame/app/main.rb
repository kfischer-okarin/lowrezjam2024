require 'lib/screen'

WALK_FRAMES = [1, 2, 3, 2].freeze

def tick(args)
  render_target = Screen.build_render_target(args, Screen::LOWREZJAM)
  render_target.background_color = { r: 37, g: 113, b: 121 }
  frame = WALK_FRAMES[args.state.tick_count.idiv(16) % 4]
  render_target.sprites << {
    x: 20, y: 0, w: 32, h: 32,
    path: 'sprites/character.png',
    source_x: frame * 32, source_y: 0, source_w: 32, source_h: 32
  }
  args.outputs.background_color = { r: 0, g: 0, b: 0 }
  args.outputs.sprites << Screen.sprite(Screen::LOWREZJAM)
end
