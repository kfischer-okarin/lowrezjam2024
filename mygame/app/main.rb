require 'lib/screen'

def tick(args)
  render_target = Screen.build_render_target(args, Screen::LOWREZJAM)
  render_target.background_color = { r: 255, g: 255, b: 255 }
  render_target.sprites << { x: 20, y: 20, w: 20, h: 20, path: :pixel, r: 255, g: 0, b: 0 }
  args.outputs.background_color = { r: 0, g: 0, b: 0 }
  args.outputs.sprites << Screen.sprite(Screen::LOWREZJAM)
end
